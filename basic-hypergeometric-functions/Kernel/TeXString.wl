

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TeXString;


Begin["`Private`"];

(* Define your public and private symbols here. *)

TeXString//ClearAll

TeXString[input_] := ToString[TeXForm[input]]

End[]; (* End `Private` *)

EndPackage[];
