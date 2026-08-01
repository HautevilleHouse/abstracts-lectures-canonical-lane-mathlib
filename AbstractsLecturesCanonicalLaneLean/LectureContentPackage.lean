import canonicalLaneMathlib.AdmissibleClass
import AbstractsLecturesCanonicalLaneLean.AbstractLectureStructure

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureContentPackage (P : AbstractLecturePackage) where
  mainTopic : Type u
  subtopics : List String
  definitionsCount : Nat

def LectureContentClosed {P : AbstractLecturePackage} (C : LectureContentPackage P) : Prop :=
  C.definitionsCount > 0

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse