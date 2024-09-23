#lang racket

#|
Define the following functions:

- `not-equal-one-line?`, `not-equal-guards?`: return whether two floating point numbers are different from each other;
- `inside?`: returns whether a whole number `x` is between two whole numbers - `start` and `finish`.

**Acceptance criteria:**

1. All tests pass.
2. `not-equal-one-line?` is defined on a single line.
3. `not-equal-one-line?` is defined **without** the use of `if-else`.
4. `not-equal-guards?` is defined using guards.
5. `inside?` is defined on a single line.
6. `inside?` is defined **without** the use of `if-else`.
|#

(define (not-equal-one-line? x y)
  
  )

(define (not-equal-guards? x y)
  
  )

(define (inside? start finish x)
  
  )

(equal? (not-equal-one-line? 5 2) #t)
(equal? (not-equal-one-line? 5 5) #f)

(equal? (not-equal-guards? 5 2) #t)
(equal? (not-equal-guards? 5 5) #f)

(equal? (inside? 1 5 4) #t) ; start = 1, finish = 5, x = 4
(equal? (inside? 5 1 4) #t)
(equal? (inside? 10 50 20) #t)
(equal? (inside? 10 50 1) #f)
