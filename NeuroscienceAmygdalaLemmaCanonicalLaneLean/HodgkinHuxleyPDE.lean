import neuroscienceAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaLemmaCanonicalLaneLean

structure HodgkinHuxleyPDEPackage where
  membranePotential : Type u → Type u
  ionChannels : Type v
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  capacitanceEquation : Prop
  gatingVariables : Prop

structure HodgkinHuxleyPDEEvidence (H : HodgkinHuxleyPDEPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  capacitanceEquationClosed : H.capacitanceEquation
  gatingVariablesClosed : H.gatingVariables

def HodgkinHuxleyPDEClosed (H : HodgkinHuxleyPDEPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧
  H.capacitanceEquation ∧ H.gatingVariables

theorem hodgkin_huxley_pde_closed_from_evidence
    (H : HodgkinHuxleyPDEPackage) (E : HodgkinHuxleyPDEEvidence H) :
    HodgkinHuxleyPDEClosed H := by
  exact And.intro E.sodiumCurrentClosed
    (And.intro E.potassiumCurrentClosed
      (And.intro E.leakCurrentClosed
        (And.intro E.capacitanceEquationClosed E.gatingVariablesClosed)))

end NeuroscienceAmygdalaLemmaCanonicalLaneLean
end HautevilleHouse