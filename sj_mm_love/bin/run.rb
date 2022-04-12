#!/usr/bin/env ruby
# frozen_string_literal: true

# (this does the -e below)
# once off change file to exercutable for a invisible list ls -l
# chmod +x bin/run.rb

# ruby -Ilib -e 'require "wedding_calculator" ; pp WeddingCalculator.half_life(wd: ARGV[0], dob: ARGV[1])' 2000-01-01 2000-01-01

$LOAD_PATH << File.join(__dir__, '..', 'lib')

require 'wedding_calculator'

pp WeddingCalculator.half_life(wd: ARGV[0], dob: ARGV[1])

# to run in terminal bin/run.rb 2000-01-01 2000-01-01

# this is my example of being able to run a ruby file in the command line
