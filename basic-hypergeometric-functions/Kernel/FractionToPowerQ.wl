(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`FractionToPowerQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

FractionToPowerQ // ClearAll

FractionToPowerQ[input_] :=
  MatchQ[input,(_?FractionQ)^_]

(*There could be a bug with this not marking 1/(b**c) as a fraction.*)

End[]; (* End `Private` *)

EndPackage[];
