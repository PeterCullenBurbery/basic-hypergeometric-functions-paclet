(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`PowerData;

Begin["`Private`"];

(* Define your public and private symbols here. *)



PowerData // ClearAll

PowerData::usage = "PowerData[power] gives data on a power."

PowerData[input_] /; MatchQ[input, base_^power_.] :=
    ReplaceAll[{base_^power_. :> <|"base" -> base, "power" -> power|>
        }][input]

PowerData[args___] :=
    Null /; CheckArguments[PowerData[args], 1]

End[]; (* End `Private` *)

EndPackage[];
