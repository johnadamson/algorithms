lib = File.expand_path(File.dirname(__FILE__))
$:.unshift lib unless $:.include? lib

require 'fixnum_centipad/centipad'
require 'fixnum_centipad/burrito'
require 'fixnum_centipad/operator'

module FixnumCentipad; end
