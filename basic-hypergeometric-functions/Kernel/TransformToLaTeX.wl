(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TransformToLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*TransformToLaTeX//ClearAll*)
TransformToLaTeX//ClearAll

TransformToLaTeX[input_] := 
DeleteText[DeleteNonCommutativeMultiplyInTeXString[
 ToString[
  TeXForm[VeryWellPoisedHypergeometricToNumerator[
    Activate[RearrangeExpression[input], Sum]]]]]]
End[]; (* End `Private` *)

EndPackage[];
