import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure EmissionStandardPackage where
  pollutant : String
  limitValue : Float
  sourceCategory : String
  complianceDeadline : String
  monitoringProtocol : String

structure EmissionStandardEvidence (E : EmissionStandardPackage) where
  limitValueSet : E.limitValue > 0
  sourceCovered : E.sourceCategory ≠ ""
  monitoringDefined : E.monitoringProtocol ≠ ""

def EmissionStandardClosed (E : EmissionStandardPackage) : Prop :=
  E.limitValue > 0 ∧ E.sourceCategory ≠ "" ∧ E.monitoringProtocol ≠ ""

theorem emission_standard_closed_from_evidence (E : EmissionStandardPackage)
    (ev : EmissionStandardEvidence E) : EmissionStandardClosed E := by
  exact And.intro ev.limitValueSet (And.intro ev.sourceCovered ev.monitoringDefined)

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse