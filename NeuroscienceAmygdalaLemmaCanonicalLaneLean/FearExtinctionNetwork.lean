import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure FearExtinctionNetworkPackage where
  prefrontalCortex : Type u
  hippocampus : Type v
  amygdala : Type w
  fearConditioningConsolidation : Prop
  extinctionMemoryFormation : Prop
  contextDependentRecall : Prop

structure FearExtinctionNetworkEvidence (F : FearExtinctionNetworkPackage) where
  fearConditioningConsolidationClosed : F.fearConditioningConsolidation
  extinctionMemoryFormationClosed : F.extinctionMemoryFormation
  contextDependentRecallClosed : F.contextDependentRecall

def FearExtinctionNetworkClosed (F : FearExtinctionNetworkPackage) : Prop :=
  F.fearConditioningConsolidation ∧ F.extinctionMemoryFormation ∧ F.contextDependentRecall

theorem fear_extinction_network_closed_from_evidence (F : FearExtinctionNetworkPackage)
    (E : FearExtinctionNetworkEvidence F) : FearExtinctionNetworkClosed F := by
  exact And.intro E.fearConditioningConsolidationClosed
    (And.intro E.extinctionMemoryFormationClosed E.contextDependentRecallClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse