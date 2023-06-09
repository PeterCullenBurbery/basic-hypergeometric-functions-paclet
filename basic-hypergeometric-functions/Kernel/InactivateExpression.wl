(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`InactivateExpression;

Begin["`Private`"];

(* Define your public and private symbols here. *)

InactivateExpression // ClearAll

InactivateExpression::usage = "InactivateExpression[expr] inactivates Times, Sum, NSum, Integrate, and NIntegrate in expr."

SetAttributes[InactivateExpression, HoldAll]

InactivateExpression[expr_] :=
  Inactivate[expr, Alternatives @@ {Times, Sum, NIntegrate, Integrate,
     NSum, D, Derivative}]



     InactivateExpression[args___] := Null /; CheckArguments[InactivateExpression[args], 1] 

End[]; (* End `Private` *)

EndPackage[];
