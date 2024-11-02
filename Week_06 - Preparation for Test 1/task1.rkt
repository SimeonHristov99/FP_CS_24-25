#lang racket

#|
Define a procedure that accepts a list
of nested lists and returns a list
containing only one level with all the elements from all lists.

**Acceptance criteria:**

1. All tests pass.
|#

(define (my-flatten xss)
  42
  )

(equal? (my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))
(equal? (my-flatten '(422 22 ((((11))) 33) (131 31 121 12121 11 (12555 555)))) '(422 22 11 33 131 31 121 12121 11 12555 555))
