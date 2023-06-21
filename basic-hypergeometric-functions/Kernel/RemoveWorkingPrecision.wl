(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RemoveWorkingPrecision;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[RemoveWorkingPrecision]

RemoveWorkingPrecision[input_] :=
    ReplaceAll[{NIntegrate[f_, {x_, xmin_, xmax_}, ___] :> NIntegrate[
        f, {x, xmin, xmax}], NSum[f_, {i_, imin_, imax_}, ___] :> NSum[f, {i,
         imin, imax}], NProduct[f_, {i_, imin_, imax_}, ___] :> NProduct[f, {
        i, imin, imax}]}][input]

End[]; (* End `Private` *)

EndPackage[];
