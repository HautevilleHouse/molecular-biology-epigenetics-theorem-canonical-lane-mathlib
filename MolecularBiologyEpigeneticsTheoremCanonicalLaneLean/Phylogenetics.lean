import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure PhylogeneticsPackage where
  phylogeneticTree : Prop
  evolutionaryDistance : Prop
  treeBuildingMethod : Prop
  bootstrapSupport : Prop

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.phylogeneticTree ∧ P.evolutionaryDistance ∧ P.treeBuildingMethod ∧ P.bootstrapSupport

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) :
    PhylogeneticsClosed P := by
  exact And.intro P.phylogeneticTree (And.intro P.evolutionaryDistance (And.intro P.treeBuildingMethod P.bootstrapSupport))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse
