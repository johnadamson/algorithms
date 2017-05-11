lib = File.expand_path(File.dirname(__FILE__))
$:.unshift lib unless $:.include? lib

require 'fixnum_centipede/centipede'
require 'fixnum_centipede/node'
require 'fixnum_centipede/operator'

module FixnumCentipede; end
