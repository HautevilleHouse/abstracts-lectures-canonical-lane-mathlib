import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AdmissibleClass where
  object : LectureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LectureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse