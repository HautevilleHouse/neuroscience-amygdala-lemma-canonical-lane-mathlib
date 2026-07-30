import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure EmotionalLearningCircuitPackage where
  conditionedStimulus : Type u
  unconditionedStimulus : Type v
  fearResponse : Type w
  extinctionCircuit : Type x
  conditioningProtocol : Prop
  fearAcquisition : Prop
  fearExtinction : Prop
  relapseSusceptibility : Prop

structure EmotionalLearningCircuitEvidence (E : EmotionalLearningCircuitPackage) where
  conditioningProtocolClosed : E.conditioningProtocol
  fearAcquisitionClosed : E.fearAcquisition
  fearExtinctionClosed : E.fearExtinction
  relapseSusceptibilityClosed : E.relapseSusceptibility

def EmotionalLearningCircuitClosed (E : EmotionalLearningCircuitPackage) : Prop :=
  E.conditioningProtocol ∧ E.fearAcquisition ∧ E.fearExtinction ∧ E.relapseSusceptibility

theorem emotional_learning_circuit_closed_from_evidence (E : EmotionalLearningCircuitPackage) (E' : EmotionalLearningCircuitEvidence E) : EmotionalLearningCircuitClosed E :=
  And.intro E'.conditioningProtocolClosed (And.intro E'.fearAcquisitionClosed (And.intro E'.fearExtinctionClosed E'.relapseSusceptibilityClosed))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse