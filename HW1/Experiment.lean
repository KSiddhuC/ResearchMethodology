def add (a b : Nat) : Nat :=
  a + b

#eval add 2 3
#eval 1+1

theorem two_plus_two : 2 + 2 = 4 := by
  decide
