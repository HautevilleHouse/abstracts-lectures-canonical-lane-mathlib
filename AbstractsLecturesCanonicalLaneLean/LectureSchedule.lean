import AbstractsLecturesCanonicalLaneLean.AbstractLectureObjects

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure LectureSchedulePackage where
  startTime : String
  endTime : String
  location : String
  speaker : String
  scheduleValid : Prop

structure LectureScheduleEvidence (S : LectureSchedulePackage) where
  scheduleValidClosed : S.scheduleValid

def LectureScheduleClosed (S : LectureSchedulePackage) : Prop :=
  S.scheduleValid

theorem lecture_schedule_closed_from_evidence (S : LectureSchedulePackage)
    (E : LectureScheduleEvidence S) : LectureScheduleClosed S := by
  exact E.scheduleValidClosed

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse