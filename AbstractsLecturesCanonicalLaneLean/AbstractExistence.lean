import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractEvolution

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractExistencePackage {S : AbstractStructurePackage} (F : AbstractEvolutionPackage S) where
  initialLectureRegular : Prop
  parabolicWellPosedness : Prop
  localExistenceInterval : Prop
  uniquenessOnOverlap : Prop
  smoothDependence : Prop

structure AbstractExistenceEvidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} (E : AbstractExistencePackage F) where
  initialLectureRegularClosed : E.initialLectureRegular
  parabolicWellPosednessClosed : E.parabolicWellPosedness
  localExistenceIntervalClosed : E.localExistenceInterval
  uniquenessOnOverlapClosed : E.uniquenessOnOverlap
  smoothDependenceClosed : E.smoothDependence

def AbstractExistenceClosed {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} (E : AbstractExistencePackage F) : Prop :=
  E.initialLectureRegular ∧ E.parabolicWellPosedness ∧ E.localExistenceInterval ∧ E.uniquenessOnOverlap ∧ E.smoothDependence

theorem abstract_existence_closed_from_evidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} (E : AbstractExistencePackage F) (Ev : AbstractExistenceEvidence E) : AbstractExistenceClosed E :=
  And.intro Ev.initialLectureRegularClosed (And.intro Ev.parabolicWellPosednessClosed (And.intro Ev.localExistenceIntervalClosed (And.intro Ev.uniquenessOnOverlapClosed Ev.smoothDependenceClosed)))

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
