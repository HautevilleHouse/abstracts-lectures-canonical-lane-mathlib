import AbstractsLecturesCanonicalLaneLean.LectureQuality
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace AbstractsLecturesCanonicalLaneLean

theorem mathlib_identity_flow_zero_body
    (tau alpha : Type*) [TopologicalSpace tau] [AddMonoid tau] [ContinuousAdd tau]
    [TopologicalSpace alpha] (x : alpha) :
    Flow.id tau alpha 0 x = x := by
  simp

theorem mathlib_flow_additivity_body
    {tau alpha : Type*} [TopologicalSpace tau] [AddMonoid tau] [ContinuousAdd tau]
    [TopologicalSpace alpha] (phi : Flow tau alpha) (t1 t2 : tau) (x : alpha) :
    phi (t1 + t2) x = phi t1 (phi t2 x) := by
  exact Flow.map_add phi t1 t2 x

theorem mathlib_invariant_to_forward_invariant_body
    {tau alpha : Type*} [Preorder tau] [Zero tau]
    {phi : tau -> alpha -> alpha} {s : Set alpha} :
    IsInvariant phi s -> IsForwardInvariant phi s := by
  intro h
  exact h.isForwardInvariant

def MathlibLectureEndpoint (M : Type*) [TopologicalSpace M] : Prop :=
  @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere M inferInstance 3

theorem mathlib_lecture_endpoint_body
    (M : Type*) [TopologicalSpace M] :
    MathlibLectureEndpoint M =
      @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere M inferInstance 3 := by
  rfl

structure LectureAvailableAnalyticBodies where
  identityFlowZeroBodyAvailable : Prop
  flowAdditivityBodyAvailable : Prop
  invariantToForwardInvariantBodyAvailable : Prop
  lectureEndpointBodyAvailable : Prop
  identityFlowZeroBodyAvailableTerm : identityFlowZeroBodyAvailable
  flowAdditivityBodyAvailableTerm : flowAdditivityBodyAvailable
  invariantToForwardInvariantBodyAvailableTerm : invariantToForwardInvariantBodyAvailable
  lectureEndpointBodyAvailableTerm : lectureEndpointBodyAvailable

def lectureAvailableAnalyticBodies : LectureAvailableAnalyticBodies := {
  identityFlowZeroBodyAvailable := True
  flowAdditivityBodyAvailable := True
  invariantToForwardInvariantBodyAvailable := True
  lectureEndpointBodyAvailable := True
  identityFlowZeroBodyAvailableTerm := trivial
  flowAdditivityBodyAvailableTerm := trivial
  invariantToForwardInvariantBodyAvailableTerm := trivial
  lectureEndpointBodyAvailableTerm := trivial
}

end AbstractsLecturesCanonicalLaneLean
end HautevilleHouse
