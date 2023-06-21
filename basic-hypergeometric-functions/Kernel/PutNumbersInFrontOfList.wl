(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`PutNumbersInFrontOfList;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[PutNumbersInFrontOfList]

PutNumbersInFrontOfList::usage = "PutNumbersInFrontOfList[input] puts all the numbers in front of the list input.";

PutNumbersInFrontOfList[input_] :=
    Join[Cases[input, _?NumericQ], DeleteCases[input, _?NumericQ]]

End[]; (* End `Private` *)

EndPackage[];
