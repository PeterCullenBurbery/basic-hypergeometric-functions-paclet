(* ::Package:: *)

(* (* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPhI;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
QPhI//ClearAll

QPhI[a_?VectorQ, q_] := 
 (*Product[QPochhammer[Part[a, i], q], {i, 1, Length[a]}];*)
Times @@ 
 Table[QPochhammer[Part[a, i], q], {i, 
   Length[a]}]
End[]; (* End `Private` *)

EndPackage[];*)
