rename-window vim
send 'vim -S ~/.vim/text.vim ~/.data/meav.github.io/index.html' C-m
send ':rv ~/.vim/register.vim' C-m
neww -n jekyll
send 'cd ~/.data/meav.github.io' C-m
neww -n serve
send 'qrencode -t ANSIUTF8 http://$lanip:80; caddy.exe -port 80 -root meav.github.io/_site' C-m
selectw -t jekyll
