(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`AppendBaseToTeXString;

Begin["`Private`"];

(* Define your public and private symbols here. *)

AppendBaseToTeXString // ClearAll

AppendBaseToTeXString[input_?StringQ, base_?StringQ] :=
  StringInsert[input, "_{" <> base <> "}", -3]

AppendBaseToTeXString[input_?StringQ, base_ ? (!StringQ[#]&)] :=
  StringInsert[input, "_{" <> TeXString[base] <> "}", -3]

End[]; (* End `Private` *)

EndPackage[];
