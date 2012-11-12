#!/usr/bin/env ruby

require 'coffee_script'

to_stdout = false
from_stdin = false

if ARGV.delete("-s")
  to_stdout = true
  from_stdin = true
end

if ARGV.delete("-p")
  to_stdout = true
end

if from_stdin
  input = ARGF.read
else
  input = File.read(ARGV.last)
end


result = CoffeeScript.compile input

if to_stdout
  puts result
end
