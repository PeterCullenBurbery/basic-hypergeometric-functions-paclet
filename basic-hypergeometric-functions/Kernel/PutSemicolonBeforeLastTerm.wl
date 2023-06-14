(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`PutSemicolonBeforeLastTerm;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PutSemicolonBeforeLastTerm // ClearAll

PutSemicolonBeforeLastTerm::usage = "PutSemicolonBeforeLastTerm[str] puts a semicolon before the last term of str."

PutSemicolonBeforeLastTerm[str_ ? (Function[{s}, StringQ[s], {}])] :=
    StringReplace[str, expr : ("(" | "\\left(" ~~ __ ~~ "," ~~ __ ~~ ")"
         | "\\right)") :> StringJoin[ReplaceAt[Riffle[StringSplit[expr, ","],
         ","], _ -> ";", -2]]]

(* Which[
    StringMatchQ[s, rest : Shortest[__] ~~ "," ~~ expr : Shortest[
        __] ~~ "\\right)"],
        StringReplaceGeneralized[s, {"," ~~ expr : Shortest[__
            ] ~~ "\\right)" :> StringJoin[";", expr, "\\right)"]}, -1]
    ,
    StringMatchQ[s, rest : Shortest[__] ~~ "," ~~ expr : Shortest[
        __] ~~ ")"],
        StringReplaceGeneralized[s, {"," ~~ expr : Shortest[__
            ] ~~ ")" :> StringJoin[";", expr, ")"]}, -1]
] *)

PutSemicolonBeforeLastTerm[args___] :=
    Null /; CheckArguments[PutSemicolonBeforeLastTerm[args], 1]

End[]; (* End `Private` *)

EndPackage[];
