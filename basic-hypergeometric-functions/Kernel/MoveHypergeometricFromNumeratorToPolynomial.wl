BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"]
PeterBurbery`BasicHypergeometricFunctions`MoveHypergeometricFromNumeratorToPolynomial;
Begin["Private`"];
MoveHypergeometricFromNumeratorToPolynomial//ClearAll
MoveHypergeometricFromNumeratorToPolynomial::usage="MoveHypergeometricFromNumeratorToPolynomial[expr] moves all very well poised basic hypergeometric functions in expr to the numerator."
MoveHypergeometricFromNumeratorToPolynomial[input_]:=

 ReplaceAll[{sum : 
       Sum[summand : _, {variable_, lowerbound_, upperbound_}] /; 
      FreeQ[summand, Sum, All, Heads -> True] :> 
     VeryWellPoisedHypergeometricToNumerator[sum]}][input]
     MoveHypergeometricFromNumeratorToPolynomial[args___]:=Null/;CheckArguments[MoveHypergeometricFromNumeratorToPolynomial[args],1]

     End[];
     EndPackage[];