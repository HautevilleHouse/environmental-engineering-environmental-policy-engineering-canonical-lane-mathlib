import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure EnvironmentalImpactAssessmentPackage where
  projectName : String
  impactCategory : String
  severity : String
  mitigationMeasure : String
  stakeholderApproval : Bool

structure EnvironmentalImpactAssessmentEvidence (E : EnvironmentalImpactAssessmentPackage) where
  severityClassified : E.severity ∈ {"low", "medium", "high"}
  mitigationProposed : E.mitigationMeasure ≠ ""
  stakeholderConsent : E.stakeholderApproval = true

def EnvironmentalImpactAssessmentClosed (E : EnvironmentalImpactAssessmentPackage) : Prop :=
  E.severity ∈ {"low", "medium", "high"} ∧ E.mitigationMeasure ≠ "" ∧ E.stakeholderApproval

theorem environmental_impact_assessment_closed_from_evidence
    (E : EnvironmentalImpactAssessmentPackage)
    (ev : EnvironmentalImpactAssessmentEvidence E) : EnvironmentalImpactAssessmentClosed E := by
  exact And.intro ev.severityClassified (And.intro ev.mitigationProposed ev.stakeholderConsent)

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse