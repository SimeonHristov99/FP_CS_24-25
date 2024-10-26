#lang racket

#|
Define a procedure that
counts how many times a list is present in another list.

**Acceptance criteria:**

1. All tests pass.
|#

(define (count-occurrences xs ys)
  42
  )

(= (count-occurrences '(6 6) '(2 2)) 0)
(= (count-occurrences '(1 5) '(1 5 2 3 1 5 6 7 7 1 5)) 3)
(= (count-occurrences '(5 5) '(5 5 5 3 1 5 6 7 5 5 5)) 4)
