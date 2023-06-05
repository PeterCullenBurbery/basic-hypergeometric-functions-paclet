

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`NumeratorTermQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

NumeratorTermQ//ClearAll

NumeratorTermQ[input_] := Which[And @@ { !NumeratorQ[input], DenominatorQ[input]}, False, And @@ {NumeratorQ[input], !DenominatorQ[input]}, True, And @@ {NumeratorQ[input], DenominatorQ[input]}, True, And @@ { !NumeratorQ[input], !DenominatorQ[input]}, True]
End[]; (* End `Private` *)

EndPackage[];
