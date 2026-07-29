import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure SystemsBiologyPackage where
  numberOfComponents : ℕ
  interactionMatrix : List (List ℝ)
  differentialEquations : Prop
  stabilityCondition : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  differentialEquationsClosed : S.differentialEquations
  stabilityConditionClosed : S.stabilityCondition

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.differentialEquations ∧ S.stabilityCondition

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage) (E : SystemsBiologyEvidence S) :
    SystemsBiologyClosed S := by
  exact And.intro E.differentialEquationsClosed E.stabilityConditionClosed

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse