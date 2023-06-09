

     

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`CasesQPh;


Begin["`Private`"];

(* Define your public and private symbols here. *)

CasesQPh//ClearAll
CasesQPh[i_] := 
 StringCases[
  i, ("\\text{QPh}\\left(" ~~ Shortest[x__] ~~ "\\right)\\text{**}" :>
     x)]

End[]; (* End `Private` *)
