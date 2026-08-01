import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.LectureClassification

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure CanonicalFormPackage {L : LectureObject}
    {C : LectureContentPackage L} {Cl : LectureClassificationPackage C} where
  standardTemplate : String
  formValid : Prop
  canonicalRepresentation : Prop

structure CanonicalFormEvidence {L : LectureObject}
    {C : LectureContentPackage L} {Cl : LectureClassificationPackage C}
    (F : CanonicalFormPackage Cl) where
  formValidClosed : F.formValid
  canonicalRepresentationClosed : F.canonicalRepresentation

def CanonicalFormClosed {L : LectureObject}
    {C : LectureContentPackage L} {Cl : LectureClassificationPackage C}
    (F : CanonicalFormPackage Cl) : Prop :=
  F.formValid ∧ F.canonicalRepresentation

theorem canonical_form_closed_from_evidence {L : LectureObject}
    {C : LectureContentPackage L} {Cl : LectureClassificationPackage C}
    (F : CanonicalFormPackage Cl) (E : CanonicalFormEvidence F) :
    CanonicalFormClosed F :=
  And.intro E.formValidClosed E.canonicalRepresentationClosed

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse