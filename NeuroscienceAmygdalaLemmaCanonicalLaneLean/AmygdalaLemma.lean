import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure AmygdalaLemmaPackage where
  amygdalaRegion : Type u
  fearConditioning : Prop
  synapticPlasticity : Prop
  neuromodulation : Prop
  circuitModel : Prop

structure AmygdalaLemmaEvidence (A : AmygdalaLemmaPackage) where
  fearConditioningClosed : A.fearConditioning
  synapticPlasticityClosed : A.synapticPlasticity
  neuromodulationClosed : A.neuromodulation
  circuitModelClosed : A.circuitModel

def AmygdalaLemmaClosed (A : AmygdalaLemmaPackage) : Prop :=
  A.fearConditioning ∧ A.synapticPlasticity ∧ A.neuromodulation ∧ A.circuitModel

theorem amygdala_lemma_closed_from_evidence (A : AmygdalaLemmaPackage) (E : AmygdalaLemmaEvidence A) :
    AmygdalaLemmaClosed A := by
  exact And.intro E.fearConditioningClosed
    (And.intro E.synapticPlasticityClosed
      (And.intro E.neuromodulationClosed E.circuitModelClosed))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse