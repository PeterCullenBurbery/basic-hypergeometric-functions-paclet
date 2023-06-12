(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QHypergeometricPFQDataToLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

QHypergeometricPFQDataToLaTeX // ClearAll

QHypergeometricPFQDataToLaTeX::usage = "QHypergeometricPFQDataToLaTeX[input] converts from data for a basic hypergeometric function to LaTeX code for the corresponding q-hypergeometric function."

(* SetAttributes[QHypergeometricPFQDataToLaTeX, {Listable}] *)

QHypergeometricPFQDataToLaTeX[input_ ? (AssociationQ[#]&)] :=
    TemplateApply["\\qhyp{<* #length1 *>}{<* #length2 *>}{<* StringRiffle[Table[StringDelete[StringDelete[ToString[TeXForm[n]],\"**\"],\"\\\\text{}\"],{n,#list1}] ,\",\"]*>}{<* StringRiffle[Table[StringDelete[StringDelete[ToString[TeXForm[n]],\"**\"],\"\\\\text{}\"],{n,#list2}] ,\",\"]*>}{<* StringRiffle[Table[StringDelete[StringDelete[ToString[TeXForm[n]],\"**\"],\"\\\\text{}\"],{n,{#base,#argument}}] ,\",\"]*>}",
         input]

QHypergeometricPFQDataToLaTeX[args___] :=
    Null /; CheckArguments[QHypergeometricPFQDataToLaTeX[args], 1]

End[]; (* End `Private` *)

EndPackage[];
