# 🎯 Goals for week 6

1. Prepare for the exam this week.
2. Work with matrices (task 4).
3. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## Something different today

Today we'll solve the tasks in groups. How would this work?

1. Split in groups of at least `2`.
2. Start solving the tasks on `1` computer.
3. When you are done with one task, call me for feedback. One of you will have to explain the solution.
4. Only then move on to the next task.
5. Iterate. Whichever team is done with all tasks is free to leave the class.
6. Solutions will be uploaded `5` minutes before the end of the session.

## 🌟 Task 1

**Description:**

Define a procedure that accepts a list of nested lists and returns a list containing only one level with all the elements from all lists.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(equal? (my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))
(equal? (my-flatten '(422 22 ((((11))) 33) (131 31 121 12121 11 (12555 555)))) '(422 22 11 33 131 31 121 12121 11 12555 555))
```

## 💫 Task 2

**Description:**

The depth of an atom *x* in a list *xs* is the number of times *car* must be applied to *xs* in order to reach *x*. Define a procedure that removes all atoms that are smaller than their depth.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
; can reach "1" by applying "car" one time and "2" can be reached with "caadr".
(equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))
(equal? (deep-delete '(3 ((1)) 1 ((((3)) 2) 42) 3 (6) 1 0 (3 1 (((9))) 0))) '(3 (()) 1 (((())) 42) 3 (6) 1 (3 (((9))))))
```

## ⭐ Task 3

**Description:**

Define a procedure that accepts a list of pairs and an unary function *f* and returns whether all points are part of the graph of the function.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(equal? (graph-contains-points '((1 . 2) (2 . 3) (3 . 4)) add1) #t)
(equal? (graph-contains-points '((1 . 2) (2 . 4) (3 . 4)) add1) #f)
(equal? (graph-contains-points '((1 . "11") (2 . "21") (3 . "31")) (λ (x) (string-append (number->string x) "1"))) #t)
```

## 🌟 Task 4

**Description:**

Define a procedure that takes a matrix *xss*, and returns a modified version of it *modified-xss* in which if a row in *xss* has a zero then the whole row in *modified-xss* contains only zeros.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```lisp
(equal? (zero-rows '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 0 0) (3 4 1) (0 0 0) (4 2 4)))
(equal? (zero-rows '((2 1 2 4) (0 2 0 1) (4 4 1 4) (4 1 3 1))) '((2 1 2 4) (0 0 0 0) (4 4 1 4) (4 1 3 1)))
```

## 💫 Tasks 5, 6, 7, 8

Open and solve `exam1_22_23.pdf`.

## 💫 For Home

Solve the remainder of `exam1_22_23.pdf`.
