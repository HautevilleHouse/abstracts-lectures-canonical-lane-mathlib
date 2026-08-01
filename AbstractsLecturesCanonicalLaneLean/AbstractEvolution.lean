import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractStructure

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractEvolutionPackage (S : AbstractStructurePackage) where
  timeParameter : Type u
  lectureAt : timeParameter → Type v
  initialLectureMatches : Prop
  differentiableLectureFamily : Prop
  lectureEvolutionEquation : Prop
  maximalTimeInterval : Prop

structure AbstractEvolutionEvidence {S : AbstractStructurePackage} (F : AbstractEvolutionPackage S) where
  initialLectureMatchesClosed : F.initialLectureMatches
  differentiableLectureFamilyClosed : F.differentiableLectureFamily
  lectureEvolutionEquationClosed : F.lectureEvolutionEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def AbstractEvolutionClosed {S : AbstractStructurePackage} (F : AbstractEvolutionPackage S) : Prop :=
  F.initialLectureMatches ∧ F.differentiableLectureFamily ∧ F.lectureEvolutionEquation ∧ F.maximalTimeInterval

theorem abstract_evolution_closed_from_evidence {S : AbstractStructurePackage} (F : AbstractEvolutionPackage S) (E : AbstractEvolutionEvidence F) : AbstractEvolutionClosed F :=
  And.intro E.initialLectureMatchesClosed (And.intro E.differentiableLectureFamilyClosed (And.intro E.lectureEvolutionEquationClosed E.maximalTimeIntervalClosed))

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
