CLS
A:
IF K$ = "1" THEN GOTO D:
IF K$ = "2" THEN GOTO D:
IF K$ = "3" THEN GOTO D:
SCREEN 12
LINE (20 + 15, 10)-(10, 455), 4, BF
LINE (10, 10)-(625, 10), 4, BF
LINE (20, 455)-(625, 455), 4, BF
LINE (625 + 15, 10)-(625, 455), 4, BF
REM "PICTURE BOX"
LINE (330 + 100, 70)-(330 + 100, 290 - 30)
LINE (330 + 100, 70)-(485 + 100, 70)
LINE (330 + 100, 290 - 30)-(485 + 100, 290 - 30)
LINE (485 + 100, 70)-(485 + 100, 290 - 30)
REM "BOOK LINES"
LINE (445, 180 - 60)-(445, 250 - 60)
LINE (445, 180 - 60)-(565, 180 - 60)
LINE (445, 250 - 60)-(565, 250 - 60)
LINE (565, 250 - 60)-(565, 180 - 60)

LINE (445, 200)-(445, 250), 14
LINE (445, 200)-(565, 200), 14
LINE (445, 250)-(565, 250), 14
LINE (565, 250)-(565, 200), 14
LOCATE 9, 64
PRINT CHR$(6) + " "
LOCATE 10, 62
PRINT CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " "
LOCATE 11, 60
PRINT CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " " + CHR$(4) + " " + CHR$(5) + ""

LOCATE 7, 58
PRINT CHR$(1) + " SEARCH BOOK " + CHR$(1)
LOCATE 14, 58
PRINT "Name:......"
LOCATE 15, 58
PRINT "Author:....."
LINE (20 + 15, 10)-(10, 455), 4, BF
LINE (10, 10)-(625, 10), 4, BF
LINE (20, 455)-(625, 455), 4, BF
LINE (625 + 15, 10)-(625, 455), 4, BF

LOCATE 5, 9
PRINT "SEARCH A BOOK"
LOCATE 10, 9
PRINT "1.Search By Author "
LOCATE 12, 9
PRINT "2.Search By Title"
LOCATE 14, 9
PRINT "3.Search By GENERE "

i = i + 1
IF j > 15 THEN j = 0
IF i > 50 THEN j = j + 1
IF i > 50 THEN i = o

K$ = INKEY$
GOTO A:
D:
IF K$ = "1" THEN
    CHAIN "search1.bas"
ELSEIF K$ = "2" THEN
    CHAIN "search2.bas"
ELSEIF K$ = "3" THEN
    CHAIN "search3.bas"
END IF






