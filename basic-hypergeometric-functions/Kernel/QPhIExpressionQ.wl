(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPhIExpressionQ;

Begin["`Private`"];

QPhIExpressionQ // ClearAll

QPhIExpressionQ::usage = "QPhIExpressionQ[expr] returns True if expr is a valid QPhi expression, and False otherwise.";

QPhIExpressionQ[input_] :=
    MatchQ[input, (_ ? (Function[{symbol}, Quiet[StringMatchQ[Quiet[FullSymbolName[
        symbol], General::strse], "*`QPhI"], StringMatchQ::strse], {}]))[___]
        ]
QPhIExpressionQ[input_]
End[]; (* End `Private` *)

EndPackage[];
