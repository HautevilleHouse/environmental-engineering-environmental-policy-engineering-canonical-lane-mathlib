import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

def EnvironmentalWitnessClosed (O : EnvironmentalAdmittedObject) : Prop :=
  O.pollutionLevel → O.policyCompliance

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnvironmentalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse