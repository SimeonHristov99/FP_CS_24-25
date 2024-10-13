#lang racket

#|
Define a higher order procedure that:

- is called `my-identity` and simulates the `identity` procedure;
- accepts a procedure and returns a lambda that accepts an argument and applies that procedure to it;
- accepts a predicate and returns a lambda that accepts an argument and applies the negated predicate to it;
- accepts two procedures and returns their composition over an argument of a lambda procedure;
- returns a procedure that is the partial application of f over x.

**Acceptance criteria:**

1. All tests pass.
|#



(define (my-lambda f)
  42
  )

(define (negate-pred p?)
  42
  )

(define (my-compose f g)
  42
  )

(define (partially-apply f x)
  42
  )

; write 2 tests for subtask 1

(= ((my-lambda identity) 5) 5)
(equal? ((my-lambda identity) "Tensorflow") "Tensorflow")
(= ((my-lambda string-length) "Tensorflow") 10)

(equal? ((negate-pred even?) 6) #f)

(equal? ((my-compose even? string-length) "Tensorflow") #t)
(equal? ((my-compose (λ (x) (- x 5)) (λ (y) (+ y 25))) 5) 25)

(= ((partially-apply (λ (x y) (+ x y)) 5) 10) 15)
