import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure Lecture where
  title : String
  speaker : String
  abstractText : String
  isValidated : Prop

structure LectureSpace where
  lectures : List Lecture
  schedule : String

structure LectureAdmittedObject where
  lecture : Lecture
  conclusion : lecture.isValidated

structure LectureEndgameState where
  object : LectureAdmittedObject

def LectureWitnessClosed (L : LectureAdmittedObject) : Prop :=
  L.conclusion

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse