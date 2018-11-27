DIM KeyPress  AS STRING
DIM x AS INTEGER
DIM y AS INTEGER

CONST Size = 25

x = 159
y = 99

SCREEN 13

CLS

DO

   KeyPress = UCASE$(INKEY$)

   IF KeyPress = CHR$(0) + CHR$(72) AND y > Size THEN
     CLS
     y = y - 1
   ELSEIF KeyPress = CHR$(0) + CHR$(80) AND y < 199 - Size THEN
     CLS
     y = y + 1
   ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x > Size THEN
     CLS
     x = x - 1
   ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
     CLS
     x = x + 1
   END IF

   CIRCLE (x, y), Size, 10

LOOP UNTIL KeyPress = "Q"