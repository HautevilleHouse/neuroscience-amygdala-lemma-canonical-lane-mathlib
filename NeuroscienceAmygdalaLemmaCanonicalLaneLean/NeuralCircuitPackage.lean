import neuroscienceAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure NeuralCircuitPackage where
  neuronPopulation : Type u
  synapticWeights : Type v
  hebbianPlasticityRule : Prop
  stdpMechanism : Prop
  circuitDynamics : Prop
  weightDynamics : Prop

structure NeuralCircuitEvidence (N : NeuralCircuitPackage) where
  hebbianPlasticityRuleClosed : N.hebbianPlasticityRule
  stdpMechanismClosed : N.stdpMechanism
  circuitDynamicsClosed : N.circuitDynamics
  weightDynamicsClosed : N.weightDynamics

def NeuralCircuitClosed (N : NeuralCircuitPackage) : Prop :=
  N.hebbianPlasticityRule ∧ N.stdpMechanism ∧ N.circuitDynamics ∧ N.weightDynamics

theorem neural_circuit_closed_from_evidence
    (N : NeuralCircuitPackage) (E : NeuralCircuitEvidence N) :
    NeuralCircuitClosed N := by
  exact And.intro E.hebbianPlasticityRuleClosed
    (And.intro E.stdpMechanismClosed
      (And.intro E.circuitDynamicsClosed E.weightDynamicsClosed))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse