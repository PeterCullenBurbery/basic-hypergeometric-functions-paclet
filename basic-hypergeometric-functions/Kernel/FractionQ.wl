
(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`FractionQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

FractionQ//ClearAll

FractionQ[input_] := Denominator[input] =!= 1

 (*There could be a bug with this not marking 1/(b**c) as a fraction.*)


End[]; (* End `Private` *)

EndPackage[];
