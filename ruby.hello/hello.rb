#! /usr/bin/env ruby
# -*- coding: utf-8 -*-

puts "Hello, Ruby!"

d = Dir.new(Dir.pwd)

d.each do |item|
  puts item
end
