import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  transcriptionFactors : Prop
  rnaPolymeraseBinding : Prop
  promoterAccessibility : Prop
  expressionLevel : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  transcriptionFactorsClosed : G.transcriptionFactors
  rnaPolymeraseBindingClosed : G.rnaPolymeraseBinding
  promoterAccessibilityClosed : G.promoterAccessibility
  expressionLevelClosed : G.expressionLevel

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.transcriptionFactors ∧ G.rnaPolymeraseBinding ∧ G.promoterAccessibility ∧ G.expressionLevel

theorem gene_expression_regulation_closed_from_evidence (G : GeneExpressionRegulationPackage) (Ev : GeneExpressionRegulationEvidence G) :
    GeneExpressionRegulationClosed G := by
  exact And.intro Ev.transcriptionFactorsClosed (And.intro Ev.rnaPolymeraseBindingClosed (And.intro Ev.promoterAccessibilityClosed Ev.expressionLevelClosed))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse