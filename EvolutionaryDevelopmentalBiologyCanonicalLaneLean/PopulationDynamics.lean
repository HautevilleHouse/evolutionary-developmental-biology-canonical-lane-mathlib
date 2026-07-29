import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  carryingCapacity : Prop
  growthRate : Prop
  selectionPressure : Prop
  equilibriumStability : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityClosed : P.carryingCapacity
  growthRateClosed : P.growthRate
  selectionPressureClosed : P.selectionPressure
  equilibriumStabilityClosed : P.equilibriumStability

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity ∧ P.growthRate ∧ P.selectionPressure ∧ P.equilibriumStability

theorem population_dynamics_closed_from_evidence
    (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed
    (And.intro E.growthRateClosed
      (And.intro E.selectionPressureClosed E.equilibriumStabilityClosed))

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse