(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RemoveNumericalFunctionsOptions;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[RemoveNumericalFunctionOptions]

RemoveNumericalFunctionOptions::usage = "RemoveNumericalFunctionOptions[input] takes an expression as input and removes any options specified within instances of NIntegrate, NSum, or NProduct, returning a new expression with these functions stripped of their options.";

RemoveNumericalFunctionOptions[input_] :=
    ReplaceAll[{NIntegrate[f_, {x_, xmin_, xmax_}, ___] :> NIntegrate[
        f, {x, xmin, xmax}], NSum[f_, {i_, imin_, imax_}, ___] :> NSum[f, {i,
         imin, imax}], NProduct[f_, {i_, imin_, imax_}, ___] :> NProduct[f, {
        i, imin, imax}]}][input]

End[]; (* End `Private` *)

EndPackage[];
