import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.LectureContent

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureClassificationPackage {L : LectureObject}
    {C : LectureContentPackage L} where
  topic : String
  difficultyLevel : Nat
  intendedAudience : String
  classificationValid : Prop

structure LectureClassificationEvidence {L : LectureObject}
    {C : LectureContentPackage L} (Cl : LectureClassificationPackage C) where
  classificationValidClosed : Cl.classificationValid

def LectureClassificationClosed {L : LectureObject}
    {C : LectureContentPackage L} (Cl : LectureClassificationPackage C) : Prop :=
  Cl.classificationValid

theorem lecture_classification_closed_from_evidence {L : LectureObject}
    {C : LectureContentPackage L} (Cl : LectureClassificationPackage C)
    (E : LectureClassificationEvidence Cl) : LectureClassificationClosed Cl :=
  E.classificationValidClosed

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse