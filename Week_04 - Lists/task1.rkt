#lang racket

#|
Define a procedure *(sort-list xs)* that
accepts a list and returns a lambda procedure
that accepts a procedure and sorts the
elements in the list according to the passed procedure.

For example, if we wanted to sort the
list `'("one" "two" "0" "five" "" "one hundred" "onehundred")`
according to the length of each element,
the result should be
`'("" "0" "one" "two" "five" "onehundred" "one hundred")`.

**Acceptance criteria:**

1. All tests pass.
|#

(define (sort-list xs)
  (curry sort xs) ; (λ (p?) (sort xs p?))
  )

(equal?
 ((sort-list '("one" "two" "0" "five" "" "one hundred" "onehundred"))
             (λ (s1 s2) (< (string-length s1) (string-length s2))))
 '("" "0" "one" "two" "five" "onehundred" "one hundred"))
