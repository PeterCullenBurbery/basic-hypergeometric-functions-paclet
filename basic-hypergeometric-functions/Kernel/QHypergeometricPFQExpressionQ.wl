(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QHypergeometricPFQExpressionQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

QHypergeometricPFQExpressionQ // ClearAll

SetAttributes[QHypergeometricPFQExpressionQ, {HoldAll}]

QHypergeometricPFQExpressionQ::usage = "QHypergeometricPFQExpressionQ[input] returns True if input is a valid QHypergeometricPFQ expression and False otherwise."

QHypergeometricPFQExpressionQ[input_] :=
    And @@ {PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead[
        input] === QHypergeometricPFQ, MatchQ[Unevaluated[input], QHypergeometricPFQ[
        _ ? (VectorQ[#, IndeterminateOrNumericQ]&), _ ? (VectorQ[#, IndeterminateOrNumericQ
        ]&), _ ? (IndeterminateOrNumericQ[#]&), _ ? (IndeterminateOrNumericQ[
        #]&)]]}

End[]; (* End `Private` *)

EndPackage[];
