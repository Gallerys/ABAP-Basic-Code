REPORT Z_SIMPLE_REPORT.

DATA: greeting TYPE string,
      num1 TYPE i VALUE 10,
      num2 TYPE i VALUE 5,
      sum TYPE i,
      age TYPE i VALUE 18,
      i TYPE i VALUE 0.

greeting = 'Hello, ABAP!'.
WRITE: / greeting.

sum = num1 + num2.
WRITE: / 'Sum:', sum.

IF age >= 18.
  WRITE: / 'You are an adult.'.
ELSE.
  WRITE: / 'You are a minor.'.
ENDIF.

DO 5 TIMES.
  WRITE: / 'Current value of i:', i.
  i = i + 1.
ENDDO.

FORM greet USING name TYPE string.
  WRITE: / 'Hello,', name, '!'.
ENDFORM.

PERFORM greet USING 'Alice'.
PERFORM greet USING 'Bob'.
