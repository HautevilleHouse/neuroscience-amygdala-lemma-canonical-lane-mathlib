import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  fieldEquation : Type u
  synapticKernel : Type v
  excitationInhibitionBalance : Prop
  travelingWaves : Prop
  patternFormation : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  excitationInhibitionBalanceClosed : N.excitationInhibitionBalance
  travelingWavesClosed : N.travelingWaves
  patternFormationClosed : N.patternFormation

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.excitationInhibitionBalance ∧ N.travelingWaves ∧ N.patternFormation

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.excitationInhibitionBalanceClosed
    (And.intro E.travelingWavesClosed E.patternFormationClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse