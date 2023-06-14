(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`BracketsToParentheses;

Begin["`Private`"];

(* Define your public and private symbols here. *)

BracketsToParentheses // ClearAll

BracketsToParentheses[input_ ? (Function[{s}, StringQ[s], {}])] :=
  StringReplacePart[StringDelete[input, Alternatives @@ {"\\left", "\\right"
    }], {"\\left(", "\\right)"}, {{3, 3}, {-3, -3}}]

End[]; (* End `Private` *)

EndPackage[];
