import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractLectureObject

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LectureAdmittedObject A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse