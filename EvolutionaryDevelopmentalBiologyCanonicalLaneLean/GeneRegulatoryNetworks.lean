import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure GeneRegulatoryNetworksPackage where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryInteractions : Prop
  networkDynamics : Prop

structure GeneRegulatoryNetworksEvidence (P : GeneRegulatoryNetworksPackage) where
  regulatoryInteractionsClosed : P.regulatoryInteractions
  networkDynamicsClosed : P.networkDynamics

def GeneRegulatoryNetworksClosed (P : GeneRegulatoryNetworksPackage) : Prop :=
  P.regulatoryInteractions ∧ P.networkDynamics

theorem gene_regulatory_networks_closed_from_evidence (P : GeneRegulatoryNetworksPackage)
    (E : GeneRegulatoryNetworksEvidence P) : GeneRegulatoryNetworksClosed P :=
  And.intro E.regulatoryInteractionsClosed E.networkDynamicsClosed

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse