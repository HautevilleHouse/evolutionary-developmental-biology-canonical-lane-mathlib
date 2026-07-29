import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalEvolutionPackage where
  developmentalEvolutionCoherence : Prop
  modularityEvolvability : Prop
  phenotypicPlasticity : Prop
  geneticAssimilation : Prop

structure DevelopmentalEvolutionEvidence (D : DevelopmentalEvolutionPackage) where
  developmentalEvolutionCoherenceClosed : D.developmentalEvolutionCoherence
  modularityEvolvabilityClosed : D.modularityEvolvability
  phenotypicPlasticityClosed : D.phenotypicPlasticity
  geneticAssimilationClosed : D.geneticAssimilation

def DevelopmentalEvolutionClosed (D : DevelopmentalEvolutionPackage) : Prop :=
  D.developmentalEvolutionCoherence ∧ D.modularityEvolvability ∧
  D.phenotypicPlasticity ∧ D.geneticAssimilation

theorem developmental_evolution_closed_from_evidence
    (D : DevelopmentalEvolutionPackage) (E : DevelopmentalEvolutionEvidence D) :
    DevelopmentalEvolutionClosed D := by
  exact And.intro E.developmentalEvolutionCoherenceClosed
    (And.intro E.modularityEvolvabilityClosed
      (And.intro E.phenotypicPlasticityClosed E.geneticAssimilationClosed))

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse