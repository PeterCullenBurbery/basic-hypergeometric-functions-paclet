
     

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`WrapWithBrackets;


Begin["`Private`"];

(* Define your public and private symbols here. *)

WrapWithBrackets//ClearAll

WrapWithBrackets // ClearAll
WrapWithBrackets[input_]:=StringRiffle[{TeXString[input]}, {"{", "", "}"}]


End[]; (* End `Private` *)

EndPackage[];
