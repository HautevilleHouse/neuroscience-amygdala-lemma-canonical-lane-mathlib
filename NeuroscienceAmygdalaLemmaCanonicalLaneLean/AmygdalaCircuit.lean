import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure AmygdalaCircuitPackage where
  basolateralNucleus : Type u
  centralNucleus : Type v
  synapticProjection : Type w
  fearConditioningInduction : Prop
  extinctionPlasticity : Prop
  amygdalaOutput : Prop

structure AmygdalaCircuitEvidence (A : AmygdalaCircuitPackage) where
  fearConditioningInductionClosed : A.fearConditioningInduction
  extinctionPlasticityClosed : A.extinctionPlasticity
  amygdalaOutputClosed : A.amygdalaOutput

def AmygdalaCircuitClosed (A : AmygdalaCircuitPackage) : Prop :=
  A.fearConditioningInduction ∧ A.extinctionPlasticity ∧ A.amygdalaOutput

theorem amygdala_circuit_closed_from_evidence (A : AmygdalaCircuitPackage)
    (E : AmygdalaCircuitEvidence A) : AmygdalaCircuitClosed A := by
  exact And.intro E.fearConditioningInductionClosed
    (And.intro E.extinctionPlasticityClosed E.amygdalaOutputClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse