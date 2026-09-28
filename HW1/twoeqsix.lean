import Mathlib

theorem twoeqsix1 (h: 2=6) : 2=6 := by
  exact h

theorem twoeqsix2 (h: 0=1) : 2=6 := by
  omega

theorem twoeqsix3 (h: False) : 2=6 := by
  exact False.elim h

#check twoeqsix1
#check twoeqsix2
#check twoeqsix3
