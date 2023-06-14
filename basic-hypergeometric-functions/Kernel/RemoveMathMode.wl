(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RemoveMathMode;

Begin["`Private`"];

(* Define your public and private symbols here. *)

RemoveMathMode // ClearAll

RemoveMathMode[input_ ? (Function[{s}, StringQ[s], {}])] :=
  StringTake[input, {3, -3}]

End[]; (* End `Private` *)

EndPackage[];
