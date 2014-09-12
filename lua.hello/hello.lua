#! /usr/local/bin/lua

-- Lua's "hello.lua"

for idx = 1,4 do 
   print("line: ", idx)
end

function TimesTwo(myvalue)
   myvalue = myvalue * 2
   return myvalue
end

a = 24 + TimesTwo(12)
print(a)

function ThreeDice()
   d1 = math.random(1, 6)
   d2 = math.random(1, 6)
   d3 = math.random(1, 6)
   myTable = d1 + d2 + d3
   return d1, d2, d3, myTable
end

print(ThreeDice())
print(ThreeDice())
print(ThreeDice())
a, b, c, d = ThreeDice()
print(a, b, c, d)

myString = "print(math.max(7, 8, 9, 10))"
assert(loadstring(myString))()

