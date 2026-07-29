import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

structure PollutionControlPackage where
  emissionLimit : Prop
  abatementCost : Prop
  policyEffectiveness : Prop
  costEffectiveness : Prop

structure PollutionControlEvidence (P : PollutionControlPackage) where
  emissionLimitClosed : P.emissionLimit
  abatementCostClosed : P.abatementCost
  policyEffectivenessClosed : P.policyEffectiveness
  costEffectivenessClosed : P.costEffectiveness

def PollutionControlClosed (P : PollutionControlPackage) : Prop :=
  P.emissionLimit ∧ P.abatementCost ∧ P.policyEffectiveness ∧ P.costEffectiveness

theorem pollution_control_closed_from_evidence (P : PollutionControlPackage) (E : PollutionControlEvidence P) :
    PollutionControlClosed P := by
  exact And.intro E.emissionLimitClosed
    (And.intro E.abatementCostClosed
      (And.intro E.policyEffectivenessClosed E.costEffectivenessClosed))

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse