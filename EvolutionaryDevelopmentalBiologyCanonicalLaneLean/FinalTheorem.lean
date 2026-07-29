import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

def ConstrainedEvolutionaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_evolutionary_endgame (A : AdmissibleClass) : ConstrainedEvolutionaryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse