(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`NonCommutativeMultiplyToTimes;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[NonCommutativeMultiplyToTimes]

NonCommutativeMultiplyToTimes::usage = "NonCommutativeMultiplyToTimes[input] replaces all cases of ** representing noncommutative multiplication in input with Times, representing multiplication.";

NonCommutativeMultiplyToTimes[input_] :=
    ReplaceAll[{NonCommutativeMultiply -> Times}][input]

End[]; (* End `Private` *)

EndPackage[];
