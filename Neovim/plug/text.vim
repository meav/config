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
exe '1resize ' . ((&lines * 23 + 16) / 32)
exe '2resize ' . ((&lines * 6 + 16) / 32)
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
46
normal! zo
47
normal! zo
243
normal! zo
306
normal! zo
357
normal! zo
369
normal! zo
371
normal! zo
374
normal! zo
374
normal! zo
378
normal! zo
391
normal! zo
419
normal! zo
420
normal! zo
422
normal! zo
423
normal! zo
454
normal! zo
457
normal! zo
458
normal! zo
467
normal! zo
478
normal! zo
554
normal! zo
556
normal! zo
564
normal! zo
566
normal! zo
572
normal! zo
574
normal! zo
575
normal! zo
576
normal! zo
578
normal! zo
586
normal! zo
588
normal! zo
594
normal! zo
596
normal! zo
602
normal! zo
604
normal! zo
611
normal! zo
613
normal! zo
614
normal! zo
626
normal! zo
628
normal! zo
657
normal! zo
659
normal! zo
684
normal! zo
686
normal! zo
720
normal! zo
722
normal! zo
729
normal! zo
730
normal! zo
747
normal! zo
751
normal! zo
830
normal! zo
834
normal! zo
957
normal! zo
1056
normal! zo
1200
normal! zo
1238
normal! zo
1431
normal! zo
1433
normal! zo
1437
normal! zo
1456
normal! zo
1458
normal! zo
1472
normal! zo
1474
normal! zo
1480
normal! zo
1482
normal! zo
1486
normal! zo
1493
normal! zo
1495
normal! zo
1505
normal! zo
1507
normal! zo
1528
normal! zo
1534
normal! zo
1543
normal! zo
1545
normal! zo
1557
normal! zo
1621
normal! zo
1623
normal! zo
1623
normal! zo
465
normal! zo
468
normal! zo
478
normal! zo
494
normal! zo
580
normal! zo
582
normal! zo
590
normal! zo
592
normal! zo
598
normal! zo
600
normal! zo
601
normal! zo
602
normal! zo
604
normal! zo
612
normal! zo
614
normal! zo
620
normal! zo
622
normal! zo
628
normal! zo
630
normal! zo
637
normal! zo
639
normal! zo
640
normal! zo
652
normal! zo
654
normal! zo
683
normal! zo
685
normal! zo
710
normal! zo
712
normal! zo
369
normal! zo
371
normal! zo
374
normal! zo
374
normal! zo
378
normal! zo
379
normal! zo
391
normal! zo
395
normal! zo
418
normal! zo
420
normal! zo
422
normal! zo
423
normal! zo
465
normal! zo
468
normal! zo
469
normal! zo
478
normal! zo
495
normal! zo
579
normal! zo
588
normal! zo
590
normal! zo
598
normal! zo
600
normal! zo
606
normal! zo
608
normal! zo
609
normal! zo
610
normal! zo
612
normal! zo
620
normal! zo
622
normal! zo
628
normal! zo
630
normal! zo
636
normal! zo
638
normal! zo
645
normal! zo
647
normal! zo
648
normal! zo
660
normal! zo
662
normal! zo
691
normal! zo
693
normal! zo
718
normal! zo
720
normal! zo
757
normal! zo
759
normal! zo
766
normal! zo
767
normal! zo
784
normal! zo
788
normal! zo
867
normal! zo
871
normal! zo
994
normal! zo
1093
normal! zo
1237
normal! zo
1275
normal! zo
1468
normal! zo
1470
normal! zo
1474
normal! zo
1493
normal! zo
1495
normal! zo
1509
normal! zo
1511
normal! zo
1517
normal! zo
1519
normal! zo
1523
normal! zo
1530
normal! zo
1532
normal! zo
1542
normal! zo
1544
normal! zo
1565
normal! zo
1571
normal! zo
1580
normal! zo
1582
normal! zo
1594
normal! zo
588
normal! zo
590
normal! zo
598
normal! zo
600
normal! zo
606
normal! zo
608
normal! zo
609
normal! zo
610
normal! zo
612
normal! zo
620
normal! zo
622
normal! zo
628
normal! zo
630
normal! zo
636
normal! zo
638
normal! zo
645
normal! zo
647
normal! zo
648
normal! zo
660
normal! zo
662
normal! zo
691
normal! zo
693
normal! zo
718
normal! zo
720
normal! zo
754
normal! zo
756
normal! zo
763
normal! zo
764
normal! zo
781
normal! zo
785
normal! zo
864
normal! zo
868
normal! zo
991
normal! zo
1090
normal! zo
1234
normal! zo
1272
normal! zo
1465
normal! zo
1467
normal! zo
1471
normal! zo
1490
normal! zo
1492
normal! zo
1506
normal! zo
1508
normal! zo
1514
normal! zo
1516
normal! zo
1520
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
1568
normal! zo
1577
normal! zo
1579
normal! zo
1591
normal! zo
1655
normal! zo
1657
normal! zo
1657
normal! zo
let s:l = 588 - ((9 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
588
normal! 032|
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
357
normal! zo
369
normal! zo
378
normal! zo
391
normal! zo
419
normal! zo
420
normal! zo
422
normal! zo
423
normal! zo
454
normal! zo
457
normal! zo
458
normal! zo
467
normal! zo
478
normal! zo
554
normal! zo
556
normal! zo
564
normal! zo
566
normal! zo
572
normal! zo
574
normal! zo
575
normal! zo
576
normal! zo
578
normal! zo
586
normal! zo
588
normal! zo
594
normal! zo
596
normal! zo
602
normal! zo
604
normal! zo
611
normal! zo
613
normal! zo
614
normal! zo
626
normal! zo
628
normal! zo
657
normal! zo
659
normal! zo
684
normal! zo
686
normal! zo
720
normal! zo
722
normal! zo
729
normal! zo
730
normal! zo
747
normal! zo
751
normal! zo
830
normal! zo
834
normal! zo
957
normal! zo
1056
normal! zo
1200
normal! zo
1238
normal! zo
1431
normal! zo
1433
normal! zo
1437
normal! zo
1456
normal! zo
1458
normal! zo
1472
normal! zo
1474
normal! zo
1480
normal! zo
1482
normal! zo
1486
normal! zo
1493
normal! zo
1495
normal! zo
1505
normal! zo
1507
normal! zo
1528
normal! zo
1534
normal! zo
1543
normal! zo
1545
normal! zo
1557
normal! zo
1621
normal! zo
1623
normal! zo
1623
normal! zo
465
normal! zo
468
normal! zo
478
normal! zo
494
normal! zo
580
normal! zo
582
normal! zo
590
normal! zo
592
normal! zo
598
normal! zo
600
normal! zo
601
normal! zo
602
normal! zo
604
normal! zo
612
normal! zo
614
normal! zo
620
normal! zo
622
normal! zo
628
normal! zo
630
normal! zo
637
normal! zo
639
normal! zo
640
normal! zo
652
normal! zo
654
normal! zo
683
normal! zo
685
normal! zo
710
normal! zo
712
normal! zo
369
normal! zo
371
normal! zo
374
normal! zo
374
normal! zo
378
normal! zo
379
normal! zo
391
normal! zo
395
normal! zo
418
normal! zo
420
normal! zo
422
normal! zo
423
normal! zo
465
normal! zo
468
normal! zo
469
normal! zo
478
normal! zo
495
normal! zo
579
normal! zo
588
normal! zo
590
normal! zo
598
normal! zo
600
normal! zo
606
normal! zo
608
normal! zo
609
normal! zo
610
normal! zo
612
normal! zo
620
normal! zo
622
normal! zo
628
normal! zo
630
normal! zo
636
normal! zo
638
normal! zo
645
normal! zo
647
normal! zo
648
normal! zo
660
normal! zo
662
normal! zo
691
normal! zo
693
normal! zo
718
normal! zo
720
normal! zo
757
normal! zo
759
normal! zo
766
normal! zo
767
normal! zo
784
normal! zo
788
normal! zo
867
normal! zo
871
normal! zo
994
normal! zo
1093
normal! zo
1237
normal! zo
1275
normal! zo
1468
normal! zo
1470
normal! zo
1474
normal! zo
1493
normal! zo
1495
normal! zo
1509
normal! zo
1511
normal! zo
1517
normal! zo
1519
normal! zo
1523
normal! zo
1530
normal! zo
1532
normal! zo
1542
normal! zo
1544
normal! zo
1565
normal! zo
1571
normal! zo
1580
normal! zo
1582
normal! zo
1594
normal! zo
588
normal! zo
590
normal! zo
598
normal! zo
600
normal! zo
606
normal! zo
608
normal! zo
609
normal! zo
610
normal! zo
612
normal! zo
620
normal! zo
622
normal! zo
628
normal! zo
630
normal! zo
636
normal! zo
638
normal! zo
645
normal! zo
647
normal! zo
648
normal! zo
660
normal! zo
662
normal! zo
691
normal! zo
693
normal! zo
718
normal! zo
720
normal! zo
754
normal! zo
756
normal! zo
763
normal! zo
764
normal! zo
781
normal! zo
785
normal! zo
864
normal! zo
868
normal! zo
991
normal! zo
1090
normal! zo
1234
normal! zo
1272
normal! zo
1465
normal! zo
1467
normal! zo
1471
normal! zo
1490
normal! zo
1492
normal! zo
1506
normal! zo
1508
normal! zo
1514
normal! zo
1516
normal! zo
1520
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
1568
normal! zo
1577
normal! zo
1579
normal! zo
1591
normal! zo
1655
normal! zo
1657
normal! zo
1657
normal! zo
let s:l = 1655 - ((0 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1655
normal! 088|
wincmd w
exe '1resize ' . ((&lines * 23 + 16) / 32)
exe '2resize ' . ((&lines * 6 + 16) / 32)
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
