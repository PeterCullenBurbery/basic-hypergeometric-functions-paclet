(* ::Package:: *)

(* (* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPh;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
QPh//ClearAll

QPh[a_?VectorQ, q_, n_] := 
 Product[QPochhammer[Part[a, i], q, n], {i, 1, Length[a]}]; *)


(*End[]; (* End `Private` *)

EndPackage[];*)
