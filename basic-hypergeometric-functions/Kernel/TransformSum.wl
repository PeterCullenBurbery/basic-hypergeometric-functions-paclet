(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TransformSum;

Begin["`Private`"];

(* Define your public and private symbols here. *)

TransformSum // ClearAll

TransformSum[input_ ? (Function[{s}, StringQ[s], {}])] :=
  StringReplace[input, {"\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{"
     ~~ upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> "\\sum_{"
     <> lower <> "}^{" <> upper <> "}"}]

End[]; (* End `Private` *)

EndPackage[];
