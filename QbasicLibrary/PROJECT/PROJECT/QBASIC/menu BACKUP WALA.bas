DIM KeyPress AS STRING
DIM x AS INTEGER
DIM y AS INTEGER
p = 1
CONST Size = 5
OPEN "F:\qbasics\text\login1.txt" FOR INPUT AS #1
INPUT #1, a$, b$, c$, d$, e$
CLOSE #1

a = 95
b = 245 + 33
c = 245
d = 215 + 33

SCREEN 12
CLS


LINE (15, 10)-(10, 455), 1, BF
LINE (10, 10)-(625, 10), 2,
LINE (10, 455)-(625, 455), 4,
LINE (625, 10)-(625, 455), 5

REM "-------------------------------------"
LINE (10, 10)-(625, 100), 1, BF

LINE (300, 215)-(300, 400),
LINE (300, 215)-(605, 215),
LINE (300, 400)-(605, 400),
LINE (605, 215)-(605, 400),

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
LINE (500, 290)-(500, 385),
LINE (500, 290)-(595, 290),
LINE (500, 385)-(595, 385),
LINE (595, 290)-(595, 385),

PRINT
PRINT
LOCATE 17, 15
PRINT "Search a Book"
LOCATE 19, 15
PRINT "Borrow a Book"
LOCATE 21, 15
PRINT "Return a Book"
LOCATE 23, 15
PRINT "Add a Book"
LOCATE 25, 15
PRINT "Delete a Book"
DO

    KeyPress = UCASE$(INKEY$)

    IF KeyPress = CHR$(0) + CHR$(72) AND p > 1 THEN
        CLS
        REM "-------------------------------------"
        LINE (10, 10)-(625, 100), 1, BF

        LINE (300, 215)-(300, 400),
        LINE (300, 215)-(605, 215),
        LINE (300, 400)-(605, 400),
        LINE (605, 215)-(605, 400),

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
        LINE (500, 290)-(500, 385),
        LINE (500, 290)-(595, 290),
        LINE (500, 385)-(595, 385),
        LINE (595, 290)-(595, 385),

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(625, 10), 2, BF
        LINE (10, 455)-(625, 455), 3, BF
        LINE (625, 10)-(625, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        PRINT "Search a Book"
        LOCATE 19, 15
        PRINT "Borrow a Book"
        LOCATE 21, 15
        PRINT "Return a Book"
        LOCATE 23, 15
        PRINT "Add a Book"
        LOCATE 25, 15
        PRINT "Delete a Book"
        b = b - 33
        d = d - 33
        p = p - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(80) AND p < Size THEN
        CLS
        REM "-------------------------------------"
        LINE (10, 10)-(625, 100), 1, BF

        LINE (300, 215)-(300, 400),
        LINE (300, 215)-(605, 215),
        LINE (300, 400)-(605, 400),
        LINE (605, 215)-(605, 400),

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
        LINE (500, 290)-(500, 385),
        LINE (500, 290)-(595, 290),
        LINE (500, 385)-(595, 385),
        LINE (595, 290)-(595, 385),

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(625, 10), 2, BF
        LINE (10, 455)-(625, 455), 3, BF
        LINE (625, 10)-(625, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        PRINT "Search a Book"
        LOCATE 19, 15
        PRINT "Borrow a Book"
        LOCATE 21, 15
        PRINT "Return a Book"
        LOCATE 23, 15
        PRINT "Add a Book"
        LOCATE 25, 15
        PRINT "Delete a Book"
        b = b + 33
        d = d + 33
        p = p + 1
    ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x < Size THEN
        CLS
        REM "-------------------------------------"
        LINE (10, 10)-(625, 100), 1, BF

        LINE (300, 215)-(300, 400),
        LINE (300, 215)-(605, 215),
        LINE (300, 400)-(605, 400),
        LINE (605, 215)-(605, 400),

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
        LINE (500, 290)-(500, 385),
        LINE (500, 290)-(595, 290),
        LINE (500, 385)-(595, 385),
        LINE (595, 290)-(595, 385),

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(625, 10), 2, BF
        LINE (10, 455)-(625, 455), 3, BF
        LINE (625, 10)-(625, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        PRINT "Search a Book"
        LOCATE 19, 15
        PRINT "Borrow a Book"
        LOCATE 21, 15
        PRINT "Return a Book"
        LOCATE 23, 15
        PRINT "Add a Book"
        LOCATE 25, 15
        PRINT "Delete a Book"
    ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
        CLS
        REM "-------------------------------------"
        LINE (10, 10)-(625, 100), 1, BF

        LINE (300, 215)-(300, 400),
        LINE (300, 215)-(605, 215),
        LINE (300, 400)-(605, 400),
        LINE (605, 215)-(605, 400),

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
        LINE (500, 290)-(500, 385),
        LINE (500, 290)-(595, 290),
        LINE (500, 385)-(595, 385),
        LINE (595, 290)-(595, 385),

        LINE (15, 10)-(10, 455), 1, BF
        LINE (10, 10)-(625, 10), 2, BF
        LINE (10, 455)-(625, 455), 3, BF
        LINE (625, 10)-(625, 455), 4, BF

        PRINT
        PRINT
        LOCATE 17, 15
        PRINT "Search a Book"
        LOCATE 19, 15
        PRINT "Borrow a Book"
        LOCATE 21, 15
        PRINT "Return a Book"
        LOCATE 23, 15
        PRINT "Add a Book"
        LOCATE 25, 15
        PRINT "Delete a Book"

    END IF
    LINE (a, b)-(a, d), 2, B
    LINE (a, b)-(c, b), 3, B
    LINE (c, d)-(c, b), 4
    LINE (c, d)-(a, d), 5
    k$ = INKEY$
    IF k$ = CHR$(13) and p=  THEN


LOOP UNTIL KeyPress = "Q"
PRINT
PRINT
LOCATE 17, 15
PRINT "Search a Book"
LOCATE 19, 15
PRINT "Borrow a Book"
LOCATE 21, 15
PRINT "Return a Book"
LOCATE 23, 15
PRINT "Add a Book"
LOCATE 25, 15
PRINT "Delete a Book"
