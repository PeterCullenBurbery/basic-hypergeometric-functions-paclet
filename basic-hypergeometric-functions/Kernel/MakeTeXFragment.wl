

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`MakeTeXFragment;


Begin["`Private`"];

(* Define your public and private symbols here. *)

MakeTeXFragment//ClearAll
MakeTeXFragment[input_] := ExportString[input, "TeXFragment"]

End[]; (* End `Private` *)

EndPackage[];