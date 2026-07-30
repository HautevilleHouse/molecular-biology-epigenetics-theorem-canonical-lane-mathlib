import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure PhylogeneticTreePackage where
  sequenceData : Prop
  evolutionaryModel : Prop
  treeTopology : Prop
  branchLengths : Prop
  bootstrapSupport : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  sequenceDataClosed : P.sequenceData
  evolutionaryModelClosed : P.evolutionaryModel
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.sequenceData ∧ P.evolutionaryModel ∧ P.treeTopology ∧ P.branchLengths ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.sequenceDataClosed
    (And.intro E.evolutionaryModelClosed
      (And.intro E.treeTopologyClosed
        (And.intro E.branchLengthsClosed E.bootstrapSupportClosed)))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse