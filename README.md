### Increasing Graph Traversal

```ruby
# Setup
bundle

# Test
bundle exec rspec

# Usage
grid = Grid.new([
  [8,2,4],
  [0,7,1],
  [3,7,9]
])

Traverse.new(grid).longest_sequence  #=> 6
```
