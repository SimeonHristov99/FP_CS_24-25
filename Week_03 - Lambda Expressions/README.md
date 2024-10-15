# 🎯 Goals for week 3

1. Practice writing lambda functions.
2. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1

**Description:**

Demonstrate the difference between `applicative` and `normal` order evaluation.

**Acceptance criteria:**

1. Two scripts are created - one, written in `Haskell`, the other - in `Racket`, that demonstrate the differences.

## 🌟 Task 2

**Description:**

Define a higher order procedure that:

- is called `my-identity` and simulates the `identity` procedure;
- accepts a procedure and returns a lambda that accepts an argument and applies that procedure to it;
- accepts a predicate and returns a lambda that accepts an argument and applies the negated predicate to it;
- accepts two procedures and returns their composition over an argument of a lambda procedure;
- returns a procedure that is the partial application of f over x.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
; write 2 tests for subtask 1

(= ((my-lambda identity) 5) 5)
(equal? ((my-lambda identity) "Tensorflow") "Tensorflow")
(= ((my-lambda string-length) "Tensorflow") 10)

(equal? ((negate-pred even?) 6) #f)

(equal? ((my-compose even? string-length) "Tensorflow") #t)
(equal? ((my-compose (λ (x) (- x 5)) (λ (y) (+ y 25))) 5) 25)

(= ((partially-apply (λ (x y) (+ x y)) 5) 10) 15)
```

## ⭐ Task 3

**Description:**

Define a higher order procedure that accepts an unary procedure - *f*, and returns a lambda of two real numbers - *x*, *y*, that subtracts f(x) from f(y).

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(= ((difference (λ (x) (* 2 x))) 15.16 15.20) 0.0799999999999983)
(= ((difference (λ (x) (* 2 x))) 8.5 8) -1)
```

## ⭐ Task 4

**Description:**

Define a higher-order procedure that takes a unary procedure `f` and a binary procedure `g` and returns a binary procedure that evaluates the expression `g(f(x), f(y))`.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(= ((higher-composed-eval (λ (x) (* x 2)) (λ (x y) (+ x y))) 5 8) 26)
```

## 💫 Task 5

**Description:**

Define a procedure *switch-sum f g n* (*f*, *g* - procedures, *n* - number) that returns an unary procedure that for every x returns this sum: *f(x) + g(f(x)) + f(g(f(x))) +  ...* (containing *n* elements).

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 1) 2) 3)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 2) 2) 9)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 3) 2) 16)
(= ((switch-sum (λ (x) (+ x 1)) (λ (x) (* x 2)) 4) 2) 30)
```

## 🌟 Task 6

**Description:**

Define an iterative `folding` procedure. A `folding` procedure is a procedure that accepts:

- `f`: A binary procedure.
- `acc`: The accumulated result. This is the `result` variable we use in our linearly iterative procedures.
- `start`: The starting value of the range.
- `end`: The ending value of the range.
- `transform`: Unary procedure to transform the current value.
- `next`: Unary procedure to generate the next value in the range.

and calculates the expression

`(f (transform start) (f (transform (next start)) ... (f (transform start) acc)))`

Use it to evaluate the following expressions:

- `1 + 2 + 3 + ... + 100`
- `1 - (2 - (3 - (4 - 5)))`
- `1 * 2 * 3 * ... * 10`
- `1 * 3 * 5 * ... * 10`
- `1^2 + 3^2 + 5^2 + ... + 100^2`

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
; 1 + 2 + 3 + ... + 100
(= (accumulate ???) 5050)

; 1 - (2 - (3 - (4 - 5)))
(= (accumulate ???) 3)

; 1 * 2 * 3 * ... * 10
(= (accumulate ???) 3628800)

; 1 * 3 * 5 * ... * 10
(= (accumulate ???) 945)

; 1^2 + 3^2 + 5^2 + ... + 100^2
(= (accumulate ???) 166650)
```

## 💫 Task 7

**Description:**

Using `accumulate` define a procedure that:

- checks whether all numbers in an interval pass a predicate `p?`;
- returns the local minimum for the unary function `f` in the interval `[start, end]`.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(equal? (all? 100 999 (λ (x) (< x 1000))) #t)
(equal? (all? 1 100 odd?) #f)
(equal? (all? 1042 524 odd?) #f)

(define (mod7 x) (remainder x 7))
(= (argmin mod7 45 50) 49)
```

## For home

### ⭐ Task 1

**Description:**

Define a procedure that accepts an unary procedure *f* and a number *y* and returns an unary procedure that for every *x* returns:

- *y*, if it is greater than or equal to the result of applying *f* to *x*;
- the result of applying *f* to *x*, otherwise.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```text
If g is upper-bound (λ (x) (* 2 x)) 100
    then g 50 -> 100
If g is upper-bound (λ (x) (* 2 x)) 100.236
    then g 500.002 -> 1000.004
If g is upper-bound (λ (x) (* 2 x)) 80
    then g 3 -> 80
If g is upper-bound (λ (x) (* 2 x)) 70
    then g 30 -> 70
If g is upper-bound (λ (x) (* 2 x)) 30
    then g 70 -> 140
```

### 🌟 Task 2

**Description:**

Define a procedure that takes a single argument procedure and returns it applied $n$ times.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
(= ((apply-n (λ (x) (* 2 x)) 5) 2) 64)
(= ((apply-n (λ (x) (quotient x 10)) 2) 100) 1)
```

Explanation for test case `1`:

```text
We apply 2 * x first to 2, then to (2 * 2) and so on. Thus, we get: (((((2 * 2) * 2) * 2) * 2) * 2) => ((((4 * 2) * 2) * 2) * 2) => (((8 * 2) * 2) * 2) => ((16 * 2) * 2) => (32 * 2) => 64
```

### ⭐ Task 3

**Description:**

Define a procedure that returns the first order derivative of an unary procedure *f* with precision *eps*.

Recap:

![Alt text](assets/first-derivative.png?raw=true "First Derivative")

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
(= ((derive (λ (x) (* 2 x x x)) 1e-3) 2) 24.0120019999992)
(= ((derive (λ (x) (* 2 x x x)) 1e-6) 2) 24.000012004421478)
```

### ⭐ Task 4

**Description:**

Define the procedure *derive-n f n eps* that returns the $n^{th}$ order derivative of an unary procedure *f* with precision *eps*.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
(= ((derive-n (λ (x) (* 2 x x x)) 3 1e-3) 2) 12.000015203739167)
```

### ⭐ Task 5

**Description:**

Define the procedures *derive-x f eps* and *derive-y f eps* that correspondingly return the first order derivative of a binary procedure *f* with precision *eps*.

Recap:

![Alt text](assets/partial-x.png?raw=true "First Derivative X")
![Alt text](assets/partial-y.png?raw=true "First Derivative Y")

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
(define (g x y) (+ (* x x x) (* x y) (* y y)))
(= ((derive-x g 0.0001) 2 3) 15.000600010033338)
(= ((derive-y g 0.0001) 2 3) 8.00009999998963)
```

### 🌟 Task 6

**Description:**

Define a higher order procedure *repeater str* that accepts a string and returns a linearly recursive procedure of two arguments - *count* (number) and *glue* (string). The result from a call to the result of *repeater* should be a string that is *str* repeated *count* times with *glue* being put between every two *str* instances.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
(equal? ((repeater "I love Racket") 3 " ") "I love Racket I love Racket I love Racket")
(equal? ((repeater "Quack") 5 "!") "Quack!Quack!Quack!Quack!Quack")
```

### 🌟 Task 7

**Description:**

Define the recursive version of the `accumulate` procedure we defined in class (`Task 6`).

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
; 1 + 2 + 3 + ... + 100
(= (accumulate-rec + 0 1 100 identity add1) 5050)

; 1 - (2 - (3 - (4 - 5)))
(= (accumulate-rec - 0 1 5 identity add1) 3)

; 1 * 2 * 3 * ... * 10
(= (accumulate-rec * 1 1 10 identity add1) 3628800)

; 1 * 3 * 5 * ... * 10
(= (accumulate-rec * 1 1 15 identity (curry + 2)) 2027025)

; 1^2 + 3^2 + 5^2 + ... + 100^2
(= (accumulate-rec + 0 1 100 (λ (x) (expt x 2)) add1) 338350)
```

### 🌟 Task 8

**Description:**

Using `accumulate` define a procedure that:

- for a given `n` (assume `n > 2`) calculates the expression `2^3 + 5^3 + 8^3 + ... + n^3`;
- checks whether a number in an interval passes a predicate `p?`;
- calculates the factorial of a number;
- checks whether a number is prime.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
(equal? (any? 1001 1500 (λ (x) (< x 1000))) #f)
(equal? (any? 1 100 odd?) #t)

(= (cubed-interval-till 11) 1976)
(= (cubed-interval-till 15) 4720)

(= (fact-accum 5) 120)
(= (fact-accum 8) 40320)

(equal? (prime-accum? 1) #f)
(equal? (prime-accum? 2) #t)
(equal? (prime-accum? 3) #t)
(equal? (prime-accum? 6) #f)
(equal? (prime-accum? 42) #f)
(equal? (prime-accum? 61) #t)
```
