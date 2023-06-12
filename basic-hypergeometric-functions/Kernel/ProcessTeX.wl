(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ProcessTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ProcessTeX // ClearAll

ProcessTeX::usage = "ProcessTeX[str] removes ** for noncommutative multiplication and removes whitespace except spaces in str."
(* 
SetAttributes[ProcessTeX, {Listable}] *)

ProcessTeX[str_ ? (StringQ[#]&)] :=
    StringReplace[{"\\text{" ~~ r : Shortest[___] ~~ "}" :> r}][StringDelete[
        Except[" ", Whitespace] | "**"][str]]

ProcessTeX[args___] :=
    Null /; CheckArguments[ProcessTeX[args], 1]

End[]; (* End `Private` *)

EndPackage[];
