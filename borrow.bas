CLS
SCREEN 12
AGAIN:
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
PRINT CHR$(1) + " BORROW" + CHR$(1)
LOCATE 7, 60
PRINT CHR$(1) + " BOOK" + CHR$(1)

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
LOCATE 5, 9
c = 1
PRINT "SEARCH A BOOK BY IT'S TITLE"
LOCATE 8, 12
INPUT "THE TITLE "; k$
SOUND 4000, .2
SOUND 8000, .3
SOUND 3000, .4

k$ = LCASE$(k$)
OPEN "borrow.txt" FOR APPEND AS #2
OPEN "add.txt" FOR INPUT AS #1
OPEN "addtemp.txt" FOR OUTPUT AS #3
DO WHILE NOT EOF(1)
    INPUT #1, a$, b$, c$, d$, e$, f$
    a$ = LCASE$(a$)
    b$ = LCASE$(b$)
    c$ = LCASE$(c$)
    d$ = LCASE$(d$)
    e$ = LCASE$(e$)
    f$ = LCASE$(f$)
    IF a$ = k$ THEN
        LOCATE 10, 12

        PRINT c, "BOOK FOUND"
        LOCATE 12, 12
        PRINT "BOOK TITLE:" + a$
        LOCATE 14, 12
        PRINT "BOOK AUTHOR:" + b$
        LOCATE 16, 12
        PRINT "BOOK GENERE:" + c$
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
        c = c + 1
        COLOR 10
        IF f$ = "r" THEN
            P = 2
            LOCATE 23, 6
            INPUT "DO YOU REALLY WANT TO BORROW THIS BOOK (Y/N)"; q$
            q$ = UCASE$(q$)
            IF q$ = "Y" THEN
                LOCATE 25, 6
                INPUT "THE ROLL NO OF THE BORROWING STUDENT "; r$
                f$ = "b"
                WRITE #3, a$, b$, c$, d$, e$, f$
                WRITE #2, a$, b$, c$, d$, e$, f$, r$
            ELSE
                CLOSE #3
                CLOSE #1
                CLOSE #2
                GOTO AGAIN:

            END IF
        ELSEIF f$ = "b" THEN
            LOCATE 20, 42
            P = 1
            PRINT "BOOK ALREADY BORROWED"
            WRITE #3, a$, b$, c$, d$, e$, f$
        END IF
    ELSE
        WRITE #3, a$, b$, c$, d$, e$, f$
    END IF
LOOP
CLOSE #3
CLOSE #1
CLOSE #2

IF c > 1 THEN
ELSE
    LOCATE 12, 12
    PRINT CHR$(2) + CHR$(3) + " NO TITLE FOUND " + CHR$(2)

END IF
IF P = 2 THEN
    CLS
END IF

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
IF P = 1 THEN
    LOCATE 6, 59
    PRINT CHR$(1) + "SORRY BOOK " + CHR$(1)
    LOCATE 7, 60
    PRINT CHR$(1) + " BORROWED  " + CHR$(1)
ELSEIF P = 2 THEN
    LOCATE 6, 59
    PRINT CHR$(1) + " BOOK  " + CHR$(1)
    LOCATE 7, 60
    PRINT CHR$(1) + " BORROWED " + CHR$(1)
END IF


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

KILL "add.txt"
NAME "addtemp.txt" AS "add.txt"

IF P = 2 OR P = 0 THEN
    LOCATE 16, 8
    INPUT "DO YOU WANT TO BORROW ANOTHER BOOK (Y/N)"; k$
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4

ELSEIF P = 1 THEN
    LOCATE 24, 12
    INPUT "DO YOU WANT TO BORROW ANOTHER BOOK (Y/N)"; k$
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4
END IF

IF k$ = "Y" OR k$ = "y" THEN
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4


    GOTO AGAIN:

ELSE
    COLOR 15
    CHAIN "menu.bas"
END IF
END


