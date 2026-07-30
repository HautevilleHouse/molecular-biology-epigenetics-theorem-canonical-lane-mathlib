import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure EpigeneticAdmittedObject where
  cellType : Type
  dnaSequence : Type
  histoneModification : Type
  methylationPattern : Prop
  chromatinState : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : EpigeneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse