import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

structure PollutionControlInstrument where
  emissionCap : Prop
  tradablePermit : Prop
  monitoringEnforcement : Prop
  costEffectiveness : Prop
  environmentalIntegrity : Prop

structure PollutionControlInstrumentEvidence (I : PollutionControlInstrument) where
  emissionCapClosed : I.emissionCap
  tradablePermitClosed : I.tradablePermit
  monitoringEnforcementClosed : I.monitoringEnforcement
  costEffectivenessClosed : I.costEffectiveness
  environmentalIntegrityClosed : I.environmentalIntegrity

def PollutionControlInstrumentClosed (I : PollutionControlInstrument) : Prop :=
  I.emissionCap ∧ I.tradablePermit ∧ I.monitoringEnforcement ∧ I.costEffectiveness ∧ I.environmentalIntegrity

theorem pollution_control_instrument_closed_from_evidence
    (I : PollutionControlInstrument) (Ev : PollutionControlInstrumentEvidence I) :
    PollutionControlInstrumentClosed I := by
  exact And.intro Ev.emissionCapClosed
    (And.intro Ev.tradablePermitClosed
      (And.intro Ev.monitoringEnforcementClosed
        (And.intro Ev.costEffectivenessClosed Ev.environmentalIntegrityClosed)))

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse