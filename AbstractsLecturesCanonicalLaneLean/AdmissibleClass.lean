import canonicalLaneMathlib.AdmissibleClass
import AbstractsLecturesCanonicalLaneLean.AbstractLectureStructure

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractLectureAdmittedObject where
  content : Type u
  structureDefined : Prop
  conclusion : structureDefined

def admittedClosure (A : AbstractLectureAdmittedObject) : Prop :=
  A.structureDefined

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse