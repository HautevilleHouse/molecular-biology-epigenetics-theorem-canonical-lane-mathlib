import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type u
  topology : Type v
  branchLengths : Type w
  correctTopology : Prop
  branchLengthsEstimated : Prop
  modelFit : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  correctTopologyClosed : P.correctTopology
  branchLengthsEstimatedClosed : P.branchLengthsEstimated
  modelFitClosed : P.modelFit

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.correctTopology ∧ P.branchLengthsEstimated ∧ P.modelFit

theorem phylogenetic_tree_closed_from_evidence
    (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.correctTopologyClosed
    (And.intro E.branchLengthsEstimatedClosed E.modelFitClosed)

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse