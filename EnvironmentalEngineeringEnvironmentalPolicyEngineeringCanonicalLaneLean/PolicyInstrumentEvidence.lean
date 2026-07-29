import EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean.PollutionControlPackage

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

structure PolicyInstrumentCertificate (P : EnvironmentalPolicy)
    (C : PollutionControlPackage P) where
  marketBased : Prop
  commandAndControl : Prop
  informational : Prop
  voluntary : Prop
  marketBasedClosed : marketBased
  commandAndControlClosed : commandAndControl
  informationalClosed : informational
  voluntaryClosed : voluntary
  pollutionControlEvidence : PollutionControlEvidence P C

def PolicyInstrumentCertificateClosed (P : EnvironmentalPolicy)
    (C : PollutionControlPackage P) (I : PolicyInstrumentCertificate P C) : Prop :=
  I.marketBased ∧ I.commandAndControl ∧ I.informational ∧ I.voluntary ∧
  PollutionControlClosed P C

theorem policy_instrument_certificate_closed (P : EnvironmentalPolicy)
    (C : PollutionControlPackage P) (I : PolicyInstrumentCertificate P C) :
    PolicyInstrumentCertificateClosed P C I := by
  exact And.intro I.marketBasedClosed
    (And.intro I.commandAndControlClosed
      (And.intro I.informationalClosed
        (And.intro I.voluntaryClosed
          (pollution_control_closed_from_evidence P C I.pollutionControlEvidence))))

structure PolicyInstrumentEvidenceTerms (P : EnvironmentalPolicy)
    (C : PollutionControlPackage P) (I : PolicyInstrumentCertificate P C) where
  marketBasedEvidence : I.marketBased
  commandAndControlEvidence : I.commandAndControl
  informationalEvidence : I.informational
  voluntaryEvidence : I.voluntary
  policyInstrumentClosed : PolicyInstrumentCertificateClosed P C I

def PolicyInstrumentCertificate.evidenceTerms (P : EnvironmentalPolicy)
    (C : PollutionControlPackage P) (I : PolicyInstrumentCertificate P C) :
    PolicyInstrumentEvidenceTerms P C I :=
  {
    marketBasedEvidence := I.marketBasedClosed
    commandAndControlEvidence := I.commandAndControlClosed
    informationalEvidence := I.informationalClosed
    voluntaryEvidence := I.voluntaryClosed
    policyInstrumentClosed := policy_instrument_certificate_closed P C I
  }

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse