(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`NumeratorParametersLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

NumeratorParametersLaTeX // ClearAll

NumeratorParametersLaTeX::usage = "NumeratorParametersLaTeX[params] gives the TeXForm of params and removes the curly braces from List at the start and end."



NumeratorParametersLaTeX[b_ ? (ListQ[#]&)] :=
(* Switch[TeXString[
  b], _?(StringMatchQ[#, "\\left\\{" ~~ __ ~~ "\\right\\}"] &), 
 StringReplace[{"\\left\\{" ~~ middle__ ~~ "\\right\\}" :> middle}][
  TeXString[b]], _?(StringMatchQ[#, "\\{" ~~ middle__ ~~ "\\}"] &), 
 StringReplace[{"\\{" ~~ middle__ ~~ "\\}" :> middle}][TeXString[b]]] *)
 Module[{texString},texString=TeXString[b];
  StringReplace[texString,{"\\left\\{"~~middle__~~"\\right\\}":>middle,"\\{"~~middle__~~"\\}":>middle}]]

NumeratorParametersLaTeX[args___] :=
    Null /; CheckArguments[NumeratorParametersLaTeX[args], 1]

End[]; (* End `Private` *)

EndPackage[];
