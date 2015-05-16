lib = File.expand_path(File.dirname(__FILE__))
$:.unshift lib unless $:.include? lib

require 'maze_runner/grid'
require 'maze_runner/node'
require 'maze_runner/step'
require 'maze_runner/traverse'

module MazeRunner; end
