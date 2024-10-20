# 🎯 Goals for week 4

1. Practice working with `lists`.
2. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## 🌟 Task 1

**Description:**

Define a procedure *(sort-list xs)* that accepts a list and returns a lambda procedure that accepts a procedure and sorts the elements in the list according to the passed procedure.

For example, if we wanted to sort the list `'("one" "two" "0" "five" "" "one hundred" "onehundred")` according to the length of each element, the result should be `'("" "0" "one" "two" "five" "onehundred" "one hundred")`.

**Acceptance criteria:**

1. All tests pass.

## ⭐ Task 2

**Description:**

Define a procedure that returns the length of a list.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
; using an iterative procedure
(= (my-length-iter '()) 0)
(= (my-length-iter '(1 2 5 6 4 8)) 6)

; using a recursive procedure
(= (my-length-rec '()) 0)
(= (my-length-rec '(1 2 5 6 4 8)) 6)

; using a predefined procedure
(= (my-length-proc '()) 0)
(= (my-length-proc '(1 2 5 6 4 8)) 6)
```

## ⭐ Task 3

**Description:**

Define a procedure that checks whether an element is present in a list.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
; using a manual check
(equal? (elem-rec-with-mc? 1 '(5 2 1)) #t)
(equal? (elem-rec-with-mc? "str" '()) #f)
(equal? (elem-rec-with-mc? "str" '("str" "len" "pair")) #t)

; without using a manual check
(equal? (elem-rec-without-mc? 1 '(5 2 1)) #t)
(equal? (elem-rec-without-mc? "str" '()) #f)
(equal? (elem-rec-without-mc? "str" '("str" "len" "pair")) #t)

; using a predefined procedure
(equal? (elem-proc? 1 '(5 2 1)) #t)
(equal? (elem-proc? "str" '()) #f)
(equal? (elem-proc? "str" '("str" "len" "pair")) #t)
```

## 🌟 Task 4

**Description:**

Define a procedure that returns the smallest element of a list.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
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
```

## ⭐ Task 5

**Description:**

Define a procedure that removes the first match of an element by going from left to right.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
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
```

## 🌟 Task 6

**Description:**

Define procedures that in linear time transforms a number into a list of its digits and vice versa.

**Acceptance criteria:**

1. All tests pass.
2. The time complexity is linear.

**Test cases:**

```lisp
(equal? (num-to-xs 123) '(1 2 3))
(equal? (num-to-xs 123456789) '(1 2 3 4 5 6 7 8 9))

(= (xs-to-num '(1 2 3)) 123)
(= (xs-to-num '(1 2 3 4 5 6 7 8 9)) 123456789)
```

## For home

### 🌟 Task 1

**Description:**

Define two procedures - `remove-all-no-proc` and `remove-all-proc`, that remove an element from a list.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. `remove-all-no-proc` is defined without using built-in procedures for removing elements from lists.
4. `remove-all-proc` is defined using built-in procedures for removing elements from lists.

**Test cases:**

```lisp
; without using a predefined procedure
(equal? (remove-all-no-proc 1 '(1 1 1 2)) '(2))
(equal? (remove-all-no-proc 1 '(2 5 6)) '(2 5 6))
(equal? (remove-all-no-proc 1 '(1)) '())
(equal? (remove-all-no-proc 1 '(1 2 1 1)) '(2))
(equal? (remove-all-no-proc "RNN" '("CNN" "RNN" "GAN" "RNN")) '("CNN" "GAN"))

; using a predefined procedure
(equal? (remove-all-proc 1 '(1 1 1 2)) '(2))
(equal? (remove-all-proc 1 '(2 5 6)) '(2 5 6))
(equal? (remove-all-proc 1 '(1)) '())
(equal? (remove-all-proc 1 '(1 2 1 1)) '(2))
(equal? (remove-all-proc "RNN" '("CNN" "RNN" "GAN" "RNN")) '("CNN" "GAN"))
```

### ⭐ Task 2

**Description:**

Define a procedure that takes two sets of numbers and returns their union, sorted in ascending order.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The union is sorted in ascending order.

**Test cases:**

```lisp
(equal? (set-union '(1 3 5 7) '(5 7 13)) '(1 3 5 7 13))
(equal? (set-union '(5 7 13) '(1 3 5 7)) '(1 3 5 7 13))
```

### 🌟 Task 3

**Description:**

Define procedures that accept a list of digits and return the number that is build by traversing the list from right to left. Create two versions - `rev-fold` that utilizes folding, and `rev-lin-iter` that creates recursion.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. `rev-fold` uses folding.
4. `rev-lin-iter` uses recursion.

**Test cases:**

```lisp
; using folding
(= (rev-fold '(1 2 3)) 321)
(= (rev-fold '(1 2 3 4 5 6 7 8 9)) 987654321)

; using a linearly iterative procedure
(= (rev-lin-iter '(1 2 3)) 321)
(= (rev-lin-iter '(1 2 3 4 5 6 7 8 9)) 987654321)
```

### 🌟 Task 4

**Description:**

Define a procedure that reverses a list using `foldl`.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. `foldl` is used to solve the task.

**Test cases:**

```lisp
(equal? (my-reverse-foldl '(1 2 3 4 5)) '(5 4 3 2 1))
(equal? (my-reverse-foldl '(11 2 3 8 5)) '(5 8 3 2 11))
```

### ⭐ Task 5

**Description:**

According to the fundamental theorem of arithmentics every natural number greater than `2` can be expressed as a product of prime numbers. Define a procedure that returns the sorted list of prime factors of a natural number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is done.

**Test cases:**

```lisp
(equal? (factorize 2) '(2))
(equal? (factorize 6) '(2 3))
(equal? (factorize 13) '(13))
(equal? (factorize 123) '(3 41))
(equal? (factorize 152) '(2 2 2 19))
(equal? (factorize 12356498) '(2 7 11 19 41 103))
```

### 💫 Task 6

**Description:**

Define a procedure that accepts a list of numbers and returns an unary procedure of a natural number - $k$, such that the result from a call to it (the new procedure) is the $k^{th}$ largest negative number in the list.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is done.

**Test cases:**

```lisp
(= ((kth-max-min '(-1)) 1) -1)
(= ((kth-max-min '(-1 -5 -6 -6 -6 -6)) 2) -5)
(= ((kth-max-min '(-1 -1 -5 -6 -6 -6 -6)) 2) -5)
(= ((kth-max-min '(1 2 3 4 -5 6 7 -2 -1 0)) 2) -2)
((kth-max-min '(-1 0 -1 0 -2 3 1 -1)) 3) ; error: No such number!
```

### 💫 Task 7

**Description:**

Take 2 strings `s1` and `s2` including only letters from `a` to `z`. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from `s1` or `s2`.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
(equal? (longest "xyaabbbccccdefww" "xxxxyyyyabklmopq") "abcdefklmopqwxy")
(equal? (longest "abcdefghijklmnopqrstuvwxyz" "abcdefghijklmnopqrstuvwxyz") "abcdefghijklmnopqrstuvwxyz")
```

### ⭐ Task 8

**Description:**

By using `num-to-xs` and `xs-to-num` define a procedure that sorts a number in descending order.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```lisp
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

### ⭐ Task 9

**Description:**

Define a procedure `(insert-at x i xs)` that inserts an element at a given index in a list.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is done.

**Test cases:**

```lisp
(equal? (insert-at 1 0 '()) '(1))
(equal? (insert-at 1 0 '(2)) '(1 2))
(equal? (insert-at 10 1 '(1 2 3)) '(1 10 2 3))
(equal? (insert-at 1 0 '()) '(1))
(equal? (insert-at 1 0 '(2)) '(1 2))
(equal? (insert-at 10 1 '(1 2 3)) '(1 10 2 3))
(equal? (insert-at 7 0 '(1 2 3)) '(7 1 2 3))
(equal? (insert-at 7 1 '(1 2 3)) '(1 7 2 3))
(equal? (insert-at 7 3 '(1 2 3)) '(1 2 3 7))
```

### ⭐ Task 10

**Description:**

Define two procedures - `concat-proc` and `concat-rec`, that concatenate two lists.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. `concat-proc` uses a predefined procedure.
4. `concat-rec` uses a linearly iterative process.

**Test cases:**

```lisp
; using a predefined procedure
(equal? (concat-proc '(1 2 3) '(4 5 6)) '(1 2 3 4 5 6))

; using a linearly iterative process
(equal? (concat-rec '(1 2 3) '(4 5 6)) '(1 2 3 4 5 6))
```

### ⭐ Task 11

**Description:**

By using recursion define a procedure that implements the `list-ref` procedure we discussed in class.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is done.

**Test cases:**

```lisp
(= (my-list-ref '(1 2 3) 0) 1)
(= (my-list-ref '(1 2 3) 1) 2)
(equal? (my-list-ref '("Hello" 2 ("nested list")) 0) "Hello")
(my-list-ref '(1 2 3) -100) ; error: Invalid index!
```
