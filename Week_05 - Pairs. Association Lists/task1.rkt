#lang racket

#|
Define a procedure that returns
the value of a given key from an associative list.

**Acceptance criteria:**

1. All tests pass.
2. `assoc-hop` is defined via a `let` expression.
|#

(let* ([x 5]
      [y (add1 x)]
      )
  y)

(define (assoc-rec key xs)
  (cond
    [(null? xs) (error "empty list")]
    [(equal? key (caar xs)) (cdar xs)]
    [else (assoc-rec key (cdr xs))]
    )
  )

(define (assoc-hop key xs)
  (let ([result (dropf xs (λ (pair) (not (equal? key (car pair)))))])
    (if (null? result)
        #f
        (cdar result)
        )
    )
  )

(define (assoc-builtin key xs)
  (let ([result (assoc key xs)])
    (if (equal? result #f)
        #f
        (cdr result)
        )
    )
  )

; using a recursive process
(equal? (assoc-rec 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")

; using a higher order procedure
(equal? (assoc-hop 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
(equal? (assoc-hop 42 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) #f)

; using a built-in procedure
(equal? (assoc-builtin 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
(equal? (assoc-builtin 42 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) #f)
