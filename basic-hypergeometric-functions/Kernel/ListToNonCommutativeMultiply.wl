(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ListToNonCommutativeMultiply;

Begin["`Private`"];

ListToNonCommutativeMultiply // ClearAll

ListToNonCommutativeMultiply::usage = "ListToNonCommutativeMultiply[l] converts a list of elements into a NonCommutativeMultiply expression. If the list has only one element, that element is returned. If the list is empty, 1 is returned."

ListToNonCommutativeMultiply[l_ ? (Function[{list}, ListQ[list], {}])
  ] :=
  Which[
    Length[l] === 1,
      First[l]
    ,
    1 < Length[l],
      NonCommutativeMultiply @@ l
    ,
    Length[l] === 0,
      1
  ]

ListToNonCommutativeMultiply[args___] :=
  Null /; CheckArguments[ListToNonCommutativeMultiply[args], 1]

End[]

EndPackage[]
