import EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

def ConstrainedEnvironmentalEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_environmental_engineering_endgame (A : AdmissibleClass) :
    ConstrainedEnvironmentalEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse