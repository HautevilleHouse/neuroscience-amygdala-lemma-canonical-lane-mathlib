import neuroscienceAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  synapseResolution : Type u
  macroConnectivity : Type v
  microConnectivity : Type w
  graphTheoryMetrics : Prop
  hubIdentification : Prop
  networkDynamics : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphTheoryMetricsClosed : C.graphTheoryMetrics
  hubIdentificationClosed : C.hubIdentification
  networkDynamicsClosed : C.networkDynamics

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphTheoryMetrics ∧ C.hubIdentification ∧ C.networkDynamics

theorem connectomics_closed_from_evidence
    (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.graphTheoryMetricsClosed
    (And.intro E.hubIdentificationClosed E.networkDynamicsClosed)

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse