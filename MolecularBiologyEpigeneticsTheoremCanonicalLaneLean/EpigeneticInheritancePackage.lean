import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure EpigeneticInheritancePackage where
  mitoticStability : Prop
  meioticInheritance : Prop
  paramutation : Prop
  transgenerationalMemory : Prop
  reprogrammingResistance : Prop

structure EpigeneticInheritanceEvidence (E : EpigeneticInheritancePackage) where
  mitoticStabilityClosed : E.mitoticStability
  meioticInheritanceClosed : E.meioticInheritance
  paramutationClosed : E.paramutation
  transgenerationalMemoryClosed : E.transgenerationalMemory
  reprogrammingResistanceClosed : E.reprogrammingResistance

def EpigeneticInheritanceClosed (E : EpigeneticInheritancePackage) : Prop :=
  E.mitoticStability ∧ E.meioticInheritance ∧ E.paramutation ∧ E.transgenerationalMemory ∧ E.reprogrammingResistance

theorem epigenetic_inheritance_closed_from_evidence (E : EpigeneticInheritancePackage) (Ev : EpigeneticInheritanceEvidence E) :
    EpigeneticInheritanceClosed E := by
  exact And.intro Ev.mitoticStabilityClosed (And.intro Ev.meioticInheritanceClosed (And.intro Ev.paramutationClosed (And.intro Ev.transgenerationalMemoryClosed Ev.reprogrammingResistanceClosed)))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse