(* ::Package:: *)

(* ::Package:: *)
(**)


  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedBasicHypergeometricFunctionQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedBasicHypergeometricFunctionQ//ClearAll
VeryWellPoisedBasicHypergeometricFunctionQ[
 input_]:= Module[{\[ScriptL]},\[ScriptL]=Length[input];And@@{AllTrue[MatchQ[input,#]&][{_?(MatchQ[#, _Symbol] &)[RepeatedNull[_]],
_?(MatchQ[SymbolName[#],StringJoin["W",ToString[\[ScriptL]],ToString[\[ScriptL]-1]]]&)[Repeated[_]],_?WAndDigitsQ[Repeated[_?(GeneralizedNotArrayQ[#]&)]]}]}]

VeryWellPoisedBasicHypergeometricFunctionQ[
 input_?StringQ]:= input
End[]; (* End `Private` *)

EndPackage[];
