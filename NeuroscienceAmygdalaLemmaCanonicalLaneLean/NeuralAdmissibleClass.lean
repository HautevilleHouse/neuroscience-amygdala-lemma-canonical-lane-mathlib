import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure AmygdalaAdmittedObject where
  circuitModel : Type
  plasticityRule : Type
  learningConvergence : Prop
  conclusion : learningConvergence

structure AdmissibleClass where
  object : AmygdalaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse
