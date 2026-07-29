import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Type
  targetGenes : Type
  regulatoryInteractions : Prop
  feedbackLoops : Prop
  networkRobustness : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  feedbackLoopsClosed : G.feedbackLoops
  networkRobustnessClosed : G.networkRobustness

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.feedbackLoops ∧ G.networkRobustness

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.feedbackLoopsClosed E.networkRobustnessClosed)

end EvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse