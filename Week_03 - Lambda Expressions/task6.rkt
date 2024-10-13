#lang racket

#|
Define an iterative `folding` procedure. A `folding` procedure is a procedure that accepts:

- `f`: A binary procedure.
- `acc`: The accumulated result. This is the `result` variable we use in our linearly iterative procedures.
- `start`: The starting value of the range.
- `end`: The ending value of the range.
- `transform`: Unary procedure to transform the current value.
- `next`: Unary procedure to generate the next value in the range.

and calculates the expression

`(f (transform start) (f (transform (next start)) ... (f (transform start) acc)))`

Use it to evaluate the following expressions:

- `1 + 2 + 3 + ... + 100`
- `1 - (2 - (3 - (4 - 5)))`
- `1 * 2 * 3 * ... * 10`
- `1 * 3 * 5 * ... * 10`
- `1^2 + 3^2 + 5^2 + ... + 100^2`

**Acceptance criteria:**

1. All tests pass.
|#

(define (accumulate f acc start end transform next)
  42
  )

; 1 + 2 + 3 + ... + 100
(= (accumulate ???) 5050)

; 1 - (2 - (3 - (4 - 5)))
(= (accumulate ???) 3)

; 1 * 2 * 3 * ... * 10
(= (accumulate ???) 3628800)

; 1 * 3 * 5 * ... * 10
(= (accumulate ???) 2027025)

; 1^2 + 3^2 + 5^2 + ... + 100^2
(= (accumulate ???) 338350)