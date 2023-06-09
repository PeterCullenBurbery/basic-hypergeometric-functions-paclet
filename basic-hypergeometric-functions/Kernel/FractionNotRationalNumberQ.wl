

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`FractionNotRationalNumberQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

FractionNotRationalNumberQ//ClearAll
FractionNotRationalNumberQ[input_] := And@@{FractionQ[input],!MatchQ[input,_Rational]}

End[]; (* End `Private` *)

EndPackage[];
