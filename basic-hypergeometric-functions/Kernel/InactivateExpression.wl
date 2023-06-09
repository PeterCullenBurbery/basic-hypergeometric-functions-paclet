(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`InactivateExpression;

Begin["`Private`"];

(* Define your public and private symbols here. *)

InactivateExpression // ClearAll

Inactivate::usage = "InactivateExpression[input] inactivates Times,Sum, NSum, Integrate, and NIntegrate in input."

SetAttributes[InactivateExpression, HoldAll]

InactivateExpression[input_] :=
  Inactivate[input, Alternatives @@ {Times, Sum, NIntegrate, Integrate,
     NSum, D, Derivative}]

End[]; (* End `Private` *)

EndPackage[];
