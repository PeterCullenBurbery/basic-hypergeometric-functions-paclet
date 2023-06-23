(* ::Package:: *)

(* ::Package:: *)
(**)


BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedBasicHypergeometricFunctionQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedBasicHypergeometricFunctionQ // ClearAll

VeryWellPoisedBasicHypergeometricFunctionQ[input_ ? (!StringQ[#]&)] :=
  Module[{\[ScriptL]},
    \[ScriptL] = Length[input];
    And @@ {AllTrue[MatchQ[input, #]&][{_ ? (MatchQ[#, _Symbol]&)[RepeatedNull[
      _]], _ ? (MatchQ[SymbolName[#], StringJoin["W", ToString[\[ScriptL]],
       ToString[\[ScriptL] - 1]]]&)[Repeated[_]], _?PeterBurbery`BasicHypergeometricFunctions`WAndDigitsQ[Repeated[_ 
      ? (PeterBurbery`BasicHypergeometricFunctions`GeneralizedNotArrayQ[#]&)]]}]}
  ]

VeryWellPoisedBasicHypergeometricFunctionQ[input_ ? (Function[{s}, StringQ[
  s], {}])] :=
  input

End[]; (* End `Private` *)

EndPackage[];
