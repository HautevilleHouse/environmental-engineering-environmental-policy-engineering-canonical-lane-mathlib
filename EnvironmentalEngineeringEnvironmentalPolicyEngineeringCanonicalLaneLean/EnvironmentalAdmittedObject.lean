import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure EnvironmentalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EnvironmentalAdmittedObject where
  space : EnvironmentalSpace
  pollutionConstrained : Prop
  policyTargetsMet : Prop
  sustainableModel : Type
  sustainableTopology : TopologicalSpace sustainableModel
  meetsSustainabilityCriteria : Prop
  conclusion : meetsSustainabilityCriteria

structure EnvironmentalEndgameState where
  object : EnvironmentalAdmittedObject

def EnvironmentalWitnessClosed (O : EnvironmentalAdmittedObject) : Prop :=
  O.meetsSustainabilityCriteria

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse
