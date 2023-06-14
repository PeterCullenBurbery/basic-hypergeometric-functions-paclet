(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`DeleteQPhInQPochammerTeXString;

Begin["`Private`"];

(* Define your public and private symbols here. *)

DeleteQPhInQPochammerTeXString // ClearAll

DeleteQPhInQPochammerTeXString[input_ ? (Function[{s}, StringQ[s], {}
  ])] :=
  StringDelete[input, "\\text{QPh}"]

End[]; (* End `Private` *)

EndPackage[];
