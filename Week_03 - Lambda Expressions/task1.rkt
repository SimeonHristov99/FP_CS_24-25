#lang racket

#|
Demonstrate the difference between `applicative`
and `normal` order evaluation.

**Acceptance criteria:**

1. Two scripts are created - one, written in `Haskell`,
the other - in `Racket`, that demonstrate the differences.
|#

(require racket/trace)

(define (g x)
  (g x)
  )

(trace g)

(define (f x y)
  x
  )

(f 42 (g 42))
