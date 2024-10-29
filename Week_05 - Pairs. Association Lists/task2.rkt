#lang racket

#|
Define a procedure *(replace xs dict)* that
replaces any of the data in the
list *xs* that has corresponding values in the dictionary *dict*.

**Acceptance criteria**

1. All tests pass.
|#

(define (replace xs dict)
  (map (λ (x)
         (let
             ([result (assoc x dict)])
           (if result (cdr result) x))
         ) xs)
  )

(equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))
