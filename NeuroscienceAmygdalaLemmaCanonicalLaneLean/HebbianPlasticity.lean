import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeight : Type u
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  weightUpdateRule : Prop
  learningRate : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.preSynapticActivity ∧ H.postSynapticActivity ∧ H.weightUpdateRule ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.preSynapticActivityClosed
    (And.intro E.postSynapticActivityClosed
      (And.intro E.weightUpdateRuleClosed
        (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed)))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse