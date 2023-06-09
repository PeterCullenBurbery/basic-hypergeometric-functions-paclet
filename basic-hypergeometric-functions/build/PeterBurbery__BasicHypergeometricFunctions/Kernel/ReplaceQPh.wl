

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ReplaceQPh;


Begin["`Private`"];

(* Define your public and private symbols here. *)

ReplaceQPh//ClearAll

ReplaceFirstAndLastBracketsInQPochhammerSymbolTeXStringWithParentheses[input_?StringQ] :=
 StringReplacePart[
  StringDelete[input, 
   Alternatives @@ {"\\left", "\\right"}], {"\\left(", 
   "\\right)"}, {{3, 3}, {-3, -3}}]


End[]; (* End `Private` *)

EndPackage[];