import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractStructurePackage where
  object : Type u
  topology : TopologicalSpace object
  lectureMetric : Type v
  abstractProperty : Prop
  smoothStructure : Prop
  lectureMetricSmooth : Prop
  abstractPropertyLawful : Prop

structure AbstractStructureEvidence (P : AbstractStructurePackage) where
  abstractPropertyClosed : P.abstractProperty
  smoothStructureClosed : P.smoothStructure
  lectureMetricSmoothClosed : P.lectureMetricSmooth
  abstractPropertyLawfulClosed : P.abstractPropertyLawful

def AbstractStructureClosed (P : AbstractStructurePackage) : Prop :=
  P.abstractProperty ∧ P.smoothStructure ∧ P.lectureMetricSmooth ∧ P.abstractPropertyLawful

theorem abstract_structure_closed_from_evidence (P : AbstractStructurePackage) (E : AbstractStructureEvidence P) : AbstractStructureClosed P :=
  And.intro E.abstractPropertyClosed (And.intro E.smoothStructureClosed (And.intro E.lectureMetricSmoothClosed E.abstractPropertyLawfulClosed))

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
