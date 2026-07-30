import neuroscienceAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure AmygdalaModelPackage where
  basolateralComplex : Type u
  centralNucleus : Type v
  fearConditioningCircuit : Prop
  extinctionCircuit : Prop
  modulationByPrefrontalCortex : Prop

structure AmygdalaModelEvidence (A : AmygdalaModelPackage) where
  fearConditioningCircuitClosed : A.fearConditioningCircuit
  extinctionCircuitClosed : A.extinctionCircuit
  modulationByPrefrontalCortexClosed : A.modulationByPrefrontalCortex

def AmygdalaModelClosed (A : AmygdalaModelPackage) : Prop :=
  A.fearConditioningCircuit ∧ A.extinctionCircuit ∧ A.modulationByPrefrontalCortex

theorem amygdala_model_closed_from_evidence
    (A : AmygdalaModelPackage) (E : AmygdalaModelEvidence A) :
    AmygdalaModelClosed A := by
  exact And.intro E.fearConditioningCircuitClosed
    (And.intro E.extinctionCircuitClosed E.modulationByPrefrontalCortexClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse