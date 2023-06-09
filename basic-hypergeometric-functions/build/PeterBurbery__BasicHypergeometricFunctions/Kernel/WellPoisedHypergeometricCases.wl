

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`WellPoisedHypergeometricCases;


Begin["`Private`"];

(* Define your public and private symbols here. *)

WellPoisedHypergeometricCases//ClearAll

WellPoisedHypergeometricCases[input_] := 
StringCases[input, ("\\text{W" ~~DigitCharacter..~~"}"~~ Shortest[x__] ~~ 
 (   "\\right)\\text{**}" |("\\right)" ~~ EndOfString)):> x),IgnoreCase->True]

End[]; (* End `Private` *)

EndPackage[];
