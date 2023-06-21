(* ::Package:: *)

(* ::Package:: *)
(**)


BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`InactivateIntegralProductSum;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[InactivateIntegralProductSum]

SetAttributes[InactivateIntegralProductSum, HoldAll]

InactivateIntegralProductSum[input_] :=
    ReleaseHold[ReplaceAll[{Integrate -> Inactive[Integrate], Product
         -> Inactive[Product], Sum -> Inactive[Sum]}][MakeFunctionsExact @ RemoveNumericalFunctionOptions[
        EnsureHeld[input]]]]

InactivateIntegralProductSum::usage = "InactivateIntegralProductSum[input] takes an expression as input, ensures it is held to prevent evaluation, removes any options from numerical functions, converts numerical functions to their exact counterparts, and then inactivates all instances of Integrate, Sum, and Product. It returns the transformed, inactive expression.";

End[]; (* End `Private` *)

EndPackage[];
