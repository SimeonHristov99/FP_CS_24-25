#lang racket

#|
A narcissistic number is a number which is the sum of
its own digits, each raised to the power of the number
of digits in a given base.

Define a predicate that checks whether a given number
is a narcissistic number.

For example, take `153` (`3` digits):

```text
1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
```

and `1634` (`4` digits):

```text
1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
```

**Acceptance criteria:**

1. All tests pass.
2. Only linearly recursive processes are used.
3. Show how `racket/trace` can help.
|#

(require racket/trace)

(define (num-digits n)
  (if (< (abs n) 10)
      1
      (add1 (num-digits (quotient n 10)))
      )
  )

(define (narcissistic? n)
  (define (helper len leftover)
    (if (zero? leftover)
        0
        (+
         (expt (remainder leftover 10) len)
         (helper len (quotient leftover 10))
         )
        )
    )
  (trace helper)
  (= n (helper (num-digits n) n))
  )

(num-digits 0) ; 1
(num-digits 100) ; 3
(num-digits -1) ; 1
(num-digits -500) ; 3

(equal? (narcissistic? 7) #t)
(equal? (narcissistic? 12) #f)
(equal? (narcissistic? 153) #t)
(equal? (narcissistic? 370) #t)
(equal? (narcissistic? 371) #t)
(equal? (narcissistic? 1634) #t)
