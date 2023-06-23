(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`EquationQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

EquationQ // ClearAll

EquationQ::usage = "EquationQ[expr] returns True if expr is an equation, and False otherwise."

SetAttributes[EquationQ, {HoldAll}]

EquationQ[b_] :=
(* Which[
    HeldExpressionQ[b],
        PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead @@ b === Equal
    ,
    !HeldExpressionQ[b],
        PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead[b] === Equal
] *)PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead[b] === Equal

EquationQ[args___] :=
    Null /; CheckArguments[EquationQ[args], 1]

End[]; (* End `Private` *)

EndPackage[];
