#lang racket

#|
Define a procedure that finds the maximum digit in a number.

**Acceptance criteria:**

1. All tests pass.
|#

(define (find-max n)
  (define (helper current-max leftover)
    (if (zero? lefover)
        current-max
        (helper
         (max current-max (remainder leftover 10))
         (quotient leftover 10)
         )
        )
    )
  (helper (remainder n 10) (quotient n 10))
  )

(= (find-max 55345) 5)
(= (find-max 14752) 7)
(= (find-max 329450) 9)
(= (find-max 9521) 9)
