import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureObject where
  title : String
  author : String
  date : Nat
  abstract : String

definition LectureAdmittedObject (L : LectureObject) : Prop := True

structure AdmissibleClass where
  object : LectureObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LectureAdmittedObject A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse