#lang racket

#|
Define a procedure that returns the sum of all the
divisors of a number. For negative numbers return `0`.

**Acceptance criteria:**

1. All tests pass.
|#

(require math/number-theory)

(define (sum-divs n)
  (define (helper result d)
    (cond
      [(> d n) result]
      [(divides? d n) (helper (+ result d) (add1 d))]
      [else (helper result (add1 d))]
      )
    )
  (if (<= n 0)
      0
      (helper 1 2)
      )
  )

(= (sum-divs 0) 0)
(= (sum-divs 1) 1)
(= (sum-divs 6) 12) ; 1 + 2 + 3 + 6
(= (sum-divs -6) 0)
(= (sum-divs 12345) 19776)
