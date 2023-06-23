(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`SimplifyModuleVariableName;

Begin["`Private`"];

(* Define your public and private symbols here. *)

SimplifyModuleVariableName // ClearAll

SimplifyModuleVariableName[i_]:=StringReplace[i,string:Longest[__]~~"$"~~rest__:>string]
End[]; (* End `Private` *)

EndPackage[];
