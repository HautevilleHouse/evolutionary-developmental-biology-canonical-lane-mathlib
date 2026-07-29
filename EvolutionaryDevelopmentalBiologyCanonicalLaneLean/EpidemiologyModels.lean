import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EpidemiologyModelsPackage where
  susceptibleInitial : ℕ
  infectedInitial : ℕ
  removedInitial : ℕ
  transmissionRate : ℝ
  recoveryRate : ℝ
  sirEquations : Prop

structure EpidemiologyModelsEvidence (E : EpidemiologyModelsPackage) where
  sirEquationsClosed : E.sirEquations

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.sirEquations

theorem epidemiology_models_closed_from_evidence (E : EpidemiologyModelsPackage) (Ev : EpidemiologyModelsEvidence E) :
    EpidemiologyModelsClosed E := by
  exact Ev.sirEquationsClosed

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse