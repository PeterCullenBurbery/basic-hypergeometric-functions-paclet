(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];
PeterBurbery`BasicHypergeometricFunctions`ApplyTransformationsToExpression;

Begin["`Private`"];



(* ::Section:: *)
(*ApplyTransformationsToExpression*)


ApplyTransformationsToExpression//ClearAll
SetAttributes[ApplyTransformationsToExpression, {HoldAll}]


ApplyTransformationsToExpression::usage="ApplyTransformationsToExpression[expr] applies various transformations to expr, including moving q to the front and placing sums outside of fractions.";

(* ApplyTransformationsToExpression[input_]:=PolynomializeFractionPower[Activate[MoveHypergeometricFromNumeratorToPolynomial[RearrangeExpression[input]]//.{fraction:(_?FractionQ):>PolynomializeFractionPower[fraction]},Sum]] *)
ApplyTransformationsToExpression[input_]:=ReplaceRepeated[{p_^n_ q_^n_:>(p q)^n,p_^n_**q_^n_:>(p**q)^n,Sqrt[p_] Sqrt[q_]:>Sqrt[p q],NonCommutativeMultiply[Sqrt[p_],Sqrt[q_]]:>Sqrt[p**q]}]@AddPlusMinus[Quiet[RearrangeExpression[ReplaceAll[{NIntegrate[integrand_,{variable_,lower_,upper_},___]:>Inactive[Integrate][integrand,{variable,lower,upper}],Sum[summand_,{variable_,lower_,upper_},___]:>Inactive[Sum][summand,{variable,lower,upper}]}][input]],NIntegrate::ilim]//. {x_?FractionQ /; ! ListQ[x] :> 
   RearrangeExpression@FractionData[x]}]
ApplyTransformationsToExpression[args___]:=Null/;CheckArguments[ApplyTransformationsToExpression[args],1]



End[]
EndPackage[]
