#lang racket

#|
Define a procedure that returns the sum of all the
divisors of a number. For negative numbers return `0`.

**Acceptance criteria:**

1. All tests pass.
|#

(define (sum-divs n)
  42
  )

(= (sum-divs 0) 0)
(= (sum-divs 1) 1)
(= (sum-divs 6) 12) ; 1 + 2 + 3 + 6
(= (sum-divs -6) 0)
(= (sum-divs 12345) 19776)
