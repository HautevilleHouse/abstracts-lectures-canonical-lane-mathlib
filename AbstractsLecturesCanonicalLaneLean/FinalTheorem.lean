import canonicalLaneMathlib.AdmissibleClass
import AbstractsLecturesCanonicalLaneLean.BridgeLemmas
import AbstractsLecturesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

def ConstrainedAbstractLectureClosure (A : AbstractLectureAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem abstract_lecture_endgame (A : AbstractLectureAdmittedObject) :
    ConstrainedAbstractLectureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse