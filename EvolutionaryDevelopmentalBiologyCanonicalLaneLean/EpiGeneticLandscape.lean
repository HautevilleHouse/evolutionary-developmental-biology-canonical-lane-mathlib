import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EpiGeneticLandscapePackage where
  epigeneticMarks : Prop
  geneExpressionDynamics : Prop
  cellDifferentiation : Prop
  transgenerationalInheritance : Prop

structure EpiGeneticLandscapeEvidence (E : EpiGeneticLandscapePackage) where
  epigeneticMarksClosed : E.epigeneticMarks
  geneExpressionDynamicsClosed : E.geneExpressionDynamics
  cellDifferentiationClosed : E.cellDifferentiation
  transgenerationalInheritanceClosed : E.transgenerationalInheritance

def EpiGeneticLandscapeClosed (E : EpiGeneticLandscapePackage) : Prop :=
  E.epigeneticMarks ∧ E.geneExpressionDynamics ∧
  E.cellDifferentiation ∧ E.transgenerationalInheritance

theorem epi_genetic_landscape_closed_from_evidence
    (E : EpiGeneticLandscapePackage) (Ev : EpiGeneticLandscapeEvidence E) :
    EpiGeneticLandscapeClosed E := by
  exact And.intro Ev.epigeneticMarksClosed
    (And.intro Ev.geneExpressionDynamicsClosed
      (And.intro Ev.cellDifferentiationClosed Ev.transgenerationalInheritanceClosed))

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse