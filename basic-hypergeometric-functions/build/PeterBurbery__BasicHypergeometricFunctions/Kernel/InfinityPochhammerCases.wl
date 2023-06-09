

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`InfinityPochhammerCases;


Begin["`Private`"];

(* Define your public and private symbols here. *)

InfinityPochhammerCases//ClearAll
InfinityPochhammerCases[input_] := StringCases[input, ("\\text{QPhI}\\left(" ~~ Shortest[x__] ~~ 
 (   "\\right)\\text{**}" |("\\right)" ~~ EndOfString)) :> x)]

End[]; (* End `Private` *)

EndPackage[];
