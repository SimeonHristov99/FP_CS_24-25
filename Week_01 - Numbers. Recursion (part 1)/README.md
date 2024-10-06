# 🎯 Goals for week 1

1. Understand the syntax.
2. Understand the difference between the two types of recursive processes.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1 - Hello, `Racket`

**Description:**

Write the "Hello, world" procedure.

**Acceptance criteria:**

1. The text "Hello, world" is printed on the console.

## ⭐ Task 2 - Arithmetic operations

**Description:**

Define the following procedures:

- `min-if`, `min-guard`, `min-built-in`: return the smaller of two numbers;
- `last-digit`: returns the last digit of a number;
- `quotient-whole`: returns the quotient of the division of two numbers;
- `div-whole`: returns the quotient and remainder of the division of two numbers;
- `remove-last-digit`: returns a whole number without its last digit;
- `avg-whole`: returns the average of two whole numbers;
- `round-two-dig`: return the number rounded to the second digit after the decimal point.

**Acceptance criteria:**

1. All tests pass.
2. `min-if` uses an if-else statement.
3. `min-guard` uses guards.
4. `min-built-in` uses built-in functions.

**Test cases:**

```scheme
(= (min-if -60 -15) -60)
(= (min-if 15 60) 15)
(= (min-if 60 15) 15)

(= (min-guard 15 60) 15)
(= (min-guard 60 15) 15)

(= (min-built-in 5 6) 5)

(= (last-digit 154) 4)

(= (quotient-whole 64 2) 32)

(div-whole 154 17) ; 9 1/17

(= (remove-last-digit 154) 15)

(= (average-whole 5 1542) 773.5)

(= (round-two-dig pi) 3.14)
```

## 🌟 Task 3 - Factorial

**Description:**

Define two functions - `fact-rec` and `fact-iter`, that return the factorial of a `non-negative` number.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
3. `fact-rec` creates a linearly recursive process.
4. `fact-iter` creates a linearly iterative process.

**Test cases:**

```scheme
(= (fact-rec 0) 1)
(= (fact-rec 1) 1)
(= (fact-rec 11) 39916800)

(= (fact-iter 0) 1)
(= (fact-iter 1) 1)
(= (fact-iter 11) 39916800)
```

## 💫 Task 4 - Fibonacci

**Description:**

The first few numbers of the Fibonacci sequence are: `0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ...` and so on.
Define two functions `fib-rec` and `fib-iter` that return the number at the $i^{th}$ index.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
3. `fib-rec` creates a linearly recursive process.
4. `fib-iter` creates a linearly iterative process.
5. Demonstrate the difference in execution time between iterative and recursive processes.

**Test cases:**

```scheme
(= (fib-rec 11) 89)
(= (fib-iter 11) 89)
```

## ⭐ Task 5 - Working with booleans

**Description:**

Define the following functions:

- `not-equal-one-line?`, `not-equal-guards?`: return whether two floating point numbers are different from each other;
- `inside?`: returns whether a whole number `x` is between two whole numbers - `start` and `finish`.

**Acceptance criteria:**

1. All tests pass.
2. `not-equal-one-line?` is defined on a single line.
3. `not-equal-one-line?` is defined **without** the use of `if-else`.
4. `not-equal-guards?` is defined using guards.
5. `inside?` is defined on a single line.
6. `inside?` is defined **without** the use of `if-else`.

**Test cases:**

```scheme
(equal? (not-equal-one-line? 5 2) #t)
(equal? (not-equal-one-line? 5 5) #f)

(equal? (not-equal-guards? 5 2) #t)
(equal? (not-equal-guards? 5 5) #f)

(equal? (inside? 1 5 4) #t) ; start = 1, finish = 5, x = 4
(equal? (inside? 5 1 4) #t)
(equal? (inside? 10 50 20) #t)
(equal? (inside? 10 50 1) #f)
```

## For home

### 📢 Advice

The tasks have the sole purpose of helping you understand the material better and faster. Therefore:

1. Avoid using external tools or help for solving the tasks.
2. Drop us an email with your question/problem when you have difficulties.
3. If you can't solve a task:
   1. Spend at least 30 minutes trying out different ways to achieve what you want - maybe try to break down the task into smaller tasks and create functions that solve them.
   2. Solving a task manually with pen and paper will help you break it down into smaller tasks.
   3. If the above points don't help, it's best to reach out to us, skip this task and continue with the others. This would allow you to continue solving, while you're waiting for feedback from us.
4. If you are struggling a lot with the tasks, don't hesitate to ask us for a `1-1 session` in-person or via Google Meet 😇!

### 🌟 Task 1

**Description:**

Watch [this](https://www.youtube.com/watch?v=HlgG395PQWw) YouTube video and answer the following questions:

1. What are closures?
2. What makes closures special?
3. What are higher order functions?
4. What are examples of higher order functions?
5. What are pure functions?
6. What is immutability?
7. What is currying?
8. What are the three core values of being purely functional?

**Acceptance criteria:**

1. Answers are written in `Bulgarian`.
2. An answer is given to every question.
3. Answers are present in the body of the email and not in a `.docx` or `.txt` file.

> **Note**: Do not worry if you cannot recall some of the information. Do your best and we will help you with the rest 😇!

### ⭐ Task 2

**Description:**

Define two functions - `even-if?` and `even-guards?`, that check whether a whole number is even.

**Acceptance criteria:**

1. Add one new test case for each of the functions. Place a comment after it with the words `my test`.
2. All tests pass.
3. `even-if?` uses an `if-else` statement.
4. `even-guards?` uses guards.

**Test cases:**

Define two procedures that return whether a number is even:

- using if-else;
- using guards.

Test cases:

```scheme
(equal? (even-if? 2) "Yes")
(equal? (even-if? 15452) "Yes")
(equal? (even-if? 321) "No")

(equal? (even-guards? 2) "Yes")
(equal? (even-guards? 15452) "Yes")
(equal? (even-guards? 321) "No")
```

### ⭐ Task 3

**Description:**

Define two functions - `sum-cubes-pow` and `sum-cubes-no-pow`, that return the sum of the cubes of two whole numbers.

**Acceptance criteria:**

1. Add one new test case for each of the functions. Place a comment after it with the words `my test`.
2. All tests pass.
3. `sum-cubes-pow` is defined using the built-in power procedure.
4. `sum-cubes-no-pow` is defined without using the built-in power procedure.

**Test cases:**

```scheme
(= (sum-cubes-pow 5 1) 126)
(= (sum-cubes-pow 10 50) 126000)

(= (sum-cubes-no-pow 5 1) 126)
(= (sum-cubes-no-pow 10 50) 126000)
```

### ⭐ Task 4

**Description:**

Define a procedure that returns the average of the sum of the squares of two whole numbers.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```scheme
(= (sq-avg 5 0) 12.5)
(= (sq-avg 10 13) 134.5)
```

### 🌟 Task 5

**Description:**

The greatest common divisor (`GCD`) of two or more numbers is the greatest common factor that divides them, exactly. For example, the greatest common factor of `15` and `10` is `5`, since both the numbers can be divided by `5` and there is no number larger than `5` that divides `15` and `10`, thus `GCD(15, 10) = 5`.

One way to find the greatest common divisor between two numbers - `x` and `y` is by using `The Euclidean Algorithm`.

```text
The Euclidean Algorithm for finding GCD(x,y) is as follows:
If x = 0 then GCD(x,y)=y.
If y = 0 then GCD(x,y)=x.
Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).
```

Define a procedure for calculating the `GCD` of two whole numbers.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Normally, you would use the built-in function `gcd`. This is the only time when you should **not** use it.
4. Guards are used for the implementation.

**Test cases:**

```scheme
(= (my-gcd 5 13) 1)
(= (my-gcd 13 1235) 13)
```

### ⭐ Task 6

**Description:**

A leap year is a calendar year that contains an additional day compared to a common year. The 366th day is added to keep the calendar year synchronized with the astronomical year or seasonal year.

There are two mathematically equivalent methods for checking whether a year is a leap year.

```text
Method I: A year is leap year if it is a multiple of 400 or it is a multiple of 4 but not of 100.

Method II:
    if year is divisible by 400 then is_leap_year
    else if year is divisible by 100 then not_leap_year
    else if year is divisible by 4 then is_leap_year
    else not_leap_year 
```

Define two predicates - `leap-year-one-line?` and `leap-year-guards?`, that check whether a year is a leap year.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is performed only in `leap-year-guards?`.
4. Parameter validation is not performed in `leap-year-one-line?`.
5. `leap-year-one-line?` implements `Method I`.
6. `leap-year-one-line?` uses boolean logical operators.
7. `leap-year-one-line?` does not return `#t` or `#f` explicitly.
8. `leap-year-guards?` uses guards.

**Test cases:**

```scheme
(equal? (leap-year-one-line? 2020) #t)
(equal? (leap-year-one-line? 1988) #t)
(equal? (leap-year-one-line? 1600) #t)
(equal? (leap-year-one-line? 2400) #t)
(equal? (leap-year-one-line? 2023) #f)
(equal? (leap-year-one-line? 1700) #f)
(equal? (leap-year-one-line? 1800) #f)
(equal? (leap-year-one-line? 2100) #f)

(equal? (leap-year-guards? 2020) #t)
(equal? (leap-year-guards? 1988) #t)
(equal? (leap-year-guards? 1600) #t)
(equal? (leap-year-guards? 2400) #t)
(equal? (leap-year-guards? 2023) #f)
(equal? (leap-year-guards? 1700) #f)
(equal? (leap-year-guards? 1800) #f)
(equal? (leap-year-guards? 2100) #f)
```

### ⭐ Task 7

**Description:**

John has a backpack. With it he can carry `k` kilograms. An item from the supermarket weighs `w` kilograms. Define a procedure that accepts three numbers - `c` (number of products), `k` and `w` and returns whether John is capable of buying all the products in one trip to the supermarket.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Guards are used.
4. Parameter validation is performed.
5. The parameters are named in accordance with the names given in the description.

**Test cases:**

```scheme
(equal? (can-carry? 5 15 3) #t)
(equal? (can-carry? 1 5 4) #t)
(equal? (can-carry? 13 25 2) #f)
(equal? (can-carry? 24 104.44 21.12) #f)
(equal? (can-carry? 51 34.75 19.852) #f)
(equal? (can-carry? 42 95.11 0.51) #t)
```

### 🌟 Task 8

**Description:**

Each **day** a plant is growing by *up-speed* meters. Each **night** that plant's height decreases by *down-speed* meters due to the lack of sunlight. Initially, plant is `0` meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The parameters are named in accordance with the names given in the fourth test case.

**Test cases:**

```scheme
(= (growing-plant 5 2 5) 1)
(= (growing-plant 5 2 6) 2)
(= (growing-plant 10 9 4) 1)
(= (growing-plant 100 10 910) 10) ; up-speed=100, down-speed=10, desired-height=910
```

Explanations:

- for `up-speed = 10`, `down-speed = 9` and `desired-height = 4`, the output should be `1`.

```text
Because the plant reaches the desired height at day 1 (10 meters).
After day 1 --> 10
```

- for `up-speed = 100`, `down-speed = 10` and `desired-height = 910`, the output should be `10`.

```text
After day 1   --> 100
After night 1 --> 90
After day 2   --> 190
After night 2 --> 180
After day 3   --> 280
After night 3 --> 270
After day 4   --> 370
After night 4 --> 360
After day 5   --> 460
After night 5 --> 450
After day 6   --> 550
After night 6 --> 540
After day 7   --> 640
After night 7 --> 630
After day 8   --> 730
After night 8 --> 720
After day 9   --> 820
After night 9 --> 810
After day 10  --> 910
```

### 🌟 Task 9

**Description:**

A snail crawls up a column. During the day it crawls up some distance. During the night it sleeps, so it slides down for some distance (less than it crawls up during the day).

Your function accepts three parameters:

- The height of the column (meters);
- The distance that the snail crawls during the day (meters);
- The distance that the snail slides down during the night (meters).

Calculate the number of days the snail will need to reach the top of the column.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```scheme
(= (snail 3 2 1) 2)
(= (snail 10 3 1) 5)
(= (snail 10 3 2) 8)
(= (snail 100 20 5) 7)
(= (snail 5 10 3) 1)
```

### 💫 Task 10

**Description:**

Define a function that reverses a non-negative number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is performed.
4. The function implements a linearly iterative process.

**Test cases:**

```scheme
(= (rev 1) 1)
(= (rev 123) 321)
(= (rev 987654321) 123456789)
```

## ⭐ Task 11

**Description:**

A number is a palindrome if and only if it is the same number from right to left as well as from left to right. Define a predicate that checks whether a non-negative number is a palindrome.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.

**Test cases:**

```scheme
(equal? (palindrome? 1) #t)
(equal? (palindrome? 6) #t)
(equal? (palindrome? 1010) #f)
(equal? (palindrome? 505) #t)
(equal? (palindrome? 123321) #t)
(equal? (palindrome? 654) #f)
(equal? (palindrome? 121) #t)
(equal? (palindrome? 12) #f)
(equal? (palindrome? 120) #f)
(equal? (palindrome? 12321) #t)
(equal? (palindrome? 1221) #t)
```

## Task 12

**Description:**

Define a linearly recursive function for calculating the sum of the digits of a whole number. Assume correct input.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
(= (sum-digits-rec 123) 6)
(= (sum-digits-rec 12345) 15)
```
