
BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

PeterBurbery`BasicHypergeometricFunctions`PutSumOutsideFraction;

Begin["`Private`"];

PutSumOutsideFraction//ClearAll
PutSumOutsideFraction::usage="PutSumOutsideFraction[input] puts all sums in the fraction input outside the fraction.  It assumes that the input is a fraction with a numerator and denominator, and that the numerator is a sum of terms, some of which are sums.  It returns the same fraction, but with the sums in the numerator moved outside the fraction.  It does not change the denominator.  It does not change the order of the terms in the numerator.  It does not change the order of the terms in the sums in the numerator.  It does not change the order of the terms in the sums in the denominator.  It does not change the order of the terms in the denominator.  It does not change the order of the variables in the sums.  It does not change the order of the variables in the sums in the numerator."
PutSumOutsideFraction[input_?FractionQ] := 
 Module[{numerator, denominator, sumsInNumerator, 
   otherthingsInNumerator}, {numerator, denominator} = 
   NumeratorDenominator[input]; 
  sumsInNumerator = 
   Cases[numerator, 
    sum : Sum[summand : __, {variable_, lowerbound_, upperbound_}], 
    All, Heads -> True]; 
  otherthingsInNumerator = 
   UnsortedComplement[List @@ numerator, sumsInNumerator]; 
  NonCommutativeMultiply[(1/denominator)
   Which[1 < Length[otherthingsInNumerator], 
    NonCommutativeMultiply @@ otherthingsInNumerator, 
    1 === Length[otherthingsInNumerator], 
    First[otherthingsInNumerator]], Sequence @@ sumsInNumerator]]

PutSumOutsideFraction[args___]:=
Null/;CheckArguments[PutSumOutsideFraction[args],1]


End[]
EndPackage[]