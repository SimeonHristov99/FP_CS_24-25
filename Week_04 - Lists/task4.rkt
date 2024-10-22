#lang racket

#|
Define a procedure that returns the smallest element of a list.

**Acceptance criteria:**

1. All tests pass.
|#

(define (get-smallest-rec xs)
  (cond
    [(null? xs) (error "empty list")]
    [(= 1 (length xs)) (car xs)]
    [else (min (car xs) (get-smallest-rec (cdr xs)))]
    )
  )

(define (get-smallest-proc xs)
  (apply min xs) ; (car (sort xs <))
  )

(define (get-smallest-fold-proc xs)
  (foldr (λ (x acc) (min x acc)) (car xs) (cdr xs))
  )

(define (get-smallest-fold-no-proc xs)
  (foldr min (car xs) (cdr xs))
  )

; using a recursive procedure
(= (get-smallest-rec '(1 2 5)) 1)
(= (get-smallest-rec '(2 1 5)) 1)
(= (get-smallest-rec '(2 1 -1 5)) -1)

; with a predefined procedure
(= (get-smallest-proc '(1 2 5)) 1)
(= (get-smallest-proc '(2 1 5)) 1)
(= (get-smallest-proc '(2 1 -1 5)) -1)

; using a folding with a predefined procedure
(= (get-smallest-fold-proc '(1 2 5)) 1)
(= (get-smallest-fold-proc '(2 1 5)) 1)
(= (get-smallest-fold-proc '(2 1 -1 5)) -1)

; using a folding without a predefined procedure
(= (get-smallest-fold-no-proc '(1 2 5)) 1)
(= (get-smallest-fold-no-proc '(2 1 5)) 1)
(= (get-smallest-fold-no-proc '(2 1 -1 5)) -1)
