import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure MorphogenesisPackage where
  cellTypes : Type
  signalingPathways : Type
  patternFormation : Prop
  tissueMorphology : Prop
  developmentalTiming : Prop

structure MorphogenesisEvidence (M : MorphogenesisPackage) where
  patternFormationClosed : M.patternFormation
  tissueMorphologyClosed : M.tissueMorphology
  developmentalTimingClosed : M.developmentalTiming

def MorphogenesisClosed (M : MorphogenesisPackage) : Prop :=
  M.patternFormation ∧ M.tissueMorphology ∧ M.developmentalTiming

theorem morphogenesis_closed_from_evidence
    (M : MorphogenesisPackage) (E : MorphogenesisEvidence M) :
    MorphogenesisClosed M := by
  exact And.intro E.patternFormationClosed
    (And.intro E.tissueMorphologyClosed E.developmentalTimingClosed)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse