#/usr/bin/env ruby

require 'json'

my_hash = JSON.parse('{"hello": "goodbye"}')

puts my_hash["hello"]


