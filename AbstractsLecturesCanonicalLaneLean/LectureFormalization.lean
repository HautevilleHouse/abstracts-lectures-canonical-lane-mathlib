import AbstractsLecturesCanonicalLaneLean.SourcePackage
import AbstractsLecturesCanonicalLaneLean.SourceDependencies

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

inductive LectureExpr where
  | var (name : String)
  | num (value : String)
  | add (lhs rhs : LectureExpr)
  | sub (lhs rhs : LectureExpr)
  | mul (lhs rhs : LectureExpr)
  | div (lhs rhs : LectureExpr)
  | neg (arg : LectureExpr)
  | abs (arg : LectureExpr)
  | min (lhs rhs : LectureExpr)
  | max (lhs rhs : LectureExpr)
  | raw (formula : String)
deriving Repr, DecidableEq

structure LectureComponent where
  key : String
  value : String
deriving Repr, DecidableEq

structure LectureFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  expr : LectureExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
  componentKeys : List String
  components : List LectureComponent
deriving Repr, DecidableEq

structure LectureFormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  lectureLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def lectureFormalizationCertificate : LectureFormalizationCertificate := {
  sourceRepo := sourceRepository,
  sourceCheckoutHead := sourceCheckoutHead,
  lectureLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
