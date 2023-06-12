(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`PositionQInFrontOfList;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PositionQInFrontOfList // ClearAll

PositionQInFrontOfList[input_?VectorQ] :=
  (* Module[{list},
    list = Cases[Global`q | Global`q^_ | Sin[Global`q] | Sin[Global`q^_]][input];
    Join[list, UnsortedComplement[input, list]]
  ] *)
  Module[{list},
    list = Cases[Global`q | Global`q^_ ][input];
    Join[list, Complement[input, list]]
  ]
End[]; (* End `Private` *)

EndPackage[];
