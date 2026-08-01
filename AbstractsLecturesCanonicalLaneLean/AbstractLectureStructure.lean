import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractLecturePackage where
  contentDefined : Prop
  structureCoherent : Prop
  presentationValid : Prop

structure AbstractLectureEvidence (P : AbstractLecturePackage) where
  contentDefinedClosed : P.contentDefined
  structureCoherentClosed : P.structureCoherent
  presentationValidClosed : P.presentationValid

def AbstractLectureClosed (P : AbstractLecturePackage) : Prop :=
  P.contentDefined ∧ P.structureCoherent ∧ P.presentationValid

theorem abstract_lecture_closed_from_evidence (P : AbstractLecturePackage)
    (E : AbstractLectureEvidence P) : AbstractLectureClosed P := by
  exact And.intro E.contentDefinedClosed
    (And.intro E.structureCoherentClosed E.presentationValidClosed)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse