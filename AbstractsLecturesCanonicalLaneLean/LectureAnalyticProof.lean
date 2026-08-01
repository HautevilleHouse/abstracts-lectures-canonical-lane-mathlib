import AbstractsLecturesCanonicalLaneLean.LectureSchedule

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure PresentationAnalyticCertificate (S : LectureSchedulePackage) where
  slidesReady : Prop
  timeAllocated : Prop
  audienceSeated : Prop
  slidesReadyClosed : slidesReady
  timeAllocatedClosed : timeAllocated
  audienceSeatedClosed : audienceSeated
  scheduleEvidence : LectureScheduleEvidence S

def PresentationAnalyticCertificateClosed {S : LectureSchedulePackage}
    (C : PresentationAnalyticCertificate S) : Prop :=
  C.slidesReady ∧ C.timeAllocated ∧ C.audienceSeated ∧ LectureScheduleClosed S

theorem presentation_analytic_certificate_closed {S : LectureSchedulePackage}
    (C : PresentationAnalyticCertificate S) : PresentationAnalyticCertificateClosed C := by
  exact And.intro C.slidesReadyClosed
    (And.intro C.timeAllocatedClosed
      (And.intro C.audienceSeatedClosed
        (lecture_schedule_closed_from_evidence S C.scheduleEvidence)))

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse