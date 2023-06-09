

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TeXString;


Begin["`Private`"];

(* Define your public and private symbols here. *)

TeXString//ClearAll

TeXString[input_] := ToString[TeXForm[input]]

(*TeXString[input_Global`QPh] := QPhLaTeX[input]
TeXString[input_Global`QPhI] := QPhILaTeX[input]*)

(*TeXString[input_]/;StringMatchQ[SymbolName[Head[input]], 
 "W" ~~ DigitCharacter ..]:=VeryWellPoisedBasicHypergeometricLaTeX[input]
*)
End[]; (* End `Private` *)

EndPackage[];
