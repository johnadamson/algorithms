Maze Runner
===========

Given a square matrix of random integers between 0 and 9, eg

  4 5 3 0 1
  2 4 8 9 8
  7 2 2 0 1
  4 3 0 2 9
  1 9 4 7 2

Create a solution that will find the longest path through the matrix where each
subsequent number is equal or greater than the previous.

The following principles apply:
  * The starting point can be any number in the matrix.
  * The matrix will always be square, but can be of any size.
  * Valid movements are in any direction -- horizontal, vertical, and diagonal.
  * You cannot visit the same position more than once.

Your solution must take as input the matrix as an array of arrays, and return
the array of increasing integers.

```ruby
grid = MazeRunner::Grid.new([
 [4,5,3,0,1],
 [2,4,8,9,8],
 [7,2,2,0,1],
 [4,3,0,2,9],
 [1,9,4,7,2]
])

MazeRunner::Traverse.new(grid).longest_path
#=> [0, 0, 1, 2, 2, 2, 2, 4, 4, 5, 8, 9]
```

