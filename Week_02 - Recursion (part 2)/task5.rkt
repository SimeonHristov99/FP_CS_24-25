#lang racket

#|
Define a predicate `(inc-digits? n)` that checks
whether the digits of the non-negative `n` are ordered
in an ascending order.

**Acceptance criteria:**

1. All tests pass.
|#

(define (inc-digits? n)
  42
  )

(equal? (inc-digits? 1244) #t)
(equal? (inc-digits? 12443) #f)
