

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedHypergeometricToNumerator;


Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedHypergeometricToNumerator//ClearAll
VeryWellPoisedHypergeometricToNumerator[input_] := 
 input /. {x_?FractionQ /; 
     MemberQ[x, _?VeryWellPoisedBasicHypergeometricFunctionQ, All] ===
       True :> TransformExpression[x]}

End[]; (* End `Private` *)

EndPackage[];
