import Mathlib

open Filter Topology

theorem one_div_nat_tends_to_zero:
  Tendsto (fun n : ℕ => (1 : ℝ)/(n : ℝ)) atTop (𝓝 0) := by
  simpa [one_div, Function.comp_def] using
  (tendsto_inv_atTop_zero.comp
  (tendsto_natCast_atTop_atTop :
    Tendsto (fun n : ℕ => (n:ℝ)) atTop atTop))

theorem one_over_n_squared_tends_to_zero :
  Tendsto (fun n : ℕ => (1 : ℝ)/(n : ℝ)^2) atTop (𝓝 0) := by
  have h := one_div_nat_tends_to_zero.pow 2
  simpa [div_pow] using h
