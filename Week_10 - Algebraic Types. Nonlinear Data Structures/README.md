# 🎯 Goals for week 10

1. Introduce the concept of **algebraic data types**.
2. Practice working with **graphs**.
3. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## Solving in teams today

As we did last time:

1. Split in teams of at least `2` people.
2. Start solving the tasks on `1` computer.
3. When you are done with one task, call me for feedback. One of you will have to explain the solution.
4. Only then move on to the next task.
5. Iterate. Whichever team is done with all tasks is free to leave the class.
6. Solutions will be uploaded `5` minutes before the end of the session.

## 🌟 Task 1

**Description:**

Given a directed graph *g* with edges `[(1, 2), (1, 3), (2, 3), (2, 4)]` define the following functions:

1. nodes - returns all the nodes of "g";
2. neighbors - accepts a node and returns its neighbors;
3. adjacencyList - returns the children of every parent.

**Acceptance criteria:**

1. All tests pass.
2. Appropriate types are created for the graph structure.

**Test cases:**

```haskell
print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] == [1, 2, 3, 4]

print $ neighbors 2 [(1, 2), (1, 3), (2, 3), (2, 4)] == [3, 4]
print $ neighbors 4 [(1, 2), (1, 3), (2, 3), (2, 4)] == []

print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] == [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]
```

## 🌟 Task 2

**Description:**

Define a function that checks whether a given path is valid in a graph `g = (1, [2, 3]), (2, [3, 4]), (3, []), (4, [])`.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] == True
print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] == False
print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] == True
print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] == False
```

## 🌟 Task 3

**Description:**

Define a new data type called `Shape`. `Shape` must have four constructors:

- `Circle`: with one argument representing the radius;
- `Rectangle`: with two arguments representing the width and height;
- `Triangle`;
- `Cylinder` with two arguments for the radius of the base and height.

Create a shape from every type and output it.

**Acceptance criteria:**

1. `Shape` is a `new` data type in Haskell.
2. Appropriate tests are added that demonstrate what the typeclass `Show` allows.
3. Appropriate tests are added that demonstrate what the typeclass `Eq` allows.
4. Appropriate tests are added that demonstrate what the typeclass `Read` allows.
5. Appropriate tests are added that demonstrate what the typeclass `Ord` allows.

## ⭐ Task 4

**Description:**

Create a new data type called `Point2D` and define a function that accepts two functions: `f` and `g` and a list of points with two coordinates. The function should return those points for which `f(firstCoordinate) = g(secondCoordinate)` and should be able to work with whole as well as floating point numbers!

Define an analogous function - `myImagesFold`, that implements the above logic using folding.

**Acceptance criteria:**

1. All tests pass.
2. `Point2D` is a new data type in Haskell.
3. `myImagesFold` is implemented using folding.

**Test case:**

```haskell
print $ myImages (\x -> x * x) (2+) [Point 2 2, Point 1 2, Point 3 7] == [Point 2 2, Point 3 7]
print $ myImagesFold (\x -> x * x) (2+) [Point 2 2, Point 1 2, Point 3 7] == [Point 2 2, Point 3 7]
```

## ⭐ Task 5

**Description:**

By using the `Shape` data type, define the following functions:

1. isRound - returns whether a shape has a round side;
2. is2D - returns whether a shape has two dimensions.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ isRound (Circle 5) == True
print $ isRound (Rectangle 2.5 4.5) == False
print $ isRound (Rectangle 5.5 20.6) == False
print $ isRound (Triangle 5.3 3.9 4.89) == False
print $ isRound (Cylinder 20 30) == True

print $ is2D (Circle 5) == True
print $ is2D (Rectangle 2.5 4.5) == True
print $ is2D (Rectangle 5.5 20.6) == True
print $ is2D (Triangle 5.3 3.9 4.89) == True
print $ is2D (Cylinder 20 30) == False
```

## For home

### 💫 Task 1

**Description:**

Define a function that accepts a graph, a whole number `k` and a node `n`. Return all the paths starting from `n` that are `k` nodes long. If the node is not present, throw an error.

Use the following types:

```haskell
type Node = Int
type Graph = [(Node, [Node])]
type Path = [Node]
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1 == [[1]]
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 == [[1, 2], [1, 3]]
print $ simplePaths [(1, [2, 3, 4]), (2, [3, 4]), (3, []), (4, [])] 1 1 == [[1,2],[1,3],[1,4]]
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1 == [[1, 2, 3], [1, 2, 4]]
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 == [[2,3],[2,4]]
print $ simplePaths [(1, [2, 3]), (2, [3]), (3, []), (4, [])] 1 2 == [[2,3]]
```

### ⭐ Task 2

**Description:**

Let `(x, y, z)` be a vector representing the nodes of a binary tree such that `x` is the value of the current node, `y` and `z` are the values of the child nodes. Define a function that returns the leaves of such a tree.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
-- you may get slightly different results eg. [3, 4, 5] on test 1 <- not a problem
print $ listLeaves [(1, 2, 3), (2, 4, 5)] == [4, 3, 5]
print $ listLeaves [(2, 4, 5), (1, 2, 3)] == [4, 5, 3]
print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] == [2, 4, 6, 9]
```

### ⭐ Task 3

**Description:**

By using the `Shape` data type, define the following functions:

1. perimeter;
2. area.

Recap:

Perimeter of a cylinder: 4*r + 2*h
Area of a cylinder: 2*pi*r*h + 2*pi*r*r.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ perimeter (Circle 5) == 31.41592653589793
print $ perimeter (Rectangle 2.5 4.5) == 14
print $ perimeter (Rectangle 5.5 20.6) == 52.2
print $ perimeter (Triangle 5.3 3.9 4.89) == 14.09
print $ perimeter (Cylinder 2.5 10) == 30

print $ area (Circle 5) == 78.53981633974483
print $ area (Rectangle 2.5 4.5) == 11.25
print $ area (Rectangle 5.5 20.6) == 113.30000000000001
print $ area (Triangle 5.3 3.9 4.89) == 9.127927385194024
print $ area (Cylinder 20 30) == 6283.185307179587
```

### 🌟 Task 4

**Description:**

By using the `Shape` data type, define two functions that accept a list of shapes and:

1. The first returns their areas;
2. The second returns the shape with the biggest area.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. `getAreas` is defined on a functional level.
4. `maxArea` is defined using folding.

**Test cases:**

```haskell
print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [78.53981633974483,11.25,113.30000000000001,9.127927385194024,6283.185307179587]
print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == Cylinder 20.0 30.0
```
