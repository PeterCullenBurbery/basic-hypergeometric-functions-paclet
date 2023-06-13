

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedHypergeometricToNumerator;


Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedHypergeometricToNumerator//ClearAll
VeryWellPoisedHypergeometricToNumerator[input_] := 
 input /. {x_?FractionQ /; 
 And @@ {MemberQ[x, _?VeryWellPoisedBasicHypergeometricFunctionQ, 
     All] === True, MemberQ[x, Sum, All, Heads -> True] === False}:> TransformExpression[x]}

End[]; (* End `Private` *)

EndPackage[];
