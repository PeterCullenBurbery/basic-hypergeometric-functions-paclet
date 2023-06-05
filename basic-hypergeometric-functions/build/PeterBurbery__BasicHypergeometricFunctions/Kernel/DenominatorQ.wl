

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`DenominatorQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

DenominatorQ//ClearAll



  DenominatorQ[input_] := Denominator[input] =!= 1

End[]; (* End `Private` *)

EndPackage[];
