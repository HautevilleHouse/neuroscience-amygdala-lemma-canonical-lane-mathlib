import neuroscienceAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure SynapticPlasticityPackage where
  ltpInduction : Prop
  ltdInduction : Prop
  calciumDynamics : Prop
  receptorTrafficking : Prop
  structuralPlasticity : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  ltpInductionClosed : S.ltpInduction
  ltdInductionClosed : S.ltdInduction
  calciumDynamicsClosed : S.calciumDynamics
  receptorTraffickingClosed : S.receptorTrafficking
  structuralPlasticityClosed : S.structuralPlasticity

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.ltpInduction ∧ S.ltdInduction ∧
  S.calciumDynamics ∧ S.receptorTrafficking ∧ S.structuralPlasticity

theorem synaptic_plasticity_closed_from_evidence
    (S : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.ltpInductionClosed
    (And.intro E.ltdInductionClosed
      (And.intro E.calciumDynamicsClosed
        (And.intro E.receptorTraffickingClosed E.structuralPlasticityClosed)))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse