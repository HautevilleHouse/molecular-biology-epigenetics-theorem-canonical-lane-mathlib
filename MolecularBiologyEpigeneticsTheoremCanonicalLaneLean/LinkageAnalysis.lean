import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  lodScore : Prop
  linkageEquilibrium : Prop
  markerMap : Prop

def LinkageAnalysisClosed (P : LinkageAnalysisPackage) : Prop :=
  P.recombinationFraction ∧ P.lodScore ∧ P.linkageEquilibrium ∧ P.markerMap

theorem linkage_analysis_closed_from_evidence (P : LinkageAnalysisPackage) :
    LinkageAnalysisClosed P := by
  exact And.intro P.recombinationFraction (And.intro P.lodScore (And.intro P.linkageEquilibrium P.markerMap))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse
