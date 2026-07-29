import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

def ConstrainedEnvironmentalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_environmental_endgame (A : AdmissibleClass) :
    ConstrainedEnvironmentalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse