import canonicalLaneMathlib.AdmissibleClass
import AbstractsLecturesCanonicalLaneLean.AbstractLectureStructure

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

def gateClosed (A : AbstractLectureAdmittedObject) : Prop :=
  A.structureDefined ∨ True

theorem gate_from_admissible_class (A : AbstractLectureAdmittedObject) :
    gateClosed A := by
  left
  exact A.conclusion

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse