(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`OnlyIntegralAndSum;

Begin["`Private`"];

(* Define your public and private symbols here. *)

OnlyIntegralAndSum // ClearAll

SetAttributes[OnlyIntegralAndSum, {}]

OnlyIntegralAndSum::usage = "OnlyIntegralAndSum[input] replaces all NIntegrate and NSum with Integrate and Sum."

(* OnlyIntegralAndSum[input_] /; (InactiveExpressionQ[#] === True&)[input
    ] :=
    input /. {Inactive[NIntegrate][integrand_, {variableOfIntegration_,
         lowerBound_, upperBound_}, options___] :> Inactive[Integrate][integrand,
         {variableOfIntegration, lowerBound, upperBound}], Inactive[NSum][summand_,
         {variableOfSummation_, lowerBound_, upperBound_}, options___] :> Inactive[
        Sum][summand, {variableOfSummation, lowerBound, upperBound}]}
 *)

OnlyIntegralAndSum[input_] :=
    input /. {Inactive[NIntegrate][integrand_, {variableOfIntegration_,
         lowerBound_, upperBound_}, options___] :> Inactive[Integrate][integrand,
         {variableOfIntegration, lowerBound, upperBound}], Inactive[NSum][summand_,
         {variableOfSummation_, lowerBound_, upperBound_}, options___] :> Inactive[
        Sum][summand, {variableOfSummation, lowerBound, upperBound}]}

(* Switch[InactiveExpressionQ[input],
    True,
        input /. {Inactive[NIntegrate][integrand_, {variableOfIntegration_,
             lowerBound_, upperBound_}, options___] :> Inactive[Integrate][integrand,
             {variableOfIntegration, lowerBound, upperBound}], Inactive[NSum][summand_,
             {variableOfSummation_, lowerBound_, upperBound_}, options___] :> Inactive[
            Sum][summand, {variableOfSummation, lowerBound, upperBound}]}
    ,
    False,
        "the input should be inactive"
] *)

End[]; (* End `Private` *)

EndPackage[];
