(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPhIProcessForTeXFragment;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
QPhIProcessForTeXFragment//ClearAll

QPhIProcessForTeXFragment[input_] := 
 RemoveList[rearrangeAndCombineExpression[input]]


End[]; (* End `Private` *)

EndPackage[];
