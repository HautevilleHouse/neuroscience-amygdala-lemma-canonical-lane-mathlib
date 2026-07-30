import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure AmygdalaCircuitPackage where
  lateralAmygdala : Type u
  basalAmygdala : Type v
  centralAmygdala : Type w
  fearConditioningCircuit : Prop
  extinctionCircuit : Prop
  neuromodulatoryInput : Prop

structure AmygdalaCircuitEvidence (A : AmygdalaCircuitPackage) where
  fearConditioningCircuitClosed : A.fearConditioningCircuit
  extinctionCircuitClosed : A.extinctionCircuit
  neuromodulatoryInputClosed : A.neuromodulatoryInput

def AmygdalaCircuitClosed (A : AmygdalaCircuitPackage) : Prop :=
  A.fearConditioningCircuit ∧ A.extinctionCircuit ∧ A.neuromodulatoryInput

theorem amygdala_circuit_closed_from_evidence (A : AmygdalaCircuitPackage)
    (E : AmygdalaCircuitEvidence A) : AmygdalaCircuitClosed A := by
  exact And.intro E.fearConditioningCircuitClosed
    (And.intro E.extinctionCircuitClosed E.neuromodulatoryInputClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse