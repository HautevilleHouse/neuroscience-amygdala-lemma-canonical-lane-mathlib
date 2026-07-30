import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure PlasticitySynapticMechanismsPackage where
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Prop
  calciumDynamics : Type u
  kinasePhosphataseSignaling : Type v

structure PlasticitySynapticMechanismsEvidence (P : PlasticitySynapticMechanismsPackage) where
  longTermPotentiationClosed : P.longTermPotentiation
  longTermDepressionClosed : P.longTermDepression
  spikeTimingDependentPlasticityClosed : P.spikeTimingDependentPlasticity

def PlasticitySynapticMechanismsClosed (P : PlasticitySynapticMechanismsPackage) : Prop :=
  P.longTermPotentiation ∧ P.longTermDepression ∧ P.spikeTimingDependentPlasticity

theorem plasticity_synaptic_mechanisms_closed_from_evidence
    (P : PlasticitySynapticMechanismsPackage)
    (E : PlasticitySynapticMechanismsEvidence P) : PlasticitySynapticMechanismsClosed P := by
  exact And.intro E.longTermPotentiationClosed
    (And.intro E.longTermDepressionClosed E.spikeTimingDependentPlasticityClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse