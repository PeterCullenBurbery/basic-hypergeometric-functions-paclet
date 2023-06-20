(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TransformFraction;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*TransformFraction//ClearAll*)

TransformFraction // ClearAll

TransformFraction::usage = "TransformFraction[x] transforms x so it is the product of a fraction to a power, then a fraction, then a sum, then a very well poised basic hypergeometric series."

TransformFraction[input_] :=
  FractionData[input]["final-product"]

End[]; (* End `Private` *)

EndPackage[];
