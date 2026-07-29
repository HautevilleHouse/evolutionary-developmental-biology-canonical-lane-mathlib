import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalConstraintsPackage where
  morphogeneticField : Prop
  developmentalPathways : Prop
  constraintRelaxation : Prop
  evolvability : Prop

structure DevelopmentalConstraintsEvidence (D : DevelopmentalConstraintsPackage) where
  morphogeneticFieldClosed : D.morphogeneticField
  developmentalPathwaysClosed : D.developmentalPathways
  constraintRelaxationClosed : D.constraintRelaxation
  evolvabilityClosed : D.evolvability

def DevelopmentalConstraintsClosed (D : DevelopmentalConstraintsPackage) : Prop :=
  D.morphogeneticField ∧ D.developmentalPathways ∧
  D.constraintRelaxation ∧ D.evolvability

theorem developmental_constraints_closed_from_evidence
    (D : DevelopmentalConstraintsPackage) (E : DevelopmentalConstraintsEvidence D) :
    DevelopmentalConstraintsClosed D := by
  exact And.intro E.morphogeneticFieldClosed
    (And.intro E.developmentalPathwaysClosed
      (And.intro E.constraintRelaxationClosed E.evolvabilityClosed))

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse