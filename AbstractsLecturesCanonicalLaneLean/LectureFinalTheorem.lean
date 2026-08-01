import AbstractsLecturesCanonicalLaneLean.LectureGateLemmas

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

def ConstrainedLectureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lecture_endgame (A : AdmissibleClass) :
    ConstrainedLectureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse