#lang racket

#|
Define a higher-order procedure that takes a unary procedure `f`
and a binary procedure `g` and returns a binary procedure
that evaluates the expression `g(f(x), f(y))`.

**Acceptance criteria:**

1. All tests pass.
|#

(define (higher-composed-eval f g)
  (λ (x y) (g (f x) (f y)))
  )

(= ((higher-composed-eval (λ (x) (* x 2)) +) 5 8) 26)
(= ((higher-composed-eval (curry expt 10) remainder) 42.69 6) 536832)