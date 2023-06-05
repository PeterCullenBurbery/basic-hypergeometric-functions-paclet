(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`PositionQInFrontOfList;
PeterBurbery`BasicHypergeometricFunctions`UnsortedComplement;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PositionQInFrontOfList//ClearAll

PositionQInFrontOfList[input_?ListQ] := 
 Module[{list}, list = Cases[Global`q | Global`q^_][input]; 
  Join[list, UnsortedComplement[input, list]]]

End[]; (* End `Private` *)

EndPackage[];
