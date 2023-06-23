(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

PeterBurbery`BasicHypergeometricFunctions`ApplyTransformationsToExpression;

Begin["`Private`"];



(* ::Section:: *)
(*ApplyTransformationsToExpression*)


ApplyTransformationsToExpression // ClearAll

SetAttributes[ApplyTransformationsToExpression, {HoldAll}]

ApplyTransformationsToExpression::usage = "ApplyTransformationsToExpression[expr] applies various transformations to expr, including moving q to the front and placing sums outside of fractions.";

(* ApplyTransformationsToExpression[input_]:=PolynomializeFractionPower[Activate[MoveHypergeometricFromNumeratorToPolynomial[PeterBurbery`BasicHypergeometricFunctions`RearrangeExpression[input]]//.{fraction:(_?FractionQ):>PolynomializeFractionPower[fraction]},Sum]] *)

(*this first definition might not be up to date.*)

ApplyTransformationsToExpression[input_] :=
  ReplaceRepeated[{p_^n_ q_^n_ :> (p q) ^ n, p_^n_ ** q_^n_ :> (p ** 
    q) ^ n, Sqrt[p_] Sqrt[q_] :> Sqrt[p q], NonCommutativeMultiply[Sqrt[p_
    ], Sqrt[q_]] :> Sqrt[p ** q]}] @ PeterBurbery`BasicHypergeometricFunctions`AddPlusMinus[Quiet[PeterBurbery`BasicHypergeometricFunctions`RearrangeExpression[
    ReplaceAll[{NIntegrate[integrand_, {variable_, lower_, upper_}, ___] 
    :> Inactive[Integrate][integrand, {variable, lower, upper}], Sum[summand_,
     {variable_, lower_, upper_}, ___] :> Inactive[Sum][summand, {variable,
     lower, upper}]}][Function[{x}, Inactivate[x, Integrate | NIntegrate 
    | Sum | NSum | Product | NProduct | D], {HoldAll}] @ input]], NIntegrate
    ::ilim] //. {x_?FractionQ /; !ListQ[x] :> PeterBurbery`BasicHypergeometricFunctions`RearrangeExpression @ TransformFraction[
    x]}]

ApplyTransformationsToExpression[input_ /; MatchQ[input, (HoldForm | 
  Hold)[_]]] :=
  ReplaceRepeated[{p_^n_ q_^n_ :> (p q) ^ n, p_^n_ ** q_^n_ :> (p ** 
    q) ^ n, Sqrt[p_] Sqrt[q_] :> Sqrt[p q], NonCommutativeMultiply[Sqrt[p_
    ], Sqrt[q_]] :> Sqrt[p ** q]}] @ PeterBurbery`BasicHypergeometricFunctions`AddPlusMinus[Quiet[PeterBurbery`BasicHypergeometricFunctions`RearrangeExpression[
    ReplaceAll[{NIntegrate[integrand_, {variable_, lower_, upper_}, ___] 
    :> Inactive[Integrate][integrand, {variable, lower, upper}], Sum[summand_,
     {variable_, lower_, upper_}, ___] :> Inactive[Sum][summand, {variable,
     lower, upper}]}][Function[{x}, Inactivate[x, Integrate | NIntegrate 
    | Sum | NSum | Product | NProduct | D], {HoldAll}] @@ input]], NIntegrate
    ::ilim] //. {x_?FractionQ /; !ListQ[x] :> PeterBurbery`BasicHypergeometricFunctions`RearrangeExpression @ TransformFraction[
    x]}]

ApplyTransformationsToExpression[args___] :=
  Null /; CheckArguments[ApplyTransformationsToExpression[args], 1]

End[]

EndPackage[]
