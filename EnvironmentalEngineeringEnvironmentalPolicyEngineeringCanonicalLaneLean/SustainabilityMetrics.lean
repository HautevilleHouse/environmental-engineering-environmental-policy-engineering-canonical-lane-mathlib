import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringEnvironmentalPolicyEngineering

structure SustainabilityMetricPackage where
  metricName : String
  value : Float
  benchmark : Float
  improvementPotential : String
  dataSource : String

structure SustainabilityMetricEvidence (S : SustainabilityMetricPackage) where
  nameDefined : S.metricName ≠ ""
  valueAvailable : S.value > 0
  benchmarkSet : S.benchmark > 0
  sourceRecorded : S.dataSource ≠ ""

def SustainabilityMetricClosed (S : SustainabilityMetricPackage) : Prop :=
  S.metricName ≠ "" ∧ S.value > 0 ∧ S.benchmark > 0 ∧ S.dataSource ≠ ""

theorem sustainability_metric_closed_from_evidence (S : SustainabilityMetricPackage)
    (ev : SustainabilityMetricEvidence S) : SustainabilityMetricClosed S := by
  exact And.intro ev.nameDefined (And.intro ev.valueAvailable (And.intro ev.benchmarkSet ev.sourceRecorded))

end EnvironmentalEngineeringEnvironmentalPolicyEngineering
end HautevilleHouse