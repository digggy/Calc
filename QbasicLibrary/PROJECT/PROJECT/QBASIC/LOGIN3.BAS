DIM KeyPress AS STRING
DIM strpassword AS STRING
DIM strkey AS STRING


DIM x AS INTEGER
DIM y AS INTEGER
d:
CONST Size = 1
press = 0
SCREEN 12
CLS
COLOR 15
REM "MAIN BOX"
LINE (20 + 15, 10)-(10, 455), 4, BF
LINE (10, 10)-(575, 10), 4, BF
LINE (20, 455)-(575, 455), 4, BF
LINE (575 + 15, 10)-(575, 455), 4, BF

REM" MIDDLE BOX"
LINE (205, 40)-(200, 435), 1, BF
LINE (200, 40)-(470, 40), 1, BF
LINE (205, 435)-(470, 435), 1, BF
LINE (475, 40)-(470, 435), 1, BF

a = 95 + 50 + 50 + 10 + 10
b = 245 + 33 + 20 + 10 + 15 + 5
c = 245 + 50 + 50 + 10 + 10 + 20 + 20 + 50
d = 215 + 33 + 20 + 10 + 20 - 5

LINE (a, b)-(a, d), 10
LINE (a, b)-(c, b), 10
LINE (c, d)-(c, b), 10
LINE (c, d)-(a, d), 10

a = 95 + 50 + 50 + 10 + 10
b = 245 + 33 + 20 + 10 + 15 + 5 + 50 - 5
c = 245 + 50 + 50 + 10 + 10 + 20 + 20 + 50
d = 215 + 33 + 20 + 10 + 20 - 5 + 50 - 3

LINE (a, b)-(a, d), 10
LINE (a, b)-(c, b), 10
LINE (c, d)-(c, b), 10
LINE (c, d)-(a, d), 10

REM "PICTURE BOX"
LINE (240, 70)-(240, 270)
LINE (240, 70)-(425, 70)
LINE (240, 270)-(425, 270)
LINE (425, 70)-(425, 270)

REM "FACE"
CIRCLE (330, 150), 51, O
CIRCLE (330, 150), 50, 14
PAINT (330, 150), 14
CIRCLE (310, 150), 30, 0, 1, 2
CIRCLE (310, 150), 31, 0, 1, 2
CIRCLE (310, 124), 6, 0
PAINT (310, 124), 0, 0
CIRCLE (350, 150), 30, 0, 1, 2
CIRCLE (350, 150), 31, 0, 1, 2
CIRCLE (350, 124), 6, 0
PAINT (350, 124), 0, 0
CIRCLE (330, 150), 15, 0, 2, 1
CIRCLE (330, 150), 16, 0, 2, 1
CIRCLE (330, 150), 40, 0, 3, 6
CIRCLE (330, 150), 41, 0, 3, 6

LINE (260, 220)-(300, 190)
LINE (360, 190)-(400, 220)

LINE (260, 220)-(260, 270)
LINE (260, 270)-(400, 270)
LINE (400, 220)-(400, 270)


LINE (330, 200)-(330, 270)
LOCATE 4, 40
PRINT "LOGIN"
LOCATE 23, 29
PRINT "PASSWORD  "
LOCATE 20, 29
INPUT "USERNAME "; a$
q = q + 100
SOUND q * 50, .1 * 100
pass = 1
LOCATE 23, 38
PRINT "?"
'INPUT "PASSWORD "; b$
  strpassword = ""
LOCATE CSRLIN, POS(0), 1
strkey = ""
DO UNTIL strkey = CHR$(13)
IF strkey = CHR$(8) THEN
 IF strpassword <> "" THEN
  strpassword = LEFT$(strpassword, LEN(strpassword) - 1)
  LOCATE 23, 30 - 1, 1
  PRINT " ";
  LOCATE 23, 30 - 1, 1
  END IF
  ELSE
  strpassword = strpassword + strkey
  IF strkey <> "" THEN
  press = press + 1
  LOCATE 23, 38 + press
  PRINT "*"
  END IF
  END IF
  strkey = INPUT$(1)
  LOOP
 b$ = strpassword
q = q + 2
SOUND q * 50, .1 * 100

OPEN "login.TXT" FOR INPUT AS #1
OPEN "login1.txt" FOR OUTPUT AS #2
DO WHILE NOT EOF(1)
    INPUT #1, c$, d$, e$, f$, g$, h$, i$
    IF i$ = a$ AND b$ = d$ THEN
        WRITE #2, c$, e$, f$, g$, h$
        CLOSE #1
        CLOSE #2
        CLS
        CHAIN "load.bas"
    END IF

LOOP
CLOSE #1
FOR i = 1 TO 1000 * 3
    LOCATE 25, 28
    PRINT "Incorrect Username/Password"
    LOCATE 27, 36
    COLOR M
    IF M > 10 THEN M = 1
    M = M + 1
    PRINT "WAIT 3 SECOND "
NEXT i
CLOSE #2
GOTO d:









