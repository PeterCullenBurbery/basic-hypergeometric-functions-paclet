(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`AllowedExpressionQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

AllowedExpressionQ // ClearAll
AllowedExpressionQ::usage="AllowedExpressionQ[expr] Returns true if expr is an allowed expression with times, power, plus, or just an expression"
AllowedExpressionQ[input_] :=
    AnyTrue[MatchQ[input, #]&][{_, base_^power_, _Plus, _Times}]

End[]; (* End `Private` *)

EndPackage[];
