import AbstractsLecturesCanonicalLaneLean.LectureAnalyticProof

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure PresentationEvidenceTerms {S : LectureSchedulePackage}
    (C : PresentationAnalyticCertificate S) where
  slidesReady : C.slidesReady
  timeAllocated : C.timeAllocated
  audienceSeated : C.audienceSeated
  presentationCertificateClosed : PresentationAnalyticCertificateClosed C

def PresentationAnalyticCertificate.evidenceTerms {S : LectureSchedulePackage}
    (C : PresentationAnalyticCertificate S) : PresentationEvidenceTerms C := {
  slidesReady := C.slidesReadyClosed
  timeAllocated := C.timeAllocatedClosed
  audienceSeated := C.audienceSeatedClosed
  presentationCertificateClosed := presentation_analytic_certificate_closed C
}

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse