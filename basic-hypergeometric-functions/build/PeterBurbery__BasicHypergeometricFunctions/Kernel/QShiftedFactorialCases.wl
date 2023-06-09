(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QShiftedFactorialCases;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
QShiftedFactorialCases//ClearAll

QShiftedFactorialCases[input_] := 
StringCases[input, ("\\text{QPh}\\left(" ~~ Shortest[x__] ~~ 
 (   "\\right)\\text{**}" |("\\right)" ~~ EndOfString)):> x)]

End[]; (* End `Private` *)

EndPackage[];
