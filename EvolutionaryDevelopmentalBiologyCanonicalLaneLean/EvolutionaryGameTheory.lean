import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  replicatorDynamics : Prop
  evolutionarilyStableStrategy : Prop
  fitnessLandscape : Prop
  mutationSelectionBalance : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  replicatorDynamicsClosed : E.replicatorDynamics
  evolutionarilyStableStrategyClosed : E.evolutionarilyStableStrategy
  fitnessLandscapeClosed : E.fitnessLandscape
  mutationSelectionBalanceClosed : E.mutationSelectionBalance

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.replicatorDynamics ∧ E.evolutionarilyStableStrategy ∧
  E.fitnessLandscape ∧ E.mutationSelectionBalance

theorem evolutionary_game_theory_closed_from_evidence
    (E : EvolutionaryGameTheoryPackage) (Ev : EvolutionaryGameTheoryEvidence E) :
    EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.replicatorDynamicsClosed
    (And.intro Ev.evolutionarilyStableStrategyClosed
      (And.intro Ev.fitnessLandscapeClosed Ev.mutationSelectionBalanceClosed))

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse