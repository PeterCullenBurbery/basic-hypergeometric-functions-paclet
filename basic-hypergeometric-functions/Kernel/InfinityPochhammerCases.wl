

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`InfinityPochhammerCases;


Begin["`Private`"];

(* Define your public and private symbols here. *)

InfinityPochhammerCases//ClearAll
InfinityPochhammerCases[input_?StringQ] := StringCases[input, (s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "(" ~~ Shortest[__] ~~
      ")")) | (r : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ 
     "\\left(" ~~ Shortest[__] ~~ "\\right)"))]

End[]; (* End `Private` *)

EndPackage[];
