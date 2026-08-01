import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.LectureBridgeLemmas

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse