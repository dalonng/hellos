
data Unit = Unit
data List a = Nil | Cons a (List a)
data Nat = Zero | Succ Nat

List Unit = Nil | Cons Unit (List Unit)
Nat = Zero | Succ Nat


data ThreeNum = One | Two | Three
data Level = Low | Middle | High

f :: ThreeNum -> Level
f One = Low
f Two = Middle
f Three = High

g :: Level -> ThreeNum
g Low = One
g Middle = Two
g High = Three
