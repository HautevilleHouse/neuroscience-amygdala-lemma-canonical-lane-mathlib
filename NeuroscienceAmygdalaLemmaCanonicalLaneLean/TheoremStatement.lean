import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure AmygdalaAdmittedObject where
  amygdalaRegion : Type
  stimulusEncoding : Prop
  fearConditioning : Prop
  synapticPlasticity : Prop
  conclusion : stimulusEncoding ∧ fearConditioning ∧ synapticPlasticity

def AmygdalaWitnessClosed (O : AmygdalaAdmittedObject) : Prop :=
  O.conclusion

structure AmygdalaEndgameState where
  object : AmygdalaAdmittedObject

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse
