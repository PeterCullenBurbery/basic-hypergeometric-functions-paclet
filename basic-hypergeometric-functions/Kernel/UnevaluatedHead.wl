(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead;

Begin["`Private`"];

(* Define your public and private symbols here. *)

UnevaluatedHead // ClearAll

UnevaluatedHead::usage = "UnevaluatedHead[expr] finds the head of expr without evaluating it."


SetAttributes[UnevaluatedHead, HoldAll]
UnevaluatedHead[expr_] :=
 Head[Unevaluated[expr]]



     UnevaluatedHead[args___] := Null /; CheckArguments[UnevaluatedHead[args], 1] 

End[]; (* End `Private` *)

EndPackage[];
