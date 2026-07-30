import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

def ConstrainedEpigeneticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epigenetic_endgame (A : AdmissibleClass) :
    ConstrainedEpigeneticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse