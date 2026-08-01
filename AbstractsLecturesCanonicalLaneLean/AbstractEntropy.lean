import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractsLecturesCanonicalLaneLean.AbstractExistence

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

structure AbstractEntropyPackage {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} where
  entropyFunctional : Type u
  reducedVolume : Type v
  monotonicityFormula : Prop
  entropyLowerBound : Prop
  noLocalEntropyCollapseInput : Prop

structure AbstractEntropyEvidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} (Ep : AbstractEntropyPackage) where
  monotonicityFormulaClosed : Ep.monotonicityFormula
  entropyLowerBoundClosed : Ep.entropyLowerBound
  noLocalEntropyCollapseInputClosed : Ep.noLocalEntropyCollapseInput

def AbstractEntropyClosed {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} (Ep : AbstractEntropyPackage) : Prop :=
  Ep.monotonicityFormula ∧ Ep.entropyLowerBound ∧ Ep.noLocalEntropyCollapseInput

theorem abstract_entropy_closed_from_evidence {S : AbstractStructurePackage} {F : AbstractEvolutionPackage S} {E : AbstractExistencePackage F} (Ep : AbstractEntropyPackage) (Ev : AbstractEntropyEvidence Ep) : AbstractEntropyClosed Ep :=
  And.intro Ev.monotonicityFormulaClosed (And.intro Ev.entropyLowerBoundClosed Ev.noLocalEntropyCollapseInputClosed)

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
