import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : Type u
  ionConductances : Type v
  gatingVariables : Type w
  activationKinetics : Prop
  inactivationKinetics : Prop
  spikeGeneration : Prop
  refractoryPeriod : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  activationKineticsClosed : H.activationKinetics
  inactivationKineticsClosed : H.inactivationKinetics
  spikeGenerationClosed : H.spikeGeneration
  refractoryPeriodClosed : H.refractoryPeriod

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.activationKinetics ∧ H.inactivationKinetics ∧ H.spikeGeneration ∧ H.refractoryPeriod

theorem hodgkin_huxley_dynamics_closed_from_evidence (H : HodgkinHuxleyDynamicsPackage) (E : HodgkinHuxleyDynamicsEvidence H) : HodgkinHuxleyDynamicsClosed H :=
  And.intro E.activationKineticsClosed (And.intro E.inactivationKineticsClosed (And.intro E.spikeGenerationClosed E.refractoryPeriodClosed))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse