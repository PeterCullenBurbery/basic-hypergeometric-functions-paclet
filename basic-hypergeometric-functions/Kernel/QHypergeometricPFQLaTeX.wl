(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QHypergeometricPFQLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

QHypergeometricPFQLaTeX // ClearAll

QHypergeometricPFQLaTeX::usage = "QHypergeometricPFQLaTeX[input] returns a LaTeX string for the Q-hypergeometric PFQ function input."

SetAttributes[QHypergeometricPFQLaTeX, {Listable}]

QHypergeometricPFQLaTeX[input_ ? (QHypergeometricPFQExpressionQ[#]&)] :=
    TemplateApply["\\qhyp{<* #length1 *>}{<* #length2 *>}{<* StringRiffle[Table[StringDelete[StringDelete[ToString[TeXForm[n]],\"**\"],\"\\\\text{}\"],{n,#list1}] ,\",\"]*>}{<* StringRiffle[Table[StringDelete[StringDelete[ToString[TeXForm[n]],\"**\"],\"\\\\text{}\"],{n,#list2}] ,\",\"]*>}{<* StringRiffle[Table[StringDelete[StringDelete[ToString[TeXForm[n]],\"**\"],\"\\\\text{}\"],{n,{#base,#argument}}] ,\",\"]*>}",
         QHypergeometricPFQData[input]]

QHypergeometricPFQLaTeX[args___] :=
    Null /; CheckArguments[QHypergeometricPFQLaTeX[args], 1]

End[]; (* End `Private` *)

EndPackage[];
