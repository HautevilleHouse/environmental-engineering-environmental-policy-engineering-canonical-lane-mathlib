import EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.emissionBound ∧ A.object.complianceStatus

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse