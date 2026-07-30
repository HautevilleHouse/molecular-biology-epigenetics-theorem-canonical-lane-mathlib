import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure SequenceAlignmentPackage where
  editDistance : Prop
  alignmentAlgorithm : Prop
  gapPenalty : Prop
  substitutionMatrix : Prop
  optimalAlignment : Prop

def SequenceAlignmentClosed (P : SequenceAlignmentPackage) : Prop :=
  P.editDistance ∧ P.alignmentAlgorithm ∧ P.gapPenalty ∧ P.substitutionMatrix ∧ P.optimalAlignment

theorem sequence_alignment_closed_from_evidence (P : SequenceAlignmentPackage) :
    SequenceAlignmentClosed P := by
  exact And.intro P.editDistance (And.intro P.alignmentAlgorithm (And.intro P.gapPenalty (And.intro P.substitutionMatrix P.optimalAlignment)))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse
