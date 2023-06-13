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
  denominator}, {numerator, denominator} = NumeratorDenominator[input];
 groupData = 
  
   Which[Head[numerator] === Times, 
    GroupBy[VeryWellPoisedBasicHypergeometricFunctionQ[#] &][
     List @@ numerator], WAndDigitsQ[Head[numerator]], 
    GroupBy[VeryWellPoisedBasicHypergeometricFunctionQ[#] &][
     List@numerator], Head[numerator] === NonCommutativeMultiply, 
    GroupBy[VeryWellPoisedBasicHypergeometricFunctionQ[#] &][
     List @@ numerator]];
 instancesOfVeryWellPoisedBasicHypergeometricFunctionsInNumerator = 
  groupData[True];
 otherNumeratorTerms = 
  Which[KeyExistsQ[groupData, False], 
   groupData[False], ! KeyExistsQ[groupData, False], 1];
 NonCommutativeMultiply[
  Divide @@ {NonCommutativeMultiply @@ otherNumeratorTerms, 
    denominator}, 
  NonCommutativeMultiply @@ 
   instancesOfVeryWellPoisedBasicHypergeometricFunctionsInNumerator]]

End[]; (* End `Private` *)

EndPackage[];
