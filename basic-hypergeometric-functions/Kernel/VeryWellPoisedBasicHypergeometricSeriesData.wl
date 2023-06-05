

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedBasicHypergeometricSeriesData;


Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedBasicHypergeometricSeriesData//ClearAll
VeryWellPoisedBasicHypergeometricSeriesData[input_] := 
 Module[{first, secondtolast, last, totalnumberofnumeratorparameters, 
   totalnumberofdenominatorparameters}, leadingelement = First[input];
   base = input[[-2]]; argument = Last[input]; 
  numeratorparameters = List @@ Drop[Drop[input, 1], -2]; 
  totalnumberofnumeratorparameters = Length[numeratorparameters] + 3; 
  totalnumberofdenominatorparameters = 
   Length[numeratorparameters] + 2; <|
   "leadingelement" -> leadingelement, "base" -> base, 
   "argument" -> argument, 
   "numeratorparameters" -> numeratorparameters, 
   "totalnumberofnumeratorparameters" -> 
    totalnumberofnumeratorparameters, 
   "totalnumberofdenominatorparameters" -> 
    totalnumberofdenominatorparameters|>]

End[]; (* End `Private` *)

EndPackage[];
