import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractAdmittedObject where
  lectureType : Type
  statementsClosed : Prop
  proofsConstructed : statementsClosed

structure AdmissibleClass where
  object : AbstractAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse