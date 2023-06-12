(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`InactiveExpressionQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

InactiveExpressionQ // ClearAll

SetAttributes[InactiveExpressionQ, HoldAll]

InactiveExpressionQ::usage = "InactiveExpressionQ[expr] returns True if expr is an inactive expression, and False otherwise.";

InactiveExpressionQ[expr_] :=
    MatchQ[UnevaluatedHead[expr], Inactive[_]]

End[]; (* End `Private` *)

EndPackage[];
