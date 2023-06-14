(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`EquationArray;

Begin["`Private`"];

(* Define your public and private symbols here. *)

EquationArray // ClearAll

EquationArray[input_ ? (Function[{s}, StringQ[s], {}])] :=
  "\\begin{eqnarray}" <> input <> "\\end{eqnarray}";

End[]; (* End `Private` *)

EndPackage[];
