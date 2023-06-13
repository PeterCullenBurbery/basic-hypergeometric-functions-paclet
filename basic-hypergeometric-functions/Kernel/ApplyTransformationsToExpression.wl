BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];
PeterBurbery`BasicHypergeometricFunctions`ApplyTransformationsToExpression;

Begin["`Private`"];

(* ::Section:: *)
(*ApplyTransformationsToExpression*)

ApplyTransformationsToExpression//ClearAll

ApplyTransformationsToExpression::usage="ApplyTransformationsToExpression[expr] applies various transformations to expr, including moving q to the front and placing sums outside of fractions."

(* ApplyTransformationsToExpression[input_]:=PolynomializeFractionPower[Activate[MoveHypergeometricFromNumeratorToPolynomial[RearrangeExpression[input]]//.{fraction:(_?FractionQ):>PolynomializeFractionPower[fraction]},Sum]] *)
ApplyTransformationsToExpression[input_]:=AddPlusMinus[RearrangeExpression[input]//. {x_?FractionQ /; ! ListQ[x] :> 
   FractionData[x]}]
ApplyTransformationsToExpression[args___]:=Null/;CheckArguments[ApplyTransformationsToExpression[args],1]



End[]
EndPackage[]