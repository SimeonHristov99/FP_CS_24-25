#lang racket

#|
Define a higher order procedure that accepts a list - *xs*,
and returns an unary procedure that takes a predicate - *p?*,
and checks whether *xs* is sorted according to *p?*.

**Acceptance criteria:**

1. All tests pass.
|#

(define (ordered xs)
  (λ (p?)
    (cond
      [(< (length xs) 2) #t]
      [(not (p? (car xs) (cadr xs))) #f]
      [else ((ordered (cdr xs)) p?)]
      )
    )
  )

(define (ordered-no-expl-booleans xs)
  (λ (p?)
    (or
     (< (length xs) 2)
     (and
      (p? (car xs) (cadr xs))
      ((ordered (cdr xs)) p?)
      )
     ) 
    )
  )

; with freedom to solve however you like it
(equal? ((ordered '(1 2 3 5)) (λ (x y) (< x y))) #t)
(equal? ((ordered '(1 8 29 92)) (λ (x y) (= y (+ (* x 3) 5)))) #t)
(equal? ((ordered '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5)))) #f)
;((ordered '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5))))

; using a linearly recursive process without returning explicitly #t and/or #f
(equal? ((ordered-no-expl-booleans '(1 2 3 5)) (λ (x y) (< x y))) #t)
(equal? ((ordered-no-expl-booleans '(1 8 29 92)) (λ (x y) (= y (+ (* x 3) 5)))) #t)
(equal? ((ordered-no-expl-booleans '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5)))) #f)
