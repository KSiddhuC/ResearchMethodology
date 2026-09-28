import Mathlib

theorem twoeqsix1 (h: 2=6) : 2=6 := by
  exact h

theorem twoeqsix2 (h: 0=1) : 2=6 := by
  omega

theorem twoeqsix3 (h: False) : 2=6 := by
  exact False.elim h

theorem twoeqsix4 (_h1: 2=6) (_h2: 1=1) (_h3: 0=0) : 2=6 := by
  assumption

theorem twoeqsix5 (h1: 1=3) : (2=6) ∧ (1+1=2) := by
  constructor
  omega
  rfl



#check twoeqsix1
#check twoeqsix2
#check twoeqsix3
#check twoeqsix4
#check twoeqsix5
