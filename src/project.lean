import tactic
import data.nat.prime
import data.nat.pow
import data.nat.parity

open nat

/- An inductive definition of the factorial function -/
def fct : ℕ → ℕ 
| 0       := 1
| (n + 1) := (n + 1) * fct n

/- Fill in the inductive definition of 2 to the power n -/
def pw2 : ℕ → ℕ 
| 0       := sorry
| (n + 1) := sorry

/- Fill in the inductive definition of the Fibonacci numbers -/
def fib : ℕ → ℕ
| 0       := sorry
| 1       := sorry
| (n + 2) := sorry

/-  Prove the following four results using induction. The terminology is `induction n with n ih`
    to use induction over `n`, where the variable is also called `n`, and the inductive hypothesis 
    is called `ih`. The results should be in increasing order of difficulty. -/ 
lemma one_le_pw2 (n : ℕ) : 1 ≤ pw2 n := 
begin
  sorry,
end

theorem n_le_pw2 (n : ℕ) : n ≤ pw2 n :=
begin
  sorry,
end

theorem pw_2_le_fct (n : ℕ) : pw2 n ≤ fct (n + 1) :=
begin
  sorry,
end

theorem sum_fib_squares (n : ℕ) : (finset.range (n + 1)).sum (λ i, (fib i) * (fib i)) = 
  (fib n) * (fib (n + 1)) := 
begin
  sorry,
end

/-  `n % m` means n modulo n. The `ring` tactic is useful proving identities in ℕ using addition and 
    multiplication. Use `by_cases even n` to split into cases depending on if `n` is even or not. 
    The hypothesis `even n` means `∃ (k : ℕ), n = k + k`. Use the `obtain` tactic on that hypothesis 
    to access such a `k` (`obtain ⟨k, h⟩ := h,`).  Some useful theorems:
    - nat.mul_mod_right
    - nat.odd_iff_not_even
    - nat.add_mul_mod_self_left 
    (look them up in the API) -/
theorem squares_mod_four (n : ℕ) : (n ^ 2) % 4 = 0 ∨ (n ^ 2) % 4 = 1 :=
begin
  sorry,
end

/-  You can continue this project by formalising any result you like in elementary number theory.
    The book "250 problems in elementary number theory" by Sierpinski is a good place to look for 
    projects. You can also try to find easier competition-style problems and solve them in Lean, 
    like the one below. -/

/-  `nat.prime p` is a proposition saying that the natural number p is prime.  -/
/-  The following result is the answer to Problem 4 on the Icelandic national mathematics 
    competition 2014: find all pairs (p,q) of primes such that p^q + q^p is prime.
    Hint: use the `by_cases` tactic to divide into cases depending on whether p is even. 
    In the case where p is even, consider the expression mod 3.  -/
theorem pq (p q : ℕ) (hpq : p ≤ q) [nat.prime p] [nat.prime q] : 
  nat.prime (p ^ q + q ^ p) → p = 2 ∧ q = 3 :=
begin
  sorry,
end



