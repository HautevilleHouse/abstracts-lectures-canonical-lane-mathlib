import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractEntropy

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractStabilityPackage {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} where
  scaleInvariantBound : Prop
  curvatureScaleControl : Prop
  blowupLimitStable : Prop

structure AbstractStabilityEvidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} (N : AbstractStabilityPackage) where
  scaleInvariantBoundClosed : N.scaleInvariantBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitStableClosed : N.blowupLimitStable

def AbstractStabilityClosed {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} (N : AbstractStabilityPackage) : Prop :=
  N.scaleInvariantBound ∧ N.curvatureScaleControl ∧ N.blowupLimitStable

theorem abstract_stability_closed_from_evidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} {Ep : AbstractEntropyPackage} (N : AbstractStabilityPackage) (Ev : AbstractStabilityEvidence N) : AbstractStabilityClosed N :=
  And.intro Ev.scaleInvariantBoundClosed (And.intro Ev.curvatureScaleControlClosed Ev.blowupLimitStableClosed)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
