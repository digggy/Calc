CLS
SCREEN 12
t = 2
OPEN "add.txt" FOR OUTPUT AS #1
w$ = "y"
DO WHILE w$ = "y" OR w$ = "Y"
    CLS
    COLOR 15
    LOCATE 6, 20
    PRINT "ADD A BOOK "
    LOCATE 7, 58
    PRINT CHR$(1) + " Add Book " + CHR$(1)
    LOCATE 14, 58
    PRINT "Name:......"
    LOCATE 15, 58
    PRINT "Author:....."
    LINE (20 + 15, 10)-(10, 455), 4, BF
    LINE (10, 10)-(625, 10), 4, BF
    LINE (20, 455)-(625, 455), 4, BF
    LINE (625 + 15, 10)-(625, 455), 4, BF
    REM "PICTURE BOX"
    LINE (330 + 100, 70)-(330 + 100, 290 - 30)
    LINE (330 + 100, 70)-(485 + 100, 70)
    LINE (330 + 100, 290 - 30)-(485 + 100, 290 - 30)
    LINE (485 + 100, 70)-(485 + 100, 290 - 30)

    LINE (330 + 102, 70 + 2)-(330 + 100 - 2, 290 - 30 - 2)
    LINE (330 + 102, 70 + 2)-(485 + 100 - 2, 70 - 2)
    LINE (330 + 102, 290 - 30 + 2)-(485 + 100 - 2, 290 - 30 - 2)
    LINE (485 + 102, 70 + 2)-(485 + 100 - 2, 290 - 30 - 2)

    LINE (445, 180 - 60)-(445, 250 - 60)
    LINE (445, 180 - 60)-(565, 180 - 60)
    LINE (445, 250 - 60)-(565, 250 - 60)
    LINE (565, 250 - 60)-(565, 180 - 60)

    LINE (445, 200)-(445, 250), 14
    LINE (445, 200)-(565, 200), 14
    LINE (445, 250)-(565, 250), 14
    LINE (565, 250)-(565, 200), 14
    ab = ab + 1
    COLOR ab
    LOCATE 9, 64
    PRINT CHR$(6) + " "
    LOCATE 10, 62
    PRINT CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " "
    LOCATE 11, 60
    PRINT CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " " + CHR$(4) + " " + CHR$(5) + ""


    COLOR 15
    LOCATE 10, 10
    INPUT "BOOK'S NAME : "; a$
    LOCATE 12, 10
    INPUT "BOOK'S AUTHOR : "; b$
    LOCATE 14, 10
    INPUT "BOOK'S GENRES : "; c$
    LOCATE 16, 10
    INPUT "BOOK PUBLISHED DATE:"; d$
    LOCATE 18, 10
    INPUT "BOOK DESCRIPTION "; e$
    f$ = "r"
    a$ = LCASE$(a$)
    b$ = LCASE$(b$)
    c$ = LCASE$(c$)
    d$ = LCASE$(d$)
    e$ = LCASE$(e$)

    WRITE #1, a$, b$, c$, d$, e$, f$
    FOR I = 1 TO 10000 * 3
        COLOR b
        IF a > 1000 THEN b = b + 1
        IF b >= 15 THEN b = 1
        LOCATE 22, 10
        PRINT CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " " + CHR$(4) + " " + CHR$(5) + " " + " BOOK ADDED " + CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " " + CHR$(4) + " " + CHR$(5) + ""
        a = a + 1
    NEXT I
    LOCATE 23, 10
    IF t > 15 THEN t = 1
    t = t + 1
    COLOR t
    INPUT "DO YOU WANT TO ADD MORE BOOKS (Y/N)"; f$
    IF f$ = "y" OR f$ = "Y" THEN
        w$ = "y"
    ELSE
        CHAIN "menu.bas"
    END IF
LOOP


