import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure NeuralPopulationPackage where
  neuronCount : Nat
  firingRates : Type u
  synapticWeights : Type v
  hebbianPlasticityRule : Prop
  populationActivityEquation : Prop
  stabilityCondition : Prop

structure NeuralPopulationEvidence (N : NeuralPopulationPackage) where
  hebbianPlasticityRuleClosed : N.hebbianPlasticityRule
  populationActivityEquationClosed : N.populationActivityEquation
  stabilityConditionClosed : N.stabilityCondition

def NeuralPopulationClosed (N : NeuralPopulationPackage) : Prop :=
  N.hebbianPlasticityRule ∧ N.populationActivityEquation ∧ N.stabilityCondition

theorem neural_population_closed_from_evidence (N : NeuralPopulationPackage)
    (E : NeuralPopulationEvidence N) : NeuralPopulationClosed N := by
  exact And.intro E.hebbianPlasticityRuleClosed
    (And.intro E.populationActivityEquationClosed E.stabilityConditionClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse