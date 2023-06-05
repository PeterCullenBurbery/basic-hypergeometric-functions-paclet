

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`MakeFirstListSequence;


Begin["`Private`"];

(* Define your public and private symbols here. *)

MakeFirstListSequence//ClearAll
MakeFirstListSequence[input_] := MapAt[Apply[Sequence], {1}][input]

End[]; (* End `Private` *)

EndPackage[];
