-- Rebuild the terminal status line as a lua script
-- Be aware that this will require more cpu power!
-- Also, this is based on a rather old version of the
-- builtin mpv status line.

local utils = require 'mp.utils'

-- Add a string to the status line
function atsl(s)
    newStatus = newStatus .. s
end

function update_status_line()
    -- Reset the status line
    newStatus = "\n"

    r = mp.get_property_osd("video-bitrate")
        atsl("(V: ")
        atsl(r)
        atsl(" ")
        atsl(mp.get_property_osd("width", -1))
        atsl(" x ")
        atsl(mp.get_property_osd("height", -1))
        atsl(")")

    r = mp.get_property_osd("audio-bitrate")
        atsl(" (A: ")
        atsl(r)
        atsl(" ")
        atsl(mp.get_property_osd("volume", -1))
        atsl("%)")

    demuxer_cache = mp.get_property_native("demuxer-cache-state", {})
	if demuxer_cache["fw-bytes"] then
		demuxer_cache = demuxer_cache["fw-bytes"] -- returns bytes
	else
		demuxer_cache = 0
	end
	demuxer_secs = mp.get_property_number("demuxer-cache-duration", 0)
	if demuxer_cache + demuxer_secs > 0 then
	r = utils.format_bytes_humanized(demuxer_cache)
	atsl(" (Cache: ")
	atsl(r)
	atsl(" = ")
        atsl(string.format("%.1f", demuxer_secs))
	atsl("s; ")
	speed = mp.get_property_number("cache-speed", 0)
	if speed > 0 then
	r = utils.format_bytes_humanized(speed)
	atsl(r)
	atsl("/s)")
	end
	end

    atsl("\n")

    if mp.get_property_bool("pause") then
        atsl("(Paused) ")
    elseif mp.get_property_bool("paused-for-cache") then
        atsl("(Buffering) ")
    end

    if mp.get_property("aid") ~= "no" then
        atsl("A")
    end
    if mp.get_property("vid") ~= "no" then
        atsl("V")
    end

    atsl(": ")

    atsl(mp.get_property_osd("time-pos"))

    atsl(" + ");
    atsl(mp.get_property_osd("time-remaining"));

    atsl(" / ");
    atsl(mp.get_property_osd("duration"));

    atsl(" (")
    atsl(mp.get_property_osd("percent-pos", -1))
    atsl("%)")

    local r = mp.get_property_number("speed", -1)
    if r ~= 1 then
        atsl(string.format(" x%4.2f", r))
    end

    -- Set the new status line
    mp.set_property("options/term-status-msg", newStatus)
end

timer = mp.add_periodic_timer(1, update_status_line)

function on_pause_change(name, value)
    if value == false then
        timer:resume()
    else
        timer:stop()
    end
    mp.add_timeout(0.1, update_status_line)
end
mp.observe_property("pause", "bool", on_pause_change)
mp.register_event("seek", update_status_line)
