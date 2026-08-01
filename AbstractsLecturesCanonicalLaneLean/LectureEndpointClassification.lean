import AbstractsLecturesCanonicalLaneLean.LectureGeometrization

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureEndpointClassificationPackage (Z : LectureGeometrizationPackage) where
  targetAudience : Type u
  audienceTopology : TopologicalSpace targetAudience
  lectureConcluded : Prop
  summaryProvided : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetAudience 3
  endpointMatchesLectureGoal : Prop

structure LectureEndpointClassificationEvidence {Z : LectureGeometrizationPackage}
    (E : LectureEndpointClassificationPackage Z) where
  lectureConcludedClosed : E.lectureConcluded
  endpointMatchesLectureGoalClosed : E.endpointMatchesLectureGoal

def LectureEndpointClassificationClosed {Z : LectureGeometrizationPackage}
    (E : LectureEndpointClassificationPackage Z) : Prop :=
  E.lectureConcluded ∧ E.endpointMatchesLectureGoal

theorem lecture_endpoint_classification_closed_from_evidence
    {Z : LectureGeometrizationPackage}
    (E : LectureEndpointClassificationPackage Z)
    (Ev : LectureEndpointClassificationEvidence E) : LectureEndpointClassificationClosed E := by
  exact And.intro Ev.lectureConcludedClosed Ev.endpointMatchesLectureGoalClosed

theorem lecture_endpoint_classification_supplies_mathlib_statement
    {Z : LectureGeometrizationPackage}
    (E : LectureEndpointClassificationPackage Z) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      E.targetAudience E.audienceTopology 3 :=
  E.summaryProvided

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
