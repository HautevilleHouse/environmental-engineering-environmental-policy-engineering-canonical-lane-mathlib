import EnvironmentalEngineeringEnvironmentalPolicyEngineering.EmissionsModel

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure PolicyInstrument (M : EmissionsModel) where
  instrumentType : String
  effectiveness : ℝ
  cost : ℝ
  feasibility : Prop
  implementationEvidence : feasibility

def PolicyInstrumentClosed (M : EmissionsModel) (P : PolicyInstrument M) : Prop :=
  P.effectiveness > 0 ∧ P.feasibility

theorem policy_instrument_effective (M : EmissionsModel) (P : PolicyInstrument M) (h : PolicyInstrumentClosed M P) : P.effectiveness > 0 := h.1

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse
