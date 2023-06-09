(* ::Package:: *)

(* ::Package:: *)
(**)


  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedBasicHypergeometricFractionCases;


Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedBasicHypergeometricFractionCases//ClearAll
VeryWellPoisedBasicHypergeometricFractionCases[
 input_]:= Cases[input, 
 x_?FractionQ /; 
  MemberQ[x, _?VeryWellPoisedBasicHypergeometricFunctionQ, All] === 
   True, All]
   VeryWellPoisedBasicHypergeometricFractionCases[
 input_]:= Cases[input, 
 x_?FractionQ /; 
  MemberQ[x, _?VeryWellPoisedBasicHypergeometricFunctionQ, All] === 
   True, All]

End[]; (* End `Private` *)

EndPackage[];
