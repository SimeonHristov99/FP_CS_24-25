#lang racket

#|
Using `accumulate` define a procedure that:

- checks whether all numbers in an interval pass a predicate `p?`;
- returns the local minimum for the unary function `f`
  in the interval `[start, end]`.

**Acceptance criteria:**

1. All tests pass.
|#

(define (accumulate f acc start end transform next)
  (if (> start end)
      acc
      (accumulate f (f (transform start) acc) (next start) end transform next)
      )
  )

(define (all? start end p?)
  (accumulate
   (λ (x y) (and x y))
   #t
   (min start end)
   (max start end)
   p?
   add1)
  )

(define (argmin f start end)
  (accumulate
   (λ (current acc)
     (if (< (f current) (f acc))
         current
         acc
         )
     )
   start
   (add1 start)
   end
   identity
   add1)
  )

#|
start=45
add_start=46
??? (mod7 46) (mod 45) => 3
(mod7 3)
|#

(equal? (all? 100 999 (λ (x) (< x 1000))) #t)
(equal? (all? 1 100 odd?) #f)
(equal? (all? 1042 524 odd?) #f)

(define (mod7 x) (remainder x 7))
(= (argmin mod7 45 50) 49)