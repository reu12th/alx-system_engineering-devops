#!/usr/bin/env ruby
# Requirements:
# Find the regular expression that will match the above cases
# Using the project instructions, create a Ruby script that 
# accepts one argument and pass it to a regular expression matching method

puts ARGV[0].scan(/hb?t?n/).join
