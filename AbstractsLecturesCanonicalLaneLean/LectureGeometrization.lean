import AbstractsLecturesCanonicalLaneLean.LectureCanonicalNeighborhoods

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureGeometrizationPackage (C : LectureCanonicalNeighborhoodsPackage) where
  finiteExtinctionAlternative : Prop
  thickThinDecomposition : Prop
  geometrizedPiecesClassified : Prop
  simplyConnectedCaseForcesSpherePiece : Prop

structure LectureGeometrizationEvidence {C : LectureCanonicalNeighborhoodsPackage}
    (Z : LectureGeometrizationPackage C) where
  finiteExtinctionAlternativeClosed : Z.finiteExtinctionAlternative
  thickThinDecompositionClosed : Z.thickThinDecomposition
  geometrizedPiecesClassifiedClosed : Z.geometrizedPiecesClassified
  simplyConnectedCaseForcesSpherePieceClosed : Z.simplyConnectedCaseForcesSpherePiece

def LectureGeometrizationClosed {C : LectureCanonicalNeighborhoodsPackage}
    (Z : LectureGeometrizationPackage C) : Prop :=
  Z.finiteExtinctionAlternative ∧ Z.thickThinDecomposition ∧
  Z.geometrizedPiecesClassified ∧ Z.simplyConnectedCaseForcesSpherePiece

theorem lecture_geometrization_closed_from_evidence
    {C : LectureCanonicalNeighborhoodsPackage}
    (Z : LectureGeometrizationPackage C) (E : LectureGeometrizationEvidence Z) :
    LectureGeometrizationClosed Z := by
  exact And.intro E.finiteExtinctionAlternativeClosed
    (And.intro E.thickThinDecompositionClosed
      (And.intro E.geometrizedPiecesClassifiedClosed
        E.simplyConnectedCaseForcesSpherePieceClosed))

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
