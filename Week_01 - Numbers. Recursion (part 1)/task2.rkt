#lang racket

#|
Define procedures that return:

- `min-if`, `min-guard`, `min-built-in`: return the smaller of two whole numbers;
- `last-digit`: returns the last digit of a number;
- `quotient-whole`: returns the quotient of the division of two numbers;
- `div-whole`: returns the quotient and remainder of the division of two numbers;
- `remove-last-digit`: returns a whole number without its last digit;
- `avg-whole`: returns the average of two whole numbers;
- `round-two-dig`: return the number rounded to the second digit after the decimal point.

**Acceptance criteria:**

1. All tests pass.
2. `min-if` uses an if-else statement.
3. `min-guard` uses guards.
4. `min-built-in` uses built-in functions.
|#

(define (min-if x y)
  
  )

(define (min-guard x y)
  
  )

(define (min-built-in x y)
  
  )

(define (last-digit n)
  
  )

(define (quotient-whole x y)
  
  )

(define (div-whole x y)
  
  )

(define (remove-last-digit n)
  
  )

(define (average-whole x y)
  
  )

(define (round-two-dig n)
  
  )

(= (min-if -60 -15) -60)
(= (min-if 15 60) 15)
(= (min-if 60 15) 15)

(= (min-guard 15 60) 15)
(= (min-guard 60 15) 15)

(= (min-built-in 5 6) 5)

(= (last-digit 154) 4)

(= (quotient-whole 64 2) 32)

(div-whole 154 17) ; 9 1/17

(= (remove-last-digit 154) 15)

(= (average-whole 5 1542) 773.5)

(= (round-two-dig pi) 3.14)