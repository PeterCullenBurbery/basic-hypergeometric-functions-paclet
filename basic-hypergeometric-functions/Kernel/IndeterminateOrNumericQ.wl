(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`IndeterminateOrNumericQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

IndeterminateOrNumericQ // ClearAll

SetAttributes[IndeterminateOrNumericQ, HoldAll]

IndeterminateOrNumericQ::usage = "IndeterminateOrNumericQ[expr] returns True if expr is an indeterminate expression like x or a numeric expression.";

IndeterminateOrNumericQ[expr_] :=
    MatchQ[expr, _?NumericQ | _Symbol] || (And @@ {ValueQ[expr, Method
         -> "SymbolDefinitionsPresent"], !ValueQ[expr, Method -> "TrialEvaluation"
        ], !ValueQ[expr, Method -> "OwnValuesPresent"]})

End[]; (* End `Private` *)

EndPackage[];
