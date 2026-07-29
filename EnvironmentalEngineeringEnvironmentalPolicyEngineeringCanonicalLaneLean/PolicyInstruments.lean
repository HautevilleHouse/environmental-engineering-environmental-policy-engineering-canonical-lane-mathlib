import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure PolicyInstrumentPackage where
  instrumentType : String
  targetSector : String
  stringency : Float
  enforcementMechanism : String
  complianceRate : Float

structure PolicyInstrumentEvidence (P : PolicyInstrumentPackage) where
  typeDefined : P.instrumentType ∈ {"tax", "permit", "subsidy", "regulation"}
  sectorSpecified : P.targetSector ≠ ""
  stringencySet : P.stringency > 0
  enforcementExists : P.enforcementMechanism ≠ ""
  complianceAboveThreshold : P.complianceRate ≥ 0.8

def PolicyInstrumentClosed (P : PolicyInstrumentPackage) : Prop :=
  P.instrumentType ∈ {"tax", "permit", "subsidy", "regulation"} ∧
  P.targetSector ≠ "" ∧ P.stringency > 0 ∧
  P.enforcementMechanism ≠ "" ∧ P.complianceRate ≥ 0.8

theorem policy_instrument_closed_from_evidence (P : PolicyInstrumentPackage)
    (ev : PolicyInstrumentEvidence P) : PolicyInstrumentClosed P := by
  exact And.intro ev.typeDefined (And.intro ev.sectorSpecified
    (And.intro ev.stringencySet (And.intro ev.enforcementExists ev.complianceAboveThreshold)))

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse