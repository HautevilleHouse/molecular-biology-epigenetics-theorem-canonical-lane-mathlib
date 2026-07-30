import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure CentralDogmaPackage where
  dnaSequence : Type u
  rnaTranscript : Type v
  proteinProduct : Type w
  replicationFidelity : Prop
  transcriptionInitiation : Prop
  translationElongation : Prop

structure CentralDogmaEvidence (C : CentralDogmaPackage) where
  replicationFidelityClosed : C.replicationFidelity
  transcriptionInitiationClosed : C.transcriptionInitiation
  translationElongationClosed : C.translationElongation

def CentralDogmaClosed (C : CentralDogmaPackage) : Prop :=
  C.replicationFidelity ∧ C.transcriptionInitiation ∧ C.translationElongation

theorem central_dogma_closed_from_evidence
    (C : CentralDogmaPackage) (E : CentralDogmaEvidence C) :
    CentralDogmaClosed C := by
  exact And.intro E.replicationFidelityClosed
    (And.intro E.transcriptionInitiationClosed E.translationElongationClosed)

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse