import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean

structure Pollutant where
  name : String
  emissionRate : ℝ
  persistence : ℝ
  toxicity : ℝ

def PollutantClosed (p : Pollutant) : Prop :=
  p.emissionRate ≥ 0 ∧ p.persistence ≥ 0 ∧ p.toxicity ≥ 0

theorem pollutant_closed_default : PollutantClosed (⟨"CO2", 1.0, 0.5, 0.1⟩) := by
  unfold PollutantClosed
  exact ⟨by norm_num, by norm_num, by norm_num⟩

structure EmissionSource where
  source : Type
  emissions : source → Pollutant
  location : source → ℝ × ℝ

def EmissionSourceClosed (s : EmissionSource) : Prop :=
  True

theorem emission_source_closed_default : EmissionSourceClosed (⟨Unit, λ _ => ⟨"CH4", 0.5, 1.0, 0.2⟩, λ _ => (0,0)⟩) :=
  by exact True.intro

structure EnvironmentalPolicy where
  policyName : String
  regulatedPollutants : List String
  emissionLimit : ℝ → ℝ  -- function from time to limit

def EnvironmentalPolicyClosed (p : EnvironmentalPolicy) : Prop :=
  p.emissionLimit 0 ≥ 0

theorem environmental_policy_closed_default : EnvironmentalPolicyClosed (⟨"Clean Air Act", ["SO2", "NOx"], λ _ => 100.0⟩) :=
  by
    unfold EnvironmentalPolicyClosed
    norm_num

end EnvironmentalEngineeringEnvironmentalPolicyEngineeringCanonicalLaneLean
end HautevilleHouse