

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`MakeFunctionsExact;


Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[MakeFunctionsExact]
MakeFunctionsExact::usage = 
  "MakeFunctionsExact[input] takes an expression as input and \
replaces all instances of numerical functions NIntegrate, NSum, and \
NProduct with their exact counterparts Integrate, Sum, and Product, \
respectively. It returns the transformed expression.";

MakeFunctionsExact[input_] := 
 ReplaceAll[{NIntegrate[f_, {x_, xmin_, xmax_}] :> 
     Integrate[f, {x, xmin, xmax}], 
    NSum[f_, {i_, imin_, imax_}] :> Sum[f, {i, imin, imax}], 
    NProduct[f_, {i_, imin_, imax_}] :> Product[f, {i, imin, imax}]}][
  input]


End[]; (* End `Private` *)

EndPackage[];
