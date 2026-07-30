import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  synapticWeight : Type u
  spikeTiming : Type v
  longTermPotentiation : Prop
  longTermDepression : Prop
  learningRule : Prop
  weightBounds : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  learningRuleClosed : H.learningRule
  weightBoundsClosed : H.weightBounds

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.learningRule ∧ H.weightBounds

theorem hebbian_synaptic_plasticity_closed_from_evidence (H : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence H) : HebbianSynapticPlasticityClosed H :=
  And.intro E.longTermPotentiationClosed (And.intro E.longTermDepressionClosed (And.intro E.learningRuleClosed E.weightBoundsClosed))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse