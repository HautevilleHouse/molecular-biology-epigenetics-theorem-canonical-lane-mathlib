import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequenceDatabase : Prop
  alignmentAlgorithm : Prop
  phylogeneticTree : Prop
  evolutionaryDistance : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  sequenceDatabaseClosed : S.sequenceDatabase
  alignmentAlgorithmClosed : S.alignmentAlgorithm
  phylogeneticTreeClosed : S.phylogeneticTree
  evolutionaryDistanceClosed : S.evolutionaryDistance

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.sequenceDatabase ∧ S.alignmentAlgorithm ∧ S.phylogeneticTree ∧ S.evolutionaryDistance

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (Ev : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro Ev.sequenceDatabaseClosed (And.intro Ev.alignmentAlgorithmClosed (And.intro Ev.phylogeneticTreeClosed Ev.evolutionaryDistanceClosed))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse