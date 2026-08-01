import canonicalLaneMathlib.AdmissibleClass
import AbstractsLecturesCanonicalLaneLean.AbstractLectureStructure

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure PresentationLayerPackage (P : AbstractLecturePackage) where
  slidesAvailable : Prop
  notesComplete : Prop
  audienceLevel : Nat

def PresentationLayerClosed {P : AbstractLecturePackage} (PL : PresentationLayerPackage P) : Prop :=
  PL.slidesAvailable ∧ PL.notesComplete

theorem presentation_layer_closed_from_evidence
    {P : AbstractLecturePackage} (PL : PresentationLayerPackage P)
    (E : PL.slidesAvailable ∧ PL.notesComplete) : PresentationLayerClosed PL := by
  exact E

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse