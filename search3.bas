CLS
st:
CLS
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
PRINT CHR$(1) + " Search Book " + CHR$(1)
LOCATE 14, 58
PRINT "Name:......"
LOCATE 15, 58
PRINT "Author:....."
LINE (20 + 15, 10)-(10, 455), 4, BF
LINE (10, 10)-(625, 10), 4, BF
LINE (20, 455)-(625, 455), 4, BF
LINE (625 + 15, 10)-(625, 455), 4, BF

COLOR 15
LOCATE 5, 9
C = 1
PRINT "SEARCH A BOOK BY IT'S GENERE"
LOCATE 8, 12
INPUT "THE GENERE"; k$
k$ = LCASE$(k$)
OPEN "add.txt" FOR INPUT AS #1
DO WHILE NOT EOF(1)
    INPUT #1, a$, b$, C$, d$, e$, f$
    a$ = LCASE$(a$)
    b$ = LCASE$(b$)
    C$ = LCASE$(C$)
    d$ = LCASE$(d$)
    e$ = LCASE$(e$)
    CLS
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
    PRINT CHR$(1) + " Search Book " + CHR$(1)
    LOCATE 14, 58
    PRINT "Name:......"
    LOCATE 15, 58
    PRINT "Author:....."
    LINE (20 + 15, 10)-(10, 455), 4, BF
    LINE (10, 10)-(625, 10), 4, BF
    LINE (20, 455)-(625, 455), 4, BF
    LINE (625 + 15, 10)-(625, 455), 4, BF

    COLOR 15
    LOCATE 5, 9
    C = 1
    PRINT "SEARCH A BOOK BY IT'S GENERE"

    IF C$ = k$ THEN
        LOCATE 8, 24
        PRINT " BOOK FOUND"
        COLOR 11
        LOCATE 10, 6
        found$ = STR$(C)
        COLOR 15
        PRINT "-- BOOK NO." + found$ + " ---------------------------------"
        LOCATE 12, 12
        PRINT "BOOK TITLE:" + a$
        LOCATE 14, 12
        PRINT "BOOK AUTHOR:" + b$
        LOCATE 16, 12
        PRINT "BOOK GENERE:" + C$
        LOCATE 18, 12
        PRINT "BOOK PUBLICATION:" + d$
        LOCATE 20, 14
        PRINT "BOOK DESCRIPTION:"
        a = 21
        b = 7
        FOR i = 1 TO LEN(e$)
            IF b > 70 THEN
                a = a + 1
                IF b > 70 THEN
                    b = 7
                END IF
            END IF
            LOCATE a, b
            PRINT MID$(e$, i, 1)
            b = b + 1
        NEXT i
        C = C + 1
        COLOR 10
        LOCATE 25, 12
        INPUT "NEXT"; NEXT$

    ELSE
    END IF

LOOP
CLOSE #1
IF C > 1 THEN
ELSE
    CLS
    REM "BOOK LINES"
    LINE (445, 180 - 60)-(445, 250 - 60)
    LINE (445, 180 - 60)-(565, 180 - 60)
    LINE (445, 250 - 60)-(565, 250 - 60)
    LINE (565, 250 - 60)-(565, 180 - 60)

    LINE (445, 200)-(445, 250), 14
    LINE (445, 200)-(565, 200), 14
    LINE (445, 250)-(565, 250), 14
    LINE (565, 250)-(565, 200), 14
    COLOR 2
    LOCATE 11, 64
    PRINT CHR$(6) + " "
    LOCATE 10, 62
    PRINT CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " "
    LOCATE 9, 60
    PRINT CHR$(1) + " " + CHR$(2) + " " + CHR$(3) + " " + CHR$(4) + " " + CHR$(5) + ""

    LOCATE 6, 59
    PRINT CHR$(1) + " NO BOOK " + CHR$(1)
    LOCATE 7, 60
    PRINT CHR$(1) + " FOUND " + CHR$(1)

    LOCATE 14, 58
    PRINT "Name:......"
    LOCATE 15, 58
    PRINT "Author:....."
    LINE (20 + 15, 10)-(10, 455), 4, BF
    LINE (10, 10)-(625, 10), 4, BF
    LINE (20, 455)-(625, 455), 4, BF
    LINE (625 + 15, 10)-(625, 455), 4, BF

    LINE (20 + 15, 10)-(10, 455), 4, BF
    LINE (10, 10)-(625, 10), 4, BF
    LINE (20, 455)-(625, 455), 4, BF
    LINE (625 + 15, 10)-(625, 455), 4, BF
    REM "PICTURE BOX"
    LINE (330 + 100, 70)-(330 + 100, 290 - 30)
    LINE (330 + 100, 70)-(485 + 100, 70)
    LINE (330 + 100, 290 - 30)-(485 + 100, 290 - 30)
    LINE (485 + 100, 70)-(485 + 100, 290 - 30)
    COLOR 15
    LOCATE 12, 16
    PRINT CHR$(2) + " " + CHR$(3) + " NO TITLE GENERE " + " " + CHR$(2)
END IF

LOCATE 23, 12
INPUT "DO YOU WANT TO TRY AGAIN (Y/N)"; k$
IF k$ = "Y" OR k$ = "y" THEN
    GOTO st:

ELSE

    CHAIN "menu.bas"
END IF
END



