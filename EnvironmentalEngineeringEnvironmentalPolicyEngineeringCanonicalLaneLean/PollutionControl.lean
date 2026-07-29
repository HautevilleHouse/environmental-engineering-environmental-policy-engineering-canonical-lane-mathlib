import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure PollutionControlPackage where
  technology : String
  efficiency : Float
  cost : Float
  regulatoryStatus : String

structure PollutionControlEvidence (P : PollutionControlPackage) where
  efficiencyAboveThreshold : P.efficiency ≥ 0.9
  costBelowBudget : P.cost ≤ 1000000
  regulatoryApproved : P.regulatoryStatus = "approved"

def PollutionControlClosed (P : PollutionControlPackage) : Prop :=
  P.efficiency ≥ 0.9 ∧ P.cost ≤ 1000000 ∧ P.regulatoryStatus = "approved"

theorem pollution_control_closed_from_evidence (P : PollutionControlPackage)
    (ev : PollutionControlEvidence P) : PollutionControlClosed P := by
  exact And.intro ev.efficiencyAboveThreshold (And.intro ev.costBelowBudget ev.regulatoryApproved)

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse