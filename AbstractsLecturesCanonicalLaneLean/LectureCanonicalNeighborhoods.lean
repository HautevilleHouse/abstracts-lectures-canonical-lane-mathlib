import AbstractsLecturesCanonicalLaneLean.LectureQuality

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureCanonicalNeighborhoodsPackage (Q : LectureQualityPackage) where
  highQualityRegionCovered : Prop
  structureDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderDelivery : Prop

structure LectureCanonicalNeighborhoodsEvidence {Q : LectureQualityPackage} (C : LectureCanonicalNeighborhoodsPackage Q) where
  highQualityRegionCoveredClosed : C.highQualityRegionCovered
  structureDecompositionClosed : C.structureDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderDeliveryClosed : C.persistenceUnderDelivery

def LectureCanonicalNeighborhoodsClosed {Q : LectureQualityPackage} (C : LectureCanonicalNeighborhoodsPackage Q) : Prop :=
  C.highQualityRegionCovered ∧ C.structureDecomposition ∧
  C.scaleCompatibility ∧ C.persistenceUnderDelivery

theorem lecture_canonical_neighborhoods_closed_from_evidence
    {Q : LectureQualityPackage} (C : LectureCanonicalNeighborhoodsPackage Q)
    (E : LectureCanonicalNeighborhoodsEvidence C) : LectureCanonicalNeighborhoodsClosed C := by
  exact And.intro E.highQualityRegionCoveredClosed
    (And.intro E.structureDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderDeliveryClosed))

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
