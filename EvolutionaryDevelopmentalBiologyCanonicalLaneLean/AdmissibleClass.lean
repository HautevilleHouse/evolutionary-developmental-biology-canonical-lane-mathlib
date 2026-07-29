import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure AdmissibleClass where
  object : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse