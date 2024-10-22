#lang racket

#|
Define a procedure that
removes the first match of an element by going from left to right.

**Acceptance criteria:**

1. All tests pass.
|#

(define (remove-first-proc-lin-iter x xs)
  (define (helper result leftover)
    (cond
      [(null? leftover) result]
      [(equal? (car leftover) x) (append result (cdr leftover))]
      [else (helper (append result (list (car leftover))) (cdr leftover))]
      )
    )
  (helper null xs)
  )

(define (remove-first-proc x xs)
  (cond
    [(null? xs) null]
    [(equal? x (car xs)) (cdr xs)]
    [else (cons (car xs) (remove-first-proc x (cdr xs)))]
    )
  )

(define (remove-first-no-proc x xs)
  (remove x xs)
  )

; using a predefined procedure
(equal? (remove-first-proc 1 '(1 1 1 2)) '(1 1 2))
(equal? (remove-first-proc 1 '(2 5 6)) '(2 5 6))
(equal? (remove-first-proc 1 '(1)) '())
(equal? (remove-first-proc 1 '(2 1)) '(2))
(equal? (remove-first-proc "RNN" '("CNN" "RNN" "GAN" "RNN")) '("CNN" "GAN" "RNN"))

; without using a predefined procedure
(equal? (remove-first-no-proc 1 '(1 1 1 2)) '(1 1 2))
(equal? (remove-first-no-proc 1 '(2 5 6)) '(2 5 6))
(equal? (remove-first-no-proc 1 '(1)) '())
(equal? (remove-first-no-proc 1 '(2 1)) '(2))
(equal? (remove-first-no-proc "RNN" '("CNN" "RNN" "GAN" "RNN")) '("CNN" "GAN" "RNN"))
