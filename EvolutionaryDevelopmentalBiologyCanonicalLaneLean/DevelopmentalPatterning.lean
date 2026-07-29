import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalPatterningPackage where
  morphogenField : Type u → Type u
  diffusionCoefficient : ℝ
  reactionTerms : (ℝ → ℝ) → ℝ
  patternFormationEquations : Prop
  turingInstabilityCondition : Prop
  positionalInformationCoded : Prop

structure DevelopmentalPatterningEvidence (D : DevelopmentalPatterningPackage) where
  patternFormationEquationsClosed : D.patternFormationEquations
  turingInstabilityConditionClosed : D.turingInstabilityCondition
  positionalInformationCodedClosed : D.positionalInformationCoded

def DevelopmentalPatterningClosed (D : DevelopmentalPatterningPackage) : Prop :=
  D.patternFormationEquations ∧ D.turingInstabilityCondition ∧ D.positionalInformationCoded

theorem developmental_patterning_closed_from_evidence (D : DevelopmentalPatterningPackage)
    (E : DevelopmentalPatterningEvidence D) : DevelopmentalPatterningClosed D := by
  exact And.intro E.patternFormationEquationsClosed
    (And.intro E.turingInstabilityConditionClosed E.positionalInformationCodedClosed)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse