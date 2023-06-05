

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TakeOutLastArgument;


Begin["`Private`"];

(* Define your public and private symbols here. *)

TakeOutLastArgument//ClearAll

TakeOutLastArgument[input_] := 
 DeleteCases[ReplaceAt[input, x_ -> Nothing, -1], Nothing, All]

End[]; (* End `Private` *)

EndPackage[];
