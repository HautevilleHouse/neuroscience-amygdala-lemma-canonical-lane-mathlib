import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure NeuromodulatoryGatePackage where
  neuromodulator : Type u
  receptorType : Type v
  gatingMechanism : Type w
  dopamineModulation : Prop
  serotoninModulation : Prop
  noradrenalineModulation : Prop
  plasticityGate : Prop

structure NeuromodulatoryGateEvidence (N : NeuromodulatoryGatePackage) where
  dopamineModulationClosed : N.dopamineModulation
  serotoninModulationClosed : N.serotoninModulation
  noradrenalineModulationClosed : N.noradrenalineModulation
  plasticityGateClosed : N.plasticityGate

def NeuromodulatoryGateClosed (N : NeuromodulatoryGatePackage) : Prop :=
  N.dopamineModulation ∧ N.serotoninModulation ∧ N.noradrenalineModulation ∧ N.plasticityGate

theorem neuromodulatory_gate_closed_from_evidence (N : NeuromodulatoryGatePackage) (E : NeuromodulatoryGateEvidence N) : NeuromodulatoryGateClosed N :=
  And.intro E.dopamineModulationClosed (And.intro E.serotoninModulationClosed (And.intro E.noradrenalineModulationClosed E.plasticityGateClosed))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse