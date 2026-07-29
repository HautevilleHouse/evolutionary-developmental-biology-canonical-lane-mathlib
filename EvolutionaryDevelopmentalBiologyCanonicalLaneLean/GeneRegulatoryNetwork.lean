import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  networkTopology : Prop
  regulatoryDynamics : Prop
  developmentalModules : Prop
  phenotypicRobustness : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  networkTopologyClosed : G.networkTopology
  regulatoryDynamicsClosed : G.regulatoryDynamics
  developmentalModulesClosed : G.developmentalModules
  phenotypicRobustnessClosed : G.phenotypicRobustness

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.networkTopology ∧ G.regulatoryDynamics ∧
  G.developmentalModules ∧ G.phenotypicRobustness

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.networkTopologyClosed
    (And.intro E.regulatoryDynamicsClosed
      (And.intro E.developmentalModulesClosed E.phenotypicRobustnessClosed))

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse