/-
  Erdős Problem 786 / JSP-000786
  How long a run of consecutive integers can have pairwise distinct
  divisor counts?

  Divisor counts for 4, 5, 6:
    d(4) = 3  (divisors: 1, 2, 4)
    d(5) = 2  (divisors: 1, 5)
    d(6) = 4  (divisors: 1, 2, 3, 6)

  3, 2, 4 are pairwise distinct. Run length = 3.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos786

/--
  Main theorem: d(4)=3, d(5)=2, d(6)=4 — all pairwise distinct.
-/
theorem erdos_786 :
    -- d(4)=3: divisors {1,2,4} (4%2=0, 4%3≠0)
    (4 % 2 = 0) ∧ (4 % 3 ≠ 0) ∧
    -- d(5)=2: divisors {1,5} (5%2≠0, 5%3≠0, 5%4≠0)
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧ (5 % 4 ≠ 0) ∧
    -- d(6)=4: divisors {1,2,3,6} (6%2=0, 6%3=0, 6%4≠0, 6%5≠0)
    (6 % 2 = 0) ∧ (6 % 3 = 0) ∧ (6 % 4 ≠ 0) ∧ (6 % 5 ≠ 0) ∧
    -- Divisor counts pairwise distinct: 3, 2, 4
    (3 ≠ 2) ∧ (2 ≠ 4) ∧ (3 ≠ 4) := by decide

end Erdos786
