# 🎯 Goals for week 7

1. Get familiar with the syntax and semantics of Haskell.
2. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1

**Description:**

Write and explain the `Hello, world!` function.

**Acceptance criteria:**

1. `Hello, world!` is printed on the console.

## 🌟 Task 2 - Arithmetic operations

**Description:**

Define the following functions:

- `minIf`, `minGuard`, `minBuiltIn`: return the smaller of two whole numbers;
- `lastDigit`: returns the last digit of a number;
- `quotientWhole`: returns the quotient of the division of two whole numbers;
- `divWhole`: returns the quotient and remainder of the division of two whole numbers;
- `removeLastDigit`: returns a whole number without its last digit;
- `divReal`: returns the quotient and remainder of the division of two real numbers;
- `quotientReal`: returns the quotient of the division of two real numbers;
- `avgWhole`: returns the average of two whole numbers;
- `roundTwoDig`, `roundTwoDigButWithMagic`: return the number rounded to the second digit after the decimal point.

**Acceptance criteria:**

1. All tests pass.
2. Add a test case with a negative number for `minIf`.
3. `minIf` uses an if-else statement.
4. `minGuard` uses guards.
5. `minBuiltIn` uses built-in functions.
6. `roundTwoDigButWithMagic` is defined on a functional level using partial function application.
7. Explain why brackets are not needed when using prefix functions.

**Test cases:**

```haskell
print $ minIf 15 60 == 15
print $ minIf 60 15 == 15

print $ minGuard 15 60 == 15
print $ minGuard 60 15 == 15

print $ minBuiltIn 60 15 == 15

print $ lastDigit 154 == 4

print $ quotientWhole 64 2 == 32

print $ divWhole 154 17 == 9.058823529411764

print $ removeLastDigit 154 == 15    

print $ divReal 154.451 10.01 == 15.42967032967033

print $ quotientReal 154.21 17.17 == 8

print $ avgWhole 5 1542 == 773.5

print $ roundTwoDig 3.1413465345321 == 3.14

print $ roundTwoDigButWithMagic 3.1413465345321 == 3.14 -- partial function application and composition (defining a function on a functional level)
```

## 🌟 Task 3

**Description:**

Define a recursive and an iterative function for calculating the factorial of a non-negative number.

- solve with a linearly recursive process;
- solve using a linearly iterative process.
- solve with lists assuming correct input;

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.

**Test cases:**

```haskell
print $ factRec 11 == 39916800
print $ factIter 11 == 39916800
print $ factXs 11 == 39916800
```

## 💫 Task 4

**Description:**

Define a recursive and an iterative function for calculating the number at index $i$ in the Fibonacci sequence ($0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...$). Assume correct input.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ fibRec 11 == 89

print $ fibIter 11 == 89
print $ fibIter 110 == 43566776258854844738105
```

## ⭐ Task 5

Define a predicate that checks whether a number $x$ is in an interval $[start, end]$.

- solve with boolean expressions;
- solve with lists;
- solve using a lambda.

**Description:**

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ isInsideNoLists 5 1 4 == True -- start, end, x
print $ isInsideNoLists 10 50 20 == True
print $ isInsideNoLists 10 50 1 == False

print $ isInsideLists 5 1 4 == True
print $ isInsideLists 10 50 20 == True
print $ isInsideLists 10 50 1 == False

print $ (isInsideLambda 5 1) 4 == True
print $ (isInsideLambda 10 50) 20 == True
print $ (isInsideLambda 10 50) 1 == False
```

## For home

### ⭐ Task 1

**Description:**

Define a function that returns the average of the sum of the squares of two whole numbers.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The right types are used.

**Test cases:**

```haskell
print $ sqAvg 5 0 == 12.5
print $ sqAvg 10 13 == 134.5
```

### ⭐ Task 2

**Description:**

The greatest common divisor (`GCD`) of two or more numbers is the greatest common factor that divides them, exactly. For example, the greatest common factor of `15` and `10` is `5`, since both the numbers can be divided by `5` and there is no number larger than `5` that divides `15` and `10`, thus `GCD(15, 10) = 5`.

One way to find the greatest common divisor between two numbers - `x` and `y` is by using `The Euclidean Algorithm`.

```text
The Euclidean Algorithm for finding GCD(x,y) is as follows:
If x = 0 then GCD(x,y)=y.
If y = 0 then GCD(x,y)=x.
Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).
```

Define a function for calculating the `GCD` of two whole numbers.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Normally, you would use the built-in function `gcd`. This is the only time when you should **not** use it.
4. Guards are used for the implementation.
5. The right types are used.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The right types are used.

**Test cases:**

```haskell
print $ myGcdG 5 13 == 1
print $ myGcdG 13 1235 == 13

print $ myGcdPM 5 13 == 1
print $ myGcdPM 13 1235 == 13
```

### 🌟 Task 3

**Description:**

Define a predicate that checks whether a non-negative whole number is a palindrome.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The right types are used.
4. `True` and/or `False` are not explicitly returned.

**Test cases:**

```haskell
print $ isPalindrome 6 == True
print $ isPalindrome 1010 == False
print $ isPalindrome 505 == True
print $ isPalindrome 123321 == True
print $ isPalindrome 654 == False
```

### 🌟 Task 4

**Description:**

Two numbers are amicable if the sum of the divisors of one of them is equal to the other. Define a predicate that checks whether two numbers are amicable.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The right types are used.
4. List comprehension is used.
5. `True` and/or `False` are not explicitly returned.

**Test cases:**

```haskell
print $ areAmicable 200 300 == False
print $ areAmicable 220 284 == True
print $ areAmicable 284 220 == True
print $ areAmicable 1184 1210 == True
print $ areAmicable 2620 2924 == True
print $ areAmicable 6232 6368 == True
```

### 🌟 Task 5

**Description:**

Define a predicate that checks whether the digits of a non-negative whole number are ordered in an ascending order.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The right types are used.
4. `True` and/or `False` are not explicitly returned.

**Test cases:**

```haskell
print $ hasIncDigits 1244 == True
print $ hasIncDigits 12443 == False
```

### 🌟 Task 6

**Description:**

Define two predicates - `isPrimeG` and `isPrimeLC`, that check whether a number is prime.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. `isPrimeG` is implemented using guards.
4. `isPrimeLC` is implemented using list comprehension.
5. `isPrimeLC` is implemented on a single line.
6. `True` and/or `False` are not explicitly returned in `isPrimeLC`.

**Test cases:**

```haskell
print $ isPrimeG 1 == False
print $ isPrimeG 2 == True
print $ isPrimeG 3 == True
print $ isPrimeG 6 == False
print $ isPrimeG 61 == True

print $ isPrimeLC 1 == False
print $ isPrimeLC 2 == True
print $ isPrimeLC 3 == True
print $ isPrimeLC 6 == False
print $ isPrimeLC 61 == True
```

### ⭐ Task 7

**Description:**

A number is perfect if and only if it is natural and equal to the sum of its divisors excluding the number itself. Define a predicate that checks whether a number is perfect.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. List comprehension is used.
4. `True` and/or `False` are not explicitly returned.

**Test cases:**

```haskell
print $ isPerfect 1 == False
print $ isPerfect 6 == True
print $ isPerfect 495 == False
print $ isPerfect 33550336 == True
```
