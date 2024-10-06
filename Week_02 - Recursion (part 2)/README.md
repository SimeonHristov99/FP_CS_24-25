# 🎯 Goals for week 2

1. Practice writing the two types of recursive processes.
2. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1

**Description:**

Define a recursive and an iterative procedure for calculating `x` to the power of `n`.

**Acceptance criteria:**

1. All tests pass.
2. `pow-rec` is a linearly recursive procedure.
3. `pow-iter` is a linearly iterative procedure.

**Test cases:**

```scheme
(= (pow-rec 2 5) 32)
(= (pow-rec 15 3) 3375)

(= (pow-iter 2 5) 32)
(= (pow-iter 15 3) 3375)
```

## 🌟 Task 2

**Description:**

A number is prime if and only if it is natural, greater than `1` and its only divisors are `1` and itself. Define a predicate that checks whether a number is prime.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.

**Test cases:**

```scheme
(equal? (num-prime? 1) #f)
(equal? (num-prime? 2) #t)
(equal? (num-prime? 3) #t)
(equal? (num-prime? 6) #f)
(equal? (num-prime? 42) #f)
(equal? (num-prime? 61) #t)
```

## 🌟 Task 3

**Description:**

Define a procedure that returns the sum of all the divisors of a number. For negative numbers return `0`.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```scheme
(= (sum-divs 0) 0)
(= (sum-divs 1) 1)
(= (sum-divs 6) 12) ; 1 + 2 + 3 + 6
(= (sum-divs -6) 0)
(= (sum-divs 12345) 19776)
```

## ⭐ Task 4

**Description:**

A number is perfect if and only if it is natural and equal to the sum of its divisors, excluding the number itself. Define a predicate that checks whether a number is perfect. Assume correct input.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```scheme
(equal? (perfect? 6) #t)
(equal? (perfect? 33550336) #t)
(equal? (perfect? 495) #f)
(equal? (perfect? 1) #f)
```

## 🌟 Task 5

**Description:**

Define a predicate `(inc-digits? n)` that checks whether the digits of the non-negative `n` are ordered in an ascending order.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```scheme
(equal? (inc-digits? 1244) #t)
(equal? (inc-digits? 12443) #f)
```

## 🌟 Task 6

**Description:**

A narcissistic number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. Define a predicate that checks whether a given number is a narcissistic number.

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

**Test cases:**

```scheme
(equal? (narcissistic? 7) #t)
(equal? (narcissistic? 12) #f)
(equal? (narcissistic? 153) #t)
(equal? (narcissistic? 370) #t)
(equal? (narcissistic? 371) #t)
(equal? (narcissistic? 1634) #t)
```

## 🌟 Task 7

**Description:**

Define a procedure that finds the maximum digit in a number.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```scheme
(= (find-max 55345) 5)
(= (find-max 14752) 7)
(= (find-max 329450) 9)
(= (find-max 9521) 9)
```

## 💫 Task 8

**Description:**

Define the procedure that accepts a whole number - $n$, and a real number (representing radians) - $x$, and returns the $n^{th}$ partial sum of $sin(x)$.

Here's the formula for calculating $sin(x)$ around the origin:

![Alt text](./assets/sine.png?raw=true "Task5")

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```scheme
(= (my-sin 100 1.570796) 0.9999999999999465) ; 90 degrees => 0.9999999999999465
(= (my-sin 100 0.5235988) 0.5000000211324931) ; 30 degrees => 0.5000000211324931
```

## For home

### ⭐ Task 1

**Description:**

Define a recursive and an iterative procedure for calculating the number of digits of a non-negative number.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. `count-digits-iter` is a linearly iterative procedure.
4. `count-digits-rec` is a linearly recursive procedure.
5. Parameter validation is performed for both procedures.

**Test cases:**

```scheme
(= (count-digits-iter 12345) 5)
(= (count-digits-iter 123) 3)

(= (count-digits-rec 12345) 5)
(= (count-digits-rec 123) 3)
```

### ⭐ Task 2

**Description:**

Define a linearly iterative procedure for calculating the sum of the digits of a non-negative number.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. Parameter validation is performed.
4. A linearly iterative procedure is implemented.

**Test cases:**

```scheme
(= (sum-digits-iter 12345) 15)
(= (sum-digits-iter 123) 6)
```

### 🌟 Task 3

**Description:**

Define a recursive procedure that returns the sum of all prime divisors of a given number.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (sum-prime-divs-rec 0) 0)
(= (sum-prime-divs-rec 6) 5) ; 2 + 3
(= (sum-prime-divs-rec 18) 5) ; 2 + 3
(= (sum-prime-divs-rec 19) 19)
(= (sum-prime-divs-rec 45136) 53)
```

### 🌟 Task 4

**Description:**

Define a recursive and an iterative procedure that returns the number of palindromes in the interval `[a, b]`.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. `num-palindromes-rec` is a linearly recursive procedure.
4. `num-palindromes-iter` is a linearly iterative procedure.

**Test cases:**

```scheme
(= (num-palindromes-rec 1 101) 19)
(= (num-palindromes-rec 1 100) 18)
(= (num-palindromes-rec 100 1) 18)

(= (num-palindromes-iter 1 101) 19)
(= (num-palindromes-iter 1 100) 18)
(= (num-palindromes-iter 100 1) 18)
```

### ⭐ Task 5

**Description:**

Two numbers are amicable if the sum of the divisors of one of them is equal to the other. Define a predicate that checks whether two numbers are amicable.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(equal? (amicable? 200 300) #f)
(equal? (amicable? 220 284) #t)
(equal? (amicable? 284 220) #t)
(equal? (amicable? 1184 1210) #t)
(equal? (amicable? 2620 2924) #t)
(equal? (amicable? 6232 6368) #t)
```

### 🌟 Task 6

**Description:**

Define a procedure `sum-special-primes n d` that returns the sum of the first `n` prime numbers that contain the digit `d`.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (sum-special-primes 5 2) 392)
(= (sum-special-primes 5 3) 107)
(= (sum-special-primes 10 3) 462)
```

### 🌟 Task 7

**Description:**

Define a procedure that returns the number of occurrences of a digit in a non-negative number.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (count-occurrences 121 1) 2)
(= (count-occurrences 222 1) 0)
(= (count-occurrences 100 0) 2)
(= (count-occurrences 0 0) 1)
```

### ⭐ Task 8

**Description:**

A number is interesting if and only if it is evenly divided by the sum of its digits. Define a predicate that checks whether a number is interesting.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(equal? (interesting? 410) #t)
(equal? (interesting? 212) #f)
(equal? (interesting? 567) #f)
(equal? (interesting? 70) #t)
(equal? (interesting? 5) #t)
(equal? (interesting? 4) #t)
```

### ⭐ Task 9

**Description:**

Given a divisor `d` and a bound `b`, find the **largest** integer `N`, such that:

```text
N is divisible by d
and N is less than or equal to b
and N is greater than 0.
```

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (max-multiple 2 7) 6)
(= (max-multiple 3 10) 9)
(= (max-multiple 7 17) 14)
(= (max-multiple 10 50) 50)
(= (max-multiple 37 200) 185)
(= (max-multiple 7 100) 98)
```

### 🌟 Task 10

**Description:**

Define a predicate that accepts a natural number `n` and returns whether $n^2$ ends in the digits of `n`.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. Parameter validation is performed.

**Test cases:**

```scheme
(equal? (automorphic? 3)#f)
(equal? (automorphic? 10)#f)
(equal? (automorphic? 5)#t)
(equal? (automorphic? 25)#t)
(equal? (automorphic? 76)#t) 
(equal? (automorphic? 890625)#t) 
(equal? (automorphic? 625)#t) 
(equal? (automorphic? 36) #f)
(equal? (automorphic? 11) #f)
```

### 💫 Task 11

**Description:**

A cubic prime number is a prime number that is the difference between two subsequent natural numbers. For example, $61$ is such a number because $61 = 5^3 - 4^3$. Define a procedure that returns the $n^{th}$ cubic prime number.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. Parameter validation is performed.

**Test cases:**

```scheme
(= (nth-cubic 1) 7)
(= (nth-cubic 4) 61) ; 61 is the 4th cubic prime number
(= (nth-cubic 50) 55897) ; 55897 is the 50th cubic prime number
(= (nth-cubic 100) 283669)
(= (nth-cubic 200) 1570357)
```

### 💫 Task 12

**Description:**

Write a procedure that accepts three whole numbers - `a`, `b` and `n` (assume `n > 3`) and returns the **sum** of the **last three** numbers from the following sequence.

![Alt text](./assets/seq.png?raw=true "seq")

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (find-sum 0 2 10) 3578) ; 510 + 1022 + 2046
(= (find-sum 5 3 5) 174) ; 26 + 50 + 98
```

**Explanations:**

In the first example a = 0, b = 2, n = 10. The resulting sequence is therefore s0, s1, s2, ...

- s0 = 0 + 1x2 = 2
- s1 = 0 + 1x2 + 2x2 = 6
- s2 = 0 + 1x2 + 2x2 + 4x2 = 14 and so on.

In the second example a = 5, b = 3, n = 5. The resulting sequence is therefore s0, s1, s2, ...

- s0 = 5 + 1x3 = 8
- s1 = 5 + 1x3 + 2x3 = 14
- s2 = 5 + 1x3 + 2x3 + 4x3 = 26 and so on.

### ⭐ Task 13

**Description:**

Define an iterative procedure that accepts two numbers *x* and *n* and calculates the following sum: $1 + x + x^2 + x^3 + \ldots + x^n$.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. `calculate-sum` is a linearly iterative procedure.

**Test cases:**

```scheme
(= (calculate-sum 5 0) 1)
(= (calculate-sum 5 1) 6)
(= (calculate-sum 10 1) 11)
(= (calculate-sum 1 11) 12)
(= (calculate-sum 2 11) 4095)
```

### 🌟 Task 14

**Description:**

Define a recursive procedure that takes two arguments - *start* and *finish*, and returns the sum of all numbers in the interval [*start*, *finish*] whose digits are ordered in a decreasing order.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. `sum-numbers` is a linearly recursive procedure.

**Test cases:**

```scheme
(= (sum-numbers 1 9) 45)
(= (sum-numbers 199 203) 200)
(= (sum-numbers 219 225) 663)
(= (sum-numbers 225 219) 663)
```

### 🌟 Task 15

**Description:**

Define a predicate that accepts two non-negative inputs - *x* and *y*, and checks whether *x* is a sub-number of *y*.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(equal? (sub-num? 123 5123783) #t)
(equal? (sub-num? 0 0) #t)
(equal? (sub-num? 10 101) #t)
(equal? (sub-num? 101 101) #t)
(equal? (sub-num? 10 0) #f)
(equal? (sub-num? 1253 5123783) #f)
(equal? (sub-num? 12 0) #f)
```

### 💫 Task 16

**Description:**

A digital root is the recursive sum of all the digits in a number. Given *n*, take the sum of the digits of *n*. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (digital-root 16) 7)
; => 1 + 6
; => 7
(= (digital-root 942) 6)
; => 9 + 4 + 2
; => 15
; => 1 + 5
; => 6
(= (digital-root 132189) 6)
(= (digital-root 493193) 2)
```

### 💫 Task 17

**Description:**

Define a procedure that removes the first occurrence of a digit in a number by going from right to left.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (remove-first-occurrence 15365 5) 1536)
(= (remove-first-occurrence 15360 0) 1536)
(= (remove-first-occurrence 15300 0) 1530)
(= (remove-first-occurrence 15365 1) 5365)
(= (remove-first-occurrence 35365 3) 3565)
(= (remove-first-occurrence 1212 1) 122)
(= (remove-first-occurrence 1212 2) 121)
(= (remove-first-occurrence (remove-first-occurrence 1212 1) 1) 22)
```

### 💫 Task 18

**Description:**

By using *find-max* and *remove-first-occurrence*, define a procedure that sorts a number in descending order.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (sort-n 1714) 7411)
(= (sort-n 123450) 543210)
(= (sort-n 123405) 543210)
(= (sort-n 123045) 543210)
(= (sort-n 120345) 543210)
(= (sort-n 102345) 543210)
(= (sort-n 8910) 9810)
(= (sort-n 321) 321)
(= (sort-n 29210) 92210)
(= (sort-n 1230) 3210)
(= (sort-n 55345) 55543)
(= (sort-n 14752) 75421)
(= (sort-n 329450) 954320)
(= (sort-n 9125) 9521)
```

### 💫 Task 19

**Description:**

Define a procedure that accepts two numbers - $x$ and $n$, and calculates the $n^{th}$ partial sum from the following sequence:

![Alt text](./assets/sequence.png?raw=true "sequence")

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(calc-series-sum 1 0) ; -2
(calc-series-sum 1 1) ; -2/3
(calc-series-sum 1 2) ; -1 1/5
(calc-series-sum 1 3) ; -1 1/21
(calc-series-sum 1 4) ; -1 11/135
(calc-series-sum 1 5) ; -1 29/385
(calc-series-sum 1 6) ; -1 937/12285
```

### ⭐ Task 20

**Description:**

Define a recursive procedure *(sum-divisible-numbers start finish k)* that returns the sum of all numbers from the interval [*start*, *finish*] whose digits sum up to a number that is evenly divisible by *k*.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.

**Test cases:**

```scheme
(= (sum-divisible-numbers 0 10 5) 5)
(= (sum-divisible-numbers 0 100 5) 990)
(= (sum-divisible-numbers 100 0 5) 990)
```

### 🌟 Task 21

**Description:**

A number - *x*, is a pentagonal number if we can plot *x* poits in the form of a pentagon on a plain.

For example:

![Alt text](./assets/pentagon.png?raw=true "pentagon")

Define an iterative procedure that accepts a natural number - *n*, and returns the *n*-th pentagonal number.

**Acceptance criteria:**

1. All tests pass.
2. Add one new test case. Place a comment after it with the words `my test`.
3. `p` is a linearly iterative procedure.

**Test cases:**

```scheme
(= (p 1) 1)
(= (p 2) 5)
(= (p 3) 12)
(= (p 4) 22)
(= (p 5) 35)
(= (p 6) 51)
```
