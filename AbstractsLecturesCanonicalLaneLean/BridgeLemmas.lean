import canonicalLaneMathlib.AdmissibleClass
import AbstractsLecturesCanonicalLaneLean.AbstractLectureStructure

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

def bridgeClosed (A : AbstractLectureAdmittedObject) : Prop :=
  A.structureDefined

theorem bridge_from_admissible_class (A : AbstractLectureAdmittedObject) :
    bridgeClosed A := by
  exact A.conclusion

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse