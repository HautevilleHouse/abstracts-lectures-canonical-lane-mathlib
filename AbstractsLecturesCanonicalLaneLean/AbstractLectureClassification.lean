import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractLectureStructure

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureSeriesPackage (L : AbstractLecturePackage) where
  seriesName : String
  organizer : String
  frequency : String -- e.g., "weekly", "biweekly"
  venue : String
  targetAudience : String

structure LectureSeriesEvidence {L : AbstractLecturePackage} (S : LectureSeriesPackage L) where
  seriesNameClosed : S.seriesName ≠ ""
  organizerClosed : S.organizer ≠ ""
  frequencyClosed : S.frequency = "weekly" ∨ S.frequency = "biweekly"
  venueClosed : S.venue ≠ ""
  targetAudienceClosed : S.targetAudience ≠ ""

def LectureSeriesClosed {L : AbstractLecturePackage} (S : LectureSeriesPackage L) : Prop :=
  S.seriesName ≠ "" ∧ S.organizer ≠ "" ∧
  (S.frequency = "weekly" ∨ S.frequency = "biweekly") ∧
  S.venue ≠ "" ∧ S.targetAudience ≠ ""

theorem lecture_series_closed_from_evidence {L : AbstractLecturePackage} (S : LectureSeriesPackage L) (E : LectureSeriesEvidence S) :
    LectureSeriesClosed S := by
  exact And.intro E.seriesNameClosed (And.intro E.organizerClosed (And.intro E.frequencyClosed (And.intro E.venueClosed E.targetAudienceClosed)))

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse