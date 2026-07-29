import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationSize : Type
  growthRate : Type
  carryingCapacity : Prop
  selectivePressure : Prop
  mutationRate : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityClosed : P.carryingCapacity
  selectivePressureClosed : P.selectivePressure
  mutationRateClosed : P.mutationRate

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity ∧ P.selectivePressure ∧ P.mutationRate

theorem population_dynamics_closed_from_evidence
    (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed
    (And.intro E.selectivePressureClosed E.mutationRateClosed)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse