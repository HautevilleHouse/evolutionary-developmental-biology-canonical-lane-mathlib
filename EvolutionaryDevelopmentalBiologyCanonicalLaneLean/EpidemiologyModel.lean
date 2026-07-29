import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EpidemiologyPackage where
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproNumber : Prop
  transmissionRateTerm : transmissionRate
  recoveryRateTerm : recoveryRate

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  transmissionRateClosed : E.transmissionRate
  recoveryRateClosed : E.recoveryRate
  basicReproNumberClosed : E.basicReproNumber

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.transmissionRate ∧ E.recoveryRate ∧ E.basicReproNumber

theorem epidemiology_closed_from_evidence (E : EpidemiologyPackage)
    (Ev : EpidemiologyEvidence E) : EpidemiologyClosed E := by
  exact And.intro Ev.transmissionRateClosed (And.intro Ev.recoveryRateClosed Ev.basicReproNumberClosed)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse