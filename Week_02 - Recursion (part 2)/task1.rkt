#lang racket

#|
Define a recursive and an iterative procedure for
calculating `x` to the power of `n`.

**Acceptance criteria:**

1. All tests pass.
2. `pow-rec` is a linearly recursive procedure.
3. `pow-iter` is a linearly iterative procedure.
|#

(define (pow-rec x n)
  (if (zero? n)
      1
      (* x (pow-rec x (sub1 n)))
      )
  )

(define (pow-iter x n)
  (define (helper result leftover)
    (if (zero? leftover)
        result
        (helper (* result x) (sub1 leftover))
        )
    )
  (helper 1 n)
  )

(= (pow-rec 2 5) 32)
(= (pow-rec 15 3) 3375)

(= (pow-iter 2 5) 32)
(= (pow-iter 15 3) 3375)
