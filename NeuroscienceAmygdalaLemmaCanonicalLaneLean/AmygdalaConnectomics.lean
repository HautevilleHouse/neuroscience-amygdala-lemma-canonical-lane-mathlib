import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure AmygdalaConnectomicsPackage where
  nucleusMappings : Type u
  projectionPathways : Type v
  synapticTargets : Type w
  basolateralConnectivity : Prop
  centromedialConnectivity : Prop
  corticalInputs : Prop
  subcorticalInputs : Prop

structure AmygdalaConnectomicsEvidence (A : AmygdalaConnectomicsPackage) where
  basolateralConnectivityClosed : A.basolateralConnectivity
  centromedialConnectivityClosed : A.centromedialConnectivity
  corticalInputsClosed : A.corticalInputs
  subcorticalInputsClosed : A.subcorticalInputs

def AmygdalaConnectomicsClosed (A : AmygdalaConnectomicsPackage) : Prop :=
  A.basolateralConnectivity ∧ A.centromedialConnectivity ∧ A.corticalInputs ∧ A.subcorticalInputs

theorem amygdala_connectomics_closed_from_evidence (A : AmygdalaConnectomicsPackage) (E : AmygdalaConnectomicsEvidence A) : AmygdalaConnectomicsClosed A :=
  And.intro E.basolateralConnectivityClosed (And.intro E.centromedialConnectivityClosed (And.intro E.corticalInputsClosed E.subcorticalInputsClosed))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse