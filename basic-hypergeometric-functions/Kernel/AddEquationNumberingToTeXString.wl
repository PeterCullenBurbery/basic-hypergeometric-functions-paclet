(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`AddEquationNumberingToTeXString;

Begin["`Private`"];

(* Define your public and private symbols here. *)

AddEquationNumberingToTeXString // ClearAll

AddEquationNumberingToTeXString[input_] :=
  StringReplacePart[{"\\begin{equation}", "\\end{equation}"}, {{1, 2},
     {-2, -1}}][input]

End[]; (* End `Private` *)

EndPackage[];
