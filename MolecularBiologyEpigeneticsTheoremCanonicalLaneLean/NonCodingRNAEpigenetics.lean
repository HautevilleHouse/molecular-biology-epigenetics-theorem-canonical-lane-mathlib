import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure NonCodingRNAEpigenetics where
  rnaType : Type u
  mechanismOfAction : Prop
  targetGeneSilencing : Prop
  heterochromatinFormation : Prop
  paramutationPotential : Prop

structure NonCodingRNAEvidence (N : NonCodingRNAEpigenetics) where
  mechanismOfActionClosed : N.mechanismOfAction
  targetGeneSilencingClosed : N.targetGeneSilencing
  heterochromatinFormationClosed : N.heterochromatinFormation
  paramutationPotentialClosed : N.paramutationPotential

def NonCodingRNAEpigeneticsClosed (N : NonCodingRNAEpigenetics) : Prop :=
  N.mechanismOfAction ∧ N.targetGeneSilencing ∧ N.heterochromatinFormation ∧ N.paramutationPotential

theorem non_coding_rna_epigenetics_closed_from_evidence (N : NonCodingRNAEpigenetics) (E : NonCodingRNAEvidence N) :
    NonCodingRNAEpigeneticsClosed N := by
  exact And.intro E.mechanismOfActionClosed (And.intro E.targetGeneSilencingClosed (And.intro E.heterochromatinFormationClosed E.paramutationPotentialClosed))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse