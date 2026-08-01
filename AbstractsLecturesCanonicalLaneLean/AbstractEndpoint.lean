import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractStability

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractEndpointPackage {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} {N : AbstractStabilityPackage} where
  targetObject : Type u
  targetTopology : TopologicalSpace targetObject
  simplyConnectedClosedAbstract : Prop
  sphereEndpoint : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetObject 3
  endpointMatchesAbstractStatement : Prop

structure AbstractEndpointEvidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} {N : AbstractStabilityPackage} (P : AbstractEndpointPackage) where
  simplyConnectedClosedAbstractClosed : P.simplyConnectedClosedAbstract
  endpointMatchesAbstractStatementClosed : P.endpointMatchesAbstractStatement

def AbstractEndpointClosed {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} {N : AbstractStabilityPackage} (P : AbstractEndpointPackage) : Prop :=
  P.simplyConnectedClosedAbstract ∧ P.endpointMatchesAbstractStatement

theorem abstract_endpoint_closed_from_evidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} {N : AbstractStabilityPackage} (P : AbstractEndpointPackage) (Ev : AbstractEndpointEvidence P) : AbstractEndpointClosed P :=
  And.intro Ev.simplyConnectedClosedAbstractClosed Ev.endpointMatchesAbstractStatementClosed

theorem abstract_endpoint_supplies_sphere {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} {N : AbstractStabilityPackage} (P : AbstractEndpointPackage) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere P.targetObject P.targetTopology 3 :=
  P.sphereEndpoint

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
