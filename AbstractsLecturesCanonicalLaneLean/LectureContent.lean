import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractLectureObject

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure ContentSection where
  heading : String
  body : String
  references : List String

structure LectureContentPackage (L : LectureObject) where
  sections : List ContentSection
  hasSections : Prop
  sectionOrderValid : Prop

structure LectureContentEvidence {L : LectureObject} (C : LectureContentPackage L) where
  hasSectionsClosed : C.hasSections
  sectionOrderValidClosed : C.sectionOrderValid

def LectureContentClosed {L : LectureObject} (C : LectureContentPackage L) : Prop :=
  C.hasSections ∧ C.sectionOrderValid

theorem lecture_content_closed_from_evidence {L : LectureObject}
    (C : LectureContentPackage L) (E : LectureContentEvidence C) :
    LectureContentClosed C :=
  And.intro E.hasSectionsClosed E.sectionOrderValidClosed

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse