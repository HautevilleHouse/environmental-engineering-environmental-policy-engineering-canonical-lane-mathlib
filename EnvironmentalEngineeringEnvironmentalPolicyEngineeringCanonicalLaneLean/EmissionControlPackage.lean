import EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean.EnvironmentalPolicyModel

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

structure EmissionControlPackage {P : EnvironmentalPolicyPackage} (E : EnvironmentalPolicyEvidence P) where
  emissionInventoryComplete : Prop
  capAndTradeEfficiency : Prop
  technologyForcingStandard : Prop
  marketBasedMechanism : Prop

structure EmissionControlEvidence {P : EnvironmentalPolicyPackage} {E : EnvironmentalPolicyEvidence P} (C : EmissionControlPackage E) where
  emissionInventoryCompleteClosed : C.emissionInventoryComplete
  capAndTradeEfficiencyClosed : C.capAndTradeEfficiency
  technologyForcingStandardClosed : C.technologyForcingStandard
  marketBasedMechanismClosed : C.marketBasedMechanism

def EmissionControlClosed {P : EnvironmentalPolicyPackage} {E : EnvironmentalPolicyEvidence P} (C : EmissionControlPackage E) : Prop :=
  C.emissionInventoryComplete ∧ C.capAndTradeEfficiency ∧ C.technologyForcingStandard ∧ C.marketBasedMechanism

theorem emission_control_closed_from_evidence {P : EnvironmentalPolicyPackage} {E : EnvironmentalPolicyEvidence P} (C : EmissionControlPackage E) (Ev : EmissionControlEvidence C) :
    EmissionControlClosed C := by
  exact And.intro Ev.emissionInventoryCompleteClosed
    (And.intro Ev.capAndTradeEfficiencyClosed
      (And.intro Ev.technologyForcingStandardClosed Ev.marketBasedMechanismClosed))

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse