import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.gateWitness.elim (fun h => h) (fun h => h)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse