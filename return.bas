
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
PRINT CHR$(1) + " RETURN" + CHR$(1)
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

REM "--------------------------------------------- MAIN PROGRAMME------------------------------------------------------------------------------------------------------------------------------------"
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
c = 1
OPEN "borrow.txt" FOR INPUT AS #1
OPEN "borrow1.txt" FOR OUTPUT AS #2

DO WHILE NOT EOF(1)
    INPUT #1, a$, b$, c$, d$, e$, f$, r$
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
        IF f$ = "b" THEN
            p = 2
            LOCATE 23, 6
            INPUT "DO YOU REALLY WANT TO RETURN THIS BOOK (Y/N)"; q$
            q$ = UCASE$(q$)
            IF q$ = "Y" THEN
                LOCATE 25, 6
                INPUT "THE ROLL NO OF THE RETURNINGING STUDENT "; rr$
                IF r$ = rr$ THEN
                    PRINT "BOOK RETURNED"
                    p$ = "returned"
                ELSE
                    PRINT "SORRY YOU DIDNOT BORROW THIS BOOK  "
                    CHAIN "menu.bas"
                END IF
            ELSE
                PRINT "OK THEN LINKING TO MENU "
                CHAIN "menu.bas"
            END IF
        END IF
    ELSE
        WRITE #2, a$, b$, c$, d$, e$, f$, r$
    END IF
LOOP
CLOSE #1
CLOSE #2
IF c > 1 THEN
ELSE
    wait$ = "WAIT."
    FOR j = 1 TO 7
        wait$ = wait$ + "."
        FOR i = 1 TO 10000
            LOCATE 11, 15
            PRINT CHR$(26) + " NO BOOK FOUND"
        NEXT i
        LOCATE 13, 20
        PRINT wait$
    NEXT j
    LOCATE 15, 20
    INPUT "DO YOU WANT TO TRY AGAIN "; YES$
    IF YES$ = "Y" OR YES$ = "y" THEN
        GOTO qwe:
    ELSE
        CHAIN "menu.bas"
    END IF

qwe:

    GOTO AGAIN:
END IF
KILL "borrow.txt"
NAME "borrow1.txt" AS "borrow.txt"

OPEN "add.txt" FOR INPUT AS #1
OPEN "addtem.txt" FOR OUTPUT AS #2
DO WHILE NOT EOF(1)
    INPUT #1, a$, b$, c$, d$, e$, f$
    IF a$ = k$ THEN
        IF p$ = "returned" THEN
            f$ = "r"
            WRITE #2, a$, b$, c$, d$, e$, f$
        END IF
    ELSE
        WRITE #2, a$, b$, c$, d$, e$, f$
    END IF
LOOP
CLOSE #1
CLOSE #2
KILL "add.txt"
NAME "addtem.txt" AS "add.txt"
a = 1
FOR i = 1 TO 10000 * 3
    a = a + 1
    IF a > 15 THEN
        a = 1
    END IF
    COLOR a
    LOCATE 23, 12
    PRINT "BOOK RETURNED"
NEXT i
COLOR 15
CHAIN "menu.bas"
END




