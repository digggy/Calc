DIM KeyPress AS STRING
DIM x AS INTEGER
DIM y AS INTEGER
p = 1
CONST Size = 5
OPEN "login1.txt" FOR INPUT AS #1
INPUT #1, a$, b$, c$, d$, e$
CLOSE #1

a = 95
b = 245 + 33
c = 245
d = 215 + 33
q = 1

SCREEN 12
CLS

REM "-------------------------------------"
LINE (10, 90)-(595, 80), 1, BF

LINE (20, 20)-(25, 445), 6, BF
LINE (20, 20)-(595, 25), 7, BF
LINE (20, 445)-(590, 440), 8, BF
LINE (590, 20)-(615, 445), 9, BF


LINE (15, 10)-(10, 455), 1, BF
LINE (10, 10)-(630, 15), 2, BF
LINE (10, 455)-(595, 450), 4, BF
LINE (595, 15)-(630, 455), 5, BF

LOCATE 3, 29
PRINT " BUDHANILKANTHA SCHOOL "
LOCATE 4, 31
PRINT " LIBRARY DEPARTMENT "
LOCATE 5, 35
PRINT " E LIBRARY "
LOCATE 8, 30
PRINT "WELCOME TO E LIBRARY "
LOCATE 10, 19
PRINT "USE THE CHARACTERS TO SCROLL IN THE KEYBOARD"
LOCATE 11, 29
LINE (420, 80)-(420, 25)
LINE (210, 80)-(210, 25)
COLOR 3
PRINT CHR$(25) + " " + "or" + "  " + CHR$(26) + " " + "or" + " " + "PRESS ENTER  "

COLOR 15
LINE (295, 210)-(295, 405), 3
LINE (295, 210)-(585, 210), 3
LINE (295, 405)-(585, 405), 3
LINE (585, 210)-(585, 405), 3

LINE (300, 215)-(300, 400)
LINE (300, 215)-(580, 215)
LINE (300, 400)-(580, 400)
LINE (580, 215)-(580, 400)

LOCATE 15, 47
PRINT "BUDHANILKANTHA SCHOOL"

LOCATE 16, 49
PRINT "LIBRARY DEPARTMENT"

LOCATE 17, 53
PRINT "STAFF CARD"


LOCATE 18, 63
PRINT "ID: " + b$
LOCATE 20, 42
PRINT "NAME: " + a$
LOCATE 21, 42
PRINT "AGE: " + c$
LOCATE 22, 42
PRINT "SEX: " + d$
LOCATE 23, 42
PRINT "ADDRESS: " + e$

REM "FACE"

CIRCLE (545, 330), 30
CIRCLE (530, 320), 7
CIRCLE (560, 320), 7
CIRCLE (545, 330), 22, 14, 3.4, 6
CIRCLE (545, 330), 25, 13, 3

LINE (500, 290)-(500, 385)
LINE (500, 290)-(575, 290)
LINE (500, 385)-(575, 385)
LINE (575, 290)-(575, 385)

PRINT
PRINT
LOCATE 17, 15
PRINT "1.Search a Book"
LOCATE 19, 15
PRINT "2.Borrow a Book"
LOCATE 21, 15
PRINT "3.Return a Book"
LOCATE 23, 15
PRINT "4.Add a Book"
LOCATE 25, 15
PRINT "5.Delete a Book"
xcord = 10
DO

    LOCATE 3, 65
    PRINT "TIME"

    LOCATE 4, 63
    PRINT TIME$

    LOCATE 3, 15
    PRINT "DATE"

    LOCATE 4, 12
    PRINT DATE$



    KeyPress = UCASE$(INKEY$)

    IF KeyPress = CHR$(0) + CHR$(72) AND p > 1 THEN
        q = q - 1
        CLS
        LOCATE 11, 4
        PRINT "------------------------------ MAIN MENU---------------------------------"
        LOCATE 12, 4
        PRINT "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

        SOUND 4000, .4
        SOUND 5000, .6
        SOUND 6000, .8
        REM "-------------------------------------"

        LINE (10, 90)-(595, 80), 1, BF
        LINE (20, 20)-(25, 445), 6, BF
        LINE (20, 20)-(595, 25), 7, BF
        LINE (20, 445)-(590, 440), 8, BF
        LINE (590, 20)-(615, 445), 9, BF


        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(630, 15), 2, BF
        LINE (10, 455)-(595, 450), 4, BF
        LINE (595, 15)-(630, 455), 5, BF

        LOCATE 3, 29
        PRINT " BUDHANILKANTHA SCHOOL "
        LOCATE 4, 31
        PRINT " LIBRARY DEPARTMENT "
        LOCATE 5, 35
        PRINT " E LIBRARY "
        LOCATE 8, 30
        PRINT "WELCOME TO E LIBRARY "
        LINE (420, 80)-(420, 25)
        LINE (210, 80)-(210, 25)


        LINE (295, 210)-(295, 405), 7
        LINE (295, 210)-(585, 210), 7
        LINE (295, 405)-(585, 405), 7
        LINE (585, 210)-(585, 405), 7


        LINE (300, 215)-(300, 400)
        LINE (300, 215)-(580, 215)
        LINE (300, 400)-(580, 400)
        LINE (580, 215)-(580, 400)

        LOCATE 15, 47
        PRINT "BUDHANILKANTHA SCHOOL"

        LOCATE 16, 49
        PRINT "LIBRARY DEPARTMENT"

        LOCATE 17, 53
        PRINT "STAFF CARD"


        LOCATE 18, 63
        PRINT "ID: " + b$
        LOCATE 20, 42
        PRINT "NAME: " + a$
        LOCATE 21, 42
        PRINT "AGE: " + c$
        LOCATE 22, 42
        PRINT "SEX: " + d$
        LOCATE 23, 42
        PRINT "ADDRESS: " + e$

        REM "FACE"

        CIRCLE (545, 330), 30
        CIRCLE (533, 322), 7, 13
        CIRCLE (557, 322), 6, 12
        CIRCLE (533, 322), 8, 12
        CIRCLE (545, 330), 22, 14, 3.4, 6
        CIRCLE (545, 330), 25, 13, 3

        LINE (500, 290)-(500, 385)
        LINE (500, 290)-(595, 290)
        LINE (500, 385)-(595, 385)
        LINE (595, 290)-(595, 385)

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(575, 10), 2, BF
        LINE (10, 455)-(575, 455), 3, BF
        LINE (575, 10)-(575, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        PRINT "1.Search a Book"
        LOCATE 19, 15
        PRINT "2.Borrow a Book"
        LOCATE 21, 15
        PRINT "3.Return a Book"
        LOCATE 23, 15
        PRINT "4.Add a Book"
        LOCATE 25, 15
        PRINT "5.Delete a Book"
        b = b - 33
        d = d - 33
        p = p - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(80) AND p < Size THEN
        q = q + 1
        CLS
        LOCATE 11, 4
        PRINT "------------------------------ MAIN MENU---------------------------------"
        LOCATE 12, 4
        PRINT "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        SOUND 6000, .8
        SOUND 5000, .6
        SOUND 4000, .4

        REM "-------------------------------------"
        LINE (10, 90)-(595, 80), 1, BF
        LINE (20, 20)-(25, 445), 6, BF
        LINE (20, 20)-(595, 25), 7, BF
        LINE (20, 445)-(590, 440), 8, BF
        LINE (590, 20)-(615, 445), 9, BF


        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(630, 15), 2, BF
        LINE (10, 455)-(595, 450), 4, BF
        LINE (595, 15)-(630, 455), 5, BF

        LOCATE 3, 29
        PRINT " BUDHANILKANTHA SCHOOL "
        LOCATE 4, 31
        PRINT " LIBRARY DEPARTMENT "
        LOCATE 5, 35
        PRINT " E LIBRARY "
        LOCATE 8, 30
        PRINT "WELCOME TO E LIBRARY "
        LINE (420, 80)-(420, 25)
        LINE (210, 80)-(210, 25)

        LINE (300, 215)-(300, 400)
        LINE (300, 215)-(580, 215)
        LINE (300, 400)-(580, 400)
        LINE (580, 215)-(580, 400)

        LINE (295, 210)-(295, 405), 6
        LINE (295, 210)-(585, 210), 6
        LINE (295, 405)-(585, 405), 6
        LINE (585, 210)-(585, 405), 6

        LOCATE 15, 47
        PRINT "BUDHANILKANTHA SCHOOL"

        LOCATE 16, 49
        PRINT "LIBRARY DEPARTMENT"

        LOCATE 17, 53
        PRINT "STAFF CARD"


        LOCATE 18, 63
        PRINT "ID: " + b$
        LOCATE 20, 42
        PRINT "NAME: " + a$
        LOCATE 21, 42
        PRINT "AGE: " + c$
        LOCATE 22, 42
        PRINT "SEX: " + d$
        LOCATE 23, 42
        PRINT "ADDRESS: " + e$

        REM "FACE"
        CIRCLE (545, 330), 30
        CIRCLE (545, 330), 31
        CIRCLE (533, 322), 6, 12
        CIRCLE (533, 322), 5, 12
        CIRCLE (557, 322), 7, 13
        CIRCLE (545, 330), 22, 14, 3.4, 6
        CIRCLE (545, 330), 25, 13, 3

        LINE (500, 290)-(500, 385)
        LINE (500, 290)-(595, 290)
        LINE (500, 385)-(595, 385)
        LINE (595, 290)-(595, 385)

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(575, 10), 2, BF
        LINE (10, 455)-(575, 455), 3, BF
        LINE (575, 10)-(575, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        LOCATE 17, 15
        PRINT "1.Search a Book"
        LOCATE 19, 15
        PRINT "2.Borrow a Book"
        LOCATE 21, 15
        PRINT "3.Return a Book"
        LOCATE 23, 15
        PRINT "4.Add a Book"
        LOCATE 25, 15
        PRINT "5.Delete a Book"
        b = b + 33
        d = d + 33
        p = p + 1
    ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x < Size THEN
        CLS
        REM "-------------------------------------"
        LINE (10, 90)-(595, 80), 1, BF
        LINE (20, 20)-(25, 445), 6, BF
        LINE (20, 20)-(595, 25), 7, BF
        LINE (20, 445)-(590, 440), 8, BF
        LINE (590, 20)-(615, 445), 9, BF


        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(630, 15), 2, BF
        LINE (10, 455)-(595, 450), 4, BF
        LINE (595, 15)-(630, 455), 5, BF

        LOCATE 3, 29
        PRINT " BUDHANILKANTHA SCHOOL "
        LOCATE 4, 31
        PRINT " LIBRARY DEPARTMENT "
        LOCATE 5, 35
        PRINT " E LIBRARY "
        LOCATE 8, 30
        PRINT "WELCOME TO E LIBRARY "
        LINE (420, 80)-(420, 25)
        LINE (210, 80)-(210, 25)


        LINE (300, 215)-(300, 400)
        LINE (300, 215)-(580, 215)
        LINE (300, 400)-(580, 400)
        LINE (580, 215)-(580, 400)

        LINE (295, 210)-(295, 405), 5
        LINE (295, 210)-(585, 210), 5
        LINE (295, 405)-(585, 405), 5
        LINE (585, 210)-(585, 405), 5


        LOCATE 15, 47
        PRINT "BUDHANILKANTHA SCHOOL"

        LOCATE 16, 49
        PRINT "LIBRARY DEPARTMENT"

        LOCATE 17, 53
        PRINT "STAFF CARD"


        LOCATE 18, 63
        PRINT "ID: " + b$
        LOCATE 20, 42
        PRINT "NAME: " + a$
        LOCATE 21, 42
        PRINT "AGE: " + c$
        LOCATE 22, 42
        PRINT "SEX: " + d$
        LOCATE 23, 42
        PRINT "ADDRESS: " + e$
        LINE (500, 290)-(500, 385)
        LINE (500, 290)-(595, 290)
        LINE (500, 385)-(595, 385)
        LINE (595, 290)-(595, 385)

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(575, 10), 2, BF
        LINE (10, 455)-(575, 455), 3, BF
        LINE (575, 10)-(575, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        LOCATE 17, 15
        PRINT "1.Search a Book"
        LOCATE 19, 15
        PRINT "2.Borrow a Book"
        LOCATE 21, 15
        PRINT "3.Return a Book"
        LOCATE 23, 15
        PRINT "4.Add a Book"
        LOCATE 25, 15
        PRINT "5.Delete a Book"
    ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
        CLS
        REM "-------------------------------------"
        LINE (10, 90)-(595, 80), 1, BF
        LINE (20, 20)-(25, 445), 6, BF
        LINE (20, 20)-(595, 25), 7, BF
        LINE (20, 445)-(590, 440), 8, BF
        LINE (590, 20)-(615, 445), 9, BF


        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(630, 15), 2, BF
        LINE (10, 455)-(595, 450), 4, BF
        LINE (595, 15)-(630, 455), 5, BF

        LOCATE 3, 29
        PRINT " BUDHANILKANTHA SCHOOL "
        LOCATE 4, 31
        PRINT " LIBRARY DEPARTMENT "
        LOCATE 5, 35
        PRINT " E LIBRARY "
        LOCATE 8, 30
        PRINT "WELCOME TO E LIBRARY "
        LOCATE 10, 23
        LINE (420, 80)-(420, 25)
        LINE (210, 80)-(210, 25)



        LINE (300, 215)-(300, 400)
        LINE (300, 215)-(580, 215)
        LINE (300, 400)-(580, 400)
        LINE (580, 215)-(580, 400)

        LINE (295, 210)-(295, 405), 4
        LINE (295, 210)-(585, 210), 4
        LINE (295, 405)-(585, 405), 4
        LINE (585, 210)-(585, 405), 4

        LOCATE 15, 47
        PRINT "BUDHANILKANTHA SCHOOL"

        LOCATE 16, 49
        PRINT "LIBRARY DEPARTMENT"

        LOCATE 17, 53
        PRINT "STAFF CARD"


        LOCATE 18, 63
        PRINT "ID: " + b$
        LOCATE 20, 42
        PRINT "NAME: " + a$
        LOCATE 21, 42
        PRINT "AGE: " + c$
        LOCATE 22, 42
        PRINT "SEX: " + d$
        LOCATE 23, 42
        PRINT "ADDRESS: " + e$
        LINE (500, 290)-(500, 385)
        LINE (500, 290)-(595, 290)
        LINE (500, 385)-(595, 385)
        LINE (595, 290)-(595, 385)

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(575, 10), 2, BF
        LINE (10, 455)-(575, 455), 3, BF
        LINE (575, 10)-(575, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        PRINT "1.Search a Book"
        LOCATE 19, 15
        PRINT "2.Borrow a Book"
        LOCATE 21, 15
        PRINT "3.Return a Book"
        LOCATE 23, 15
        PRINT "4.Add a Book"
        LOCATE 25, 15
        PRINT "5.Delete a Book"

    END IF
    LINE (a, b)-(a, d), 2, B
    LINE (a, b)-(c, b), 3, B
    LINE (c, d)-(c, b), 4
    LINE (c, d)-(a, d), 5

    IF KeyPress = CHR$(13) AND p = 1 THEN
        CHAIN "search.bas"
    ELSEIF KeyPress = CHR$(13) AND p = 2 THEN
        CHAIN "borrow.bas"
    ELSEIF KeyPress = CHR$(13) AND p = 3 THEN
        CHAIN "return.bas"
    ELSEIF KeyPress = CHR$(13) AND p = 4 THEN
        CHAIN "addbook.bas"
    ELSEIF KeyPress = CHR$(13) AND p = 5 THEN
        CHAIN "delete.bas"
    END IF
LOOP UNTIL KeyPress = "Q"

