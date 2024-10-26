# 🎯 Goals for week 5

1. Practice working with `associative lists`.
2. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1

**Description:**

Define a procedure that returns the value of a given key from an associative list.

**Acceptance criteria:**

1. All tests pass.
2. `assoc-hop` is defined via a `let` expression.

**Test cases:**

```lisp
; using a recursive process
(equal? (assoc-rec 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")

; using a higher order procedure
(equal? (assoc-hop 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
(equal? (assoc-hop 42 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) #f)

; using a built-in procedure
(equal? (assoc-builtin 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")
```

## ⭐ Task 2

**Description:**

Define a procedure *(replace xs dict)* that replaces any of the data in the list *xs* that has corresponding values in the dictionary *dict*.

**Acceptance criteria:**

1. All tests pass.

**Test case:**

```lisp
(equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))
```

## ⭐ Task 3

**Description:**

Define a procedure *(get-sublist start-idx end-idx xs)* that returns the sublist in a given index range.

**Acceptance criteria:**

1. All tests pass.

**Test case:**

```lisp
(equal? (get-sublist 2 6 '(1 2 2 3 1 5 6 7 7)) '(2 3 1 5 6))
```

## ⭐ Task 4

**Description:**

Define a procedure that counts how many times a list is present in another list.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(= (count-occurrences '(6 6) '(2 2)) 0)
(= (count-occurrences '(1 5) '(1 5 2 3 1 5 6 7 7 1 5)) 3)
(= (count-occurrences '(5 5) '(5 5 5 3 1 5 6 7 5 5 5)) 4)
```

## 🌟 Task 5

**Description:**

Define a higher order procedure that accepts a list - *xs*, and returns an unary procedure that takes a predicate - *p?*, and checks whether *xs* is sorted according to *p?*.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
; with freedom to solve however you like it
(equal? ((ordered '(1 2 3 5)) (λ (x y) (< x y))) #t)
(equal? ((ordered '(1 8 29 92)) (λ (x y) (= y (+ (* x 3) 5)))) #t)
(equal? ((ordered '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5)))) #f)

; using a linearly recursive process without returning explicitly #t and/or #f
(equal? ((ordered-no-expl-booleans '(1 2 3 5)) (λ (x y) (< x y))) #t)
(equal? ((ordered-no-expl-booleans '(1 8 29 92)) (λ (x y) (= y (+ (* x 3) 5)))) #t)
(equal? ((ordered-no-expl-booleans '(1 8 3 14)) (λ (x y) (= y (+ (* x 3) 5)))) #f)
```

## 💫 Next tasks

Start solving  `exam1_23_24.pdf`.

## For home

### 💫 Task 1

**Description:**

Define a procedure `longest-ascending-sub xs` that returns the longest sublist (sequence of **consecutive** elements) that is sorted in ascending order from `xs`.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(equal? (longest-ascending-sub '(1 0 5)) '(0 5))
(equal? (longest-ascending-sub '(1 5 2 3 1 5 6 7 7 1 5)) '(1 5 6 7 7))
(equal? (longest-ascending-sub '(1 5 2 3 1 5 2 7 7 15)) '(2 7 7 15))
(equal? (longest-ascending-sub '(1 5 2 3 4 5 6 7 7 1 5)) '(2 3 4 5 6 7 7))
(equal? (longest-ascending-sub '(1 5 2 4 6 8 3 4 1)) '(2 4 6 8))
```

### 🌟 Task 2

**Description:**

Define a procedure that accepts a list of numbers and a list of predicates and returns only the elements that satisfy all of the predicates.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(equal? (where '(3 4 5 6 7 8 9 10) (list even? (lambda (x) (> x 5)))) '(6 8 10)) ; all even numbers greater than 5
(equal? (where '(3 4 5 7) (list even? (lambda (x) (> x 5)))) '()) ; no numbers are even and greater than 5
(equal? (where '() (list odd? (λ (x) (> x 3)) (λ (x) (< x 20)))) '())
(equal? (where '(1 2 3 4 5 6 7 8 9 10 11 13 15) (list odd? (λ (x) (> x 3)) (λ (x) (< x 20)))) '(5 7 9 11 13 15))
```

### 🌟 Task 3

**Description:**

Define a procedure that takes a list of numbers and returns a list of pairs in the form (*x<sub>i</sub>* . *n<sub>i</sub>*) where *x<sub>i</sub>* spans the elements of *xs* and *n<sub>i</sub>* is the number of elements in *xs* that are greater than *x<sub>i</sub>*.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(equal? (num-bigger-elements '(5 6 3 4)) '((5 . 1) (6 . 0) (3 . 3) (4 . 2)))
(equal? (num-bigger-elements '(1 1 1)) '((1 . 0) (1 . 0) (1 . 0)))
```

### ⭐ Task 4

**Description:**

Define a procedure that returns a list of pairs comprising the cartesian product of two sets.

> **Note**: There is a built-in procedure `(cartesian-product xs ys [zs ...])`. This exercise is the only time you should **not** use it.

**Acceptance criteria:**

1. All tests pass.
2. The built-in procedure is not used.

**Test cases:**

```lisp
(equal? (my-cartesian-product '(1 2) '(3 4)) '((1 . 3) (1 . 4) (2 . 3) (2 . 4)))
(equal? (my-cartesian-product '(1 2 3 4 5) '(6 7 8)) '((1 . 6) (1 . 7) (1 . 8) (2 . 6) (2 . 7) (2 . 8) (3 . 6) (3 . 7) (3 . 8) (4 . 6) (4 . 7) (4 . 8) (5 . 6) (5 . 7) (5 . 8)))
```

## 💫 Tasks 5, 6, 7, 8

Solve the remaining tasks in `exam1_23_24.pdf`. Submit the solutions to all four tasks, regardless of whichever you solved in class.
