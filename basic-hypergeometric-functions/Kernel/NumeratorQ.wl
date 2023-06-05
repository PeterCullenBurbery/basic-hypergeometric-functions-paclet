

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`NumeratorQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

NumeratorQ//ClearAll


NumeratorQ[input_] := Numerator[input] =!= 1 

End[]; (* End `Private` *)

EndPackage[];
