(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`BasicHypergeometricFunctions`StringAppend;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ResourceFunction["FormatAsResourceFunction"][StringAppend]

StringAppend[str_, post_] :=
    str ~~ post;

StringAppend[post_][str_] :=
    StringAppend[str, post]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
