import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalPathwaysPackage where
  morphogenGradients : Prop
  cellFateDetermination : Prop
  bodyPlanEstablishment : Prop
  evolutionaryConservation : Prop

structure DevelopmentalPathwaysEvidence (P : DevelopmentalPathwaysPackage) where
  morphogenGradientsClosed : P.morphogenGradients
  cellFateDeterminationClosed : P.cellFateDetermination
  bodyPlanEstablishmentClosed : P.bodyPlanEstablishment
  evolutionaryConservationClosed : P.evolutionaryConservation

def DevelopmentalPathwaysClosed (P : DevelopmentalPathwaysPackage) : Prop :=
  P.morphogenGradients ∧ P.cellFateDetermination ∧
  P.bodyPlanEstablishment ∧ P.evolutionaryConservation

theorem developmental_pathways_closed_from_evidence (P : DevelopmentalPathwaysPackage)
    (E : DevelopmentalPathwaysEvidence P) : DevelopmentalPathwaysClosed P :=
  And.intro E.morphogenGradientsClosed (And.intro E.cellFateDeterminationClosed
    (And.intro E.bodyPlanEstablishmentClosed E.evolutionaryConservationClosed))

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse