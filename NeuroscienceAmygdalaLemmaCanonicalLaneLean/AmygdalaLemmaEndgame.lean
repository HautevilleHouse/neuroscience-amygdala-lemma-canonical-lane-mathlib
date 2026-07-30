import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceAmygdalaLemmaCanonicalLaneLean.BridgeLemmas
import NeuroscienceAmygdalaLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

def ConstrainedAmygdalaLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_amygdala_lemma_endgame (A : AdmissibleClass) :
    ConstrainedAmygdalaLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse