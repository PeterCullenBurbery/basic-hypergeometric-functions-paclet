

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`DenominatorTermQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

DenominatorTermQ//ClearAll

DenominatorTermQ[expr_]:=!NumeratorTermQ[expr]

End[]; (* End `Private` *)

EndPackage[];
