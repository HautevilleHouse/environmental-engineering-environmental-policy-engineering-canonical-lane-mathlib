import EnvironmentalEngineeringEnvironmentalPolicyEngineering.EnvironmentalAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure EmissionsModel where
  sector : String
  baselineEmissions : ℝ
  reductionTarget : ℝ
  policyInstrument : String
  compliancePath : Prop

def EmissionsModelClosed (M : EmissionsModel) : Prop :=
  M.reductionTarget > 0 ∧ M.compliancePath

theorem emissions_model_compliance (M : EmissionsModel) (h : EmissionsModelClosed M) : M.compliancePath := h.2

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse
