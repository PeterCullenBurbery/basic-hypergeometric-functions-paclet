

     

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`CasesQPh;


Begin["`Private`"];

(* Define your public and private symbols here. *)

CasesQPhI//ClearAll
CasesQPhI[i_] := 
 StringCases[
  i, ("\\text{QPhI}\\left(" ~~ Shortest[x__] ~~ "\\right)\\text{**}" :>
     x)]

End[]; (* End `Private` *)
