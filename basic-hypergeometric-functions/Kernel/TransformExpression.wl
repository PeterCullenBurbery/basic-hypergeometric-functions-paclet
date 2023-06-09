(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TransformExpression;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*TransformExpression//ClearAll*)
TransformExpression//ClearAll

TransformExpression[input_?GeneralizedNotArrayQ]:=Module[{groupData, 
  instancesOfVeryWellPoisedBasicHypergeometricFunctionsInNumerator, 
  otherNumeratorTerms, numerator, 
  denominator}, {numerator, denominator} = 
  NumeratorDenominator[input]; 
 groupData = 
  GroupBy[VeryWellPoisedBasicHypergeometricFunctionQ[#] &][
   List @@ numerator]; 
 instancesOfVeryWellPoisedBasicHypergeometricFunctionsInNumerator = 
  groupData[True]; otherNumeratorTerms = groupData[False]; 
 NonCommutativeMultiply[
  Divide @@ {NonCommutativeMultiply @@ otherNumeratorTerms, 
    denominator}, 
  NonCommutativeMultiply @@ 
   instancesOfVeryWellPoisedBasicHypergeometricFunctionsInNumerator]]

End[]; (* End `Private` *)

EndPackage[];
