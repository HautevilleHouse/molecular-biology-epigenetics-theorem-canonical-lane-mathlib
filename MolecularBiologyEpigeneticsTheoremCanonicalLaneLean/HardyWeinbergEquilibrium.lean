import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEpigeneticsTheoremCanonicalLaneLean

structure HardyWeinbergPackage where
  populationGenotypeFrequencies : Prop
  alleleFrequencies : Prop
  hardyWeinbergEquilibriumHolds : Prop
  randomMatingAssumption : Prop
  noEvolutionaryForces : Prop

structure HardyWeinbergEvidence (P : HardyWeinbergPackage) where
  populationGenotypeFrequenciesClosed : P.populationGenotypeFrequencies
  alleleFrequenciesClosed : P.alleleFrequencies
  hardyWeinbergEquilibriumHoldsClosed : P.hardyWeinbergEquilibriumHolds
  randomMatingAssumptionClosed : P.randomMatingAssumption
  noEvolutionaryForcesClosed : P.noEvolutionaryForces

def HardyWeinbergClosed (P : HardyWeinbergPackage) : Prop :=
  P.populationGenotypeFrequencies ∧ P.alleleFrequencies ∧
  P.hardyWeinbergEquilibriumHolds ∧ P.randomMatingAssumption ∧
  P.noEvolutionaryForces

theorem hardy_weinberg_closed_from_evidence (P : HardyWeinbergPackage) (E : HardyWeinbergEvidence P) :
    HardyWeinbergClosed P := by
  exact And.intro E.populationGenotypeFrequenciesClosed
    (And.intro E.alleleFrequenciesClosed
      (And.intro E.hardyWeinbergEquilibriumHoldsClosed
        (And.intro E.randomMatingAssumptionClosed E.noEvolutionaryForcesClosed)))

end MolecularBiologyEpigeneticsTheoremCanonicalLaneLean
end HautevilleHouse
