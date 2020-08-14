let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\Desktop\meav.github.io
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 index.html
argglobal
%argdel
$argadd index.html
edit index.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 18 + 13) / 26)
exe '2resize ' . ((&lines * 4 + 13) / 26)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal! zo
9
normal! zo
10
normal! zo
5
normal! zc
46
normal! zo
47
normal! zo
241
normal! zo
303
normal! zo
335
normal! zo
366
normal! zo
368
normal! zo
371
normal! zo
371
normal! zo
375
normal! zo
376
normal! zo
388
normal! zo
392
normal! zo
415
normal! zo
417
normal! zo
419
normal! zo
420
normal! zo
415
normal! zc
442
normal! zc
449
normal! zc
455
normal! zc
464
normal! zo
467
normal! zo
468
normal! zo
471
normal! zo
471
normal! zc
468
normal! zc
467
normal! zc
477
normal! zo
478
normal! zo
478
normal! zc
477
normal! zc
464
normal! zc
487
normal! zc
494
normal! zo
500
normal! zc
494
normal! zc
529
normal! zc
542
normal! zc
548
normal! zc
555
normal! zc
566
normal! zc
572
normal! zc
578
normal! zc
587
normal! zo
589
normal! zo
590
normal! zc
589
normal! zc
587
normal! zc
597
normal! zo
599
normal! zo
600
normal! zc
599
normal! zc
597
normal! zc
605
normal! zo
607
normal! zo
608
normal! zo
609
normal! zo
609
normal! zc
612
normal! zo
612
normal! zc
608
normal! zc
607
normal! zc
605
normal! zc
621
normal! zo
623
normal! zo
629
normal! zo
631
normal! zo
632
normal! zc
631
normal! zc
629
normal! zc
637
normal! zo
639
normal! zo
640
normal! zc
639
normal! zc
637
normal! zc
647
normal! zo
649
normal! zo
647
normal! zc
662
normal! zo
664
normal! zo
662
normal! zc
678
normal! zc
686
normal! zc
693
normal! zo
695
normal! zo
693
normal! zc
703
normal! zc
710
normal! zc
721
normal! zo
723
normal! zo
721
normal! zc
757
normal! zo
759
normal! zo
761
normal! zo
767
normal! zo
768
normal! zo
785
normal! zo
875
normal! zo
879
normal! zo
1089
normal! zo
1091
normal! zo
1093
normal! zo
1100
normal! zo
1180
normal! zo
1183
normal! zo
1186
normal! zo
1228
normal! zo
1230
normal! zo
1234
normal! zo
1236
normal! zo
1248
normal! zo
1250
normal! zo
1265
normal! zo
1267
normal! zo
1272
normal! zo
1274
normal! zo
1276
normal! zo
1312
normal! zo
1314
normal! zo
1323
normal! zo
1325
normal! zo
1364
normal! zo
1366
normal! zo
1465
normal! zo
1467
normal! zo
1469
normal! zo
1489
normal! zo
1491
normal! zo
1505
normal! zo
1507
normal! zo
1513
normal! zo
1515
normal! zo
1517
normal! zo
1527
normal! zo
1529
normal! zo
1539
normal! zo
1541
normal! zo
1562
normal! zo
1564
normal! zo
1578
normal! zo
1580
normal! zo
1592
normal! zo
1594
normal! zo
1605
normal! zo
1616
normal! zo
1640
normal! zo
1656
normal! zo
1658
normal! zo
1658
normal! zo
1186
normal! zo
1228
normal! zo
1230
normal! zo
1234
normal! zo
1236
normal! zo
1248
normal! zo
1250
normal! zo
1265
normal! zo
1267
normal! zo
1272
normal! zo
1274
normal! zo
1276
normal! zo
1312
normal! zo
1314
normal! zo
1323
normal! zo
1325
normal! zo
1364
normal! zo
1366
normal! zo
1465
normal! zo
1467
normal! zo
1469
normal! zo
1489
normal! zo
1491
normal! zo
1505
normal! zo
1507
normal! zo
1513
normal! zo
1515
normal! zo
1517
normal! zo
1527
normal! zo
1529
normal! zo
1539
normal! zo
1541
normal! zo
1562
normal! zo
1564
normal! zo
1578
normal! zo
1580
normal! zo
1592
normal! zo
1594
normal! zo
1605
normal! zo
1616
normal! zo
1640
normal! zo
1656
normal! zo
1658
normal! zo
1658
normal! zo
let s:l = 1181 - ((4 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1181
normal! 097|
wincmd w
argglobal
if bufexists("index.html") | buffer index.html | else | edit index.html | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
46
normal! zo
47
normal! zo
241
normal! zo
285
normal! zo
293
normal! zo
335
normal! zo
366
normal! zo
368
normal! zo
371
normal! zo
371
normal! zo
375
normal! zo
376
normal! zo
388
normal! zo
392
normal! zo
415
normal! zo
417
normal! zo
419
normal! zo
420
normal! zo
464
normal! zo
467
normal! zo
468
normal! zo
477
normal! zo
494
normal! zo
587
normal! zo
589
normal! zo
597
normal! zo
599
normal! zo
605
normal! zo
607
normal! zo
608
normal! zo
621
normal! zo
623
normal! zo
629
normal! zo
631
normal! zo
637
normal! zo
639
normal! zo
647
normal! zo
649
normal! zo
662
normal! zo
664
normal! zo
693
normal! zo
695
normal! zo
721
normal! zo
723
normal! zo
757
normal! zo
759
normal! zo
761
normal! zo
767
normal! zo
768
normal! zo
785
normal! zo
875
normal! zo
879
normal! zo
1186
normal! zo
1228
normal! zo
1230
normal! zo
1234
normal! zo
1236
normal! zo
1248
normal! zo
1250
normal! zo
1265
normal! zo
1267
normal! zo
1272
normal! zo
1274
normal! zo
1276
normal! zo
1312
normal! zo
1314
normal! zo
1323
normal! zo
1325
normal! zo
1364
normal! zo
1366
normal! zo
1465
normal! zo
1467
normal! zo
1469
normal! zo
1489
normal! zo
1491
normal! zo
1505
normal! zo
1507
normal! zo
1513
normal! zo
1515
normal! zo
1517
normal! zo
1527
normal! zo
1529
normal! zo
1539
normal! zo
1541
normal! zo
1562
normal! zo
1564
normal! zo
1578
normal! zo
1580
normal! zo
1592
normal! zo
1594
normal! zo
1605
normal! zo
1616
normal! zo
1640
normal! zo
1656
normal! zo
1658
normal! zo
1658
normal! zo
let s:l = 394 - ((0 * winheight(0) + 2) / 4)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
394
normal! 067|
wincmd w
exe '1resize ' . ((&lines * 18 + 13) / 26)
exe '2resize ' . ((&lines * 4 + 13) / 26)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
