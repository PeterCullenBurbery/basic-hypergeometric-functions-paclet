(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`DeleteNonCommutativeMultiplyInTeXString;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[DeleteNonCommutativeMultiplyInTeXString]

DeleteNonCommutativeMultiplyInTeXString[input_ ? (Function[{s}, StringQ[
  s], {}])] :=
  StringDelete["**"][input]

End[]; (* End `Private` *)

EndPackage[];
