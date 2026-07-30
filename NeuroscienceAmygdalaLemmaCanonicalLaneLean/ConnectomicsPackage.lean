import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  connectome : Type u
  nodes : Prop
  edges : Prop
  adjacencyMatrix : Prop
  graphMetrics : Prop
  smallWorldProperty : Prop
  modularOrganization : Prop
  hubIdentification : Prop
  networkDynamics : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  adjacencyMatrixClosed : C.adjacencyMatrix
  smallWorldPropertyClosed : C.smallWorldProperty
  modularOrganizationClosed : C.modularOrganization
  hubIdentificationClosed : C.hubIdentification
  networkDynamicsClosed : C.networkDynamics

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.adjacencyMatrix ∧ C.smallWorldProperty ∧ C.modularOrganization ∧ C.hubIdentification ∧ C.networkDynamics

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.adjacencyMatrixClosed
    (And.intro E.smallWorldPropertyClosed
      (And.intro E.modularOrganizationClosed
        (And.intro E.hubIdentificationClosed E.networkDynamicsClosed)))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse