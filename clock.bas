CLS
SCREEN 12
SECONDHAND = 80
MINHAND = 65
HOURHAND = 50
OX = 400 'THESE IS THE CENTER OF THE CLOCK
OY = 350
RADIUS = 50
DO
    FOR H = .10464 TO 6.2784 STEP .5232 'the angles are already in radians
        FOR M = .10464 TO 6.2784 STEP .10464
            FOR S = .10464 TO 6.2784 STEP .10464


                FOR H2 = 0 TO 5.7552 STEP .5232 'to create the marks all
                    S4X = OX + ((SECONDHAND + 10) * COS(H2)) 'around the face of the
                    S4Y = OY + ((SECONDHAND + 10) * SIN(H2)) 'clock
                    S5X = OX + ((SECONDHAND + 15) * COS(H2))
                    S5Y = OY + ((SECONDHAND + 15) * SIN(H2))

                    LINE (S5X, S5Y)-(S4X, S4Y)

                NEXT H2
                '***********************************************************************

                FOR S2 = .10464 TO 6.2784 STEP .10464
                    S2X = OX + ((SECONDHAND + 20) * COS(S2))
                    S2Y = OY + ((SECONDHAND + 20) * SIN(S2))
                    S3X = OX + ((SECONDHAND + 15) * COS(S2))
                    S3Y = OY + ((SECONDHAND + 15) * SIN(S2))

                    LINE (S3X, S3Y)-(S2X, S2Y)

                    CIRCLE (OX, OY), 95

                NEXT S2

                SX = OX + (SECONDHAND * COS(S))
                SY = OY + (SECONDHAND * SIN(S))

                MX = OX + (MINHAND * COS(M))
                MY = OY + (MINHAND * SIN(M))

                HX = OX + (HOURHAND * COS(H))
                HY = OY + (HOURHAND * SIN(H))

                LINE (OX, OY)-(SX, SY), 4 'Second hand

                LINE (OX, OY)-(MX, MY), 14 'MINUTE hand
                CIRCLE (MX, MY), 5
                LINE (OX, OY)-(HX, HY) 'HOUR hand
                CIRCLE (HX, HY), 5
                CIRCLE (OX, OY), RADIUS
                CIRCLE (OX, OY), RADIUS + 10
                CIRCLE (OX, OY), 5, 1
                SLEEP 1
                SOUND 4000, .1
                CLS
            NEXT S
        NEXT M
    NEXT H
LOOP
END

