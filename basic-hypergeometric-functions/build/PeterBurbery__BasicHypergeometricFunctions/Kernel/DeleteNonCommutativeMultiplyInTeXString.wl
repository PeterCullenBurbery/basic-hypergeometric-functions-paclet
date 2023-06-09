(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`DeleteNonCommutativeMultiplyInTeXString;

Begin["`Private`"];

(* Define your public and private symbols here. *)



ClearAll[DeleteNonCommutativeMultiplyInTeXString]
DeleteNonCommutativeMultiplyInTeXString[input_?StringQ] := 
 StringDelete["\\text{**}"][input]


End[]; (* End `Private` *)

EndPackage[];
