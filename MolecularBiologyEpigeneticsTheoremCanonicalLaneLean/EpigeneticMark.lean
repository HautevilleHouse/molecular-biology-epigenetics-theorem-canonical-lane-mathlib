import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure EpigeneticMarkPackage where
  dnaMethylationPattern : Prop
  histoneModificationProfile : Prop
  chromatinAccessibility : Prop
  transcriptionalEffect : Prop
  heritability : Prop

structure EpigeneticMarkEvidence (E : EpigeneticMarkPackage) where
  dnaMethylationPatternClosed : E.dnaMethylationPattern
  histoneModificationProfileClosed : E.histoneModificationProfile
  chromatinAccessibilityClosed : E.chromatinAccessibility
  transcriptionalEffectClosed : E.transcriptionalEffect
  heritabilityClosed : E.heritability

def EpigeneticMarkClosed (E : EpigeneticMarkPackage) : Prop :=
  E.dnaMethylationPattern ∧ E.histoneModificationProfile ∧
  E.chromatinAccessibility ∧ E.transcriptionalEffect ∧ E.heritability

theorem epigenetic_mark_closed_from_evidence (E : EpigeneticMarkPackage)
    (Ev : EpigeneticMarkEvidence E) : EpigeneticMarkClosed E := by
  exact And.intro Ev.dnaMethylationPatternClosed
    (And.intro Ev.histoneModificationProfileClosed
      (And.intro Ev.chromatinAccessibilityClosed
        (And.intro Ev.transcriptionalEffectClosed Ev.heritabilityClosed)))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse