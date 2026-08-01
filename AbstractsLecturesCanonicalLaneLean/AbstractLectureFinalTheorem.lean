import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractLectureClassification

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

def ConstrainedAbstractLectureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_abstract_lecture_endgame (A : AdmissibleClass) :
    ConstrainedAbstractLectureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse