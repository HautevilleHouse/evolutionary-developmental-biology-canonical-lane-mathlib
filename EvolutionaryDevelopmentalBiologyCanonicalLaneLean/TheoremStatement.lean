import EvolutionaryDevelopmentalBiologyCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EvoDevoSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EvoDevoAdmittedObject where
  space : EvoDevoSpace
  phenotypeSpace : Prop
  fitnessLandscape : Prop
  developmentalPathway : Prop
  conclusion : phenotypeSpace ∧ fitnessLandscape ∧ developmentalPathway

def EvoDevoWitnessClosed (O : EvoDevoAdmittedObject) : Prop :=
  O.phenotypeSpace ∧ O.fitnessLandscape ∧ O.developmentalPathway

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  evoDevoConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse