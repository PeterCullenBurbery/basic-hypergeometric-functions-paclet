(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`HeldExpressionQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

HeldExpressionQ // ClearAll

HeldExpressionQ::usage = "HeldExpressionQ[expr] returns True if expr is a held expression, and False otherwise.  A held expression is an expression that is held by Hold or HoldForm.  HeldExpressionQ is a HoldAllComplete function.";

SetAttributes[HeldExpressionQ, HoldAll]

HeldExpressionQ[input_](*/;!MatchQ[input,_Symbol]*) :=
  MatchQ[PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead[input
    ], HoldForm | Hold]

(* HeldExpressionQ[input_]/;MatchQ[input,_Symbol] :=
MatchQ[Head[
input], 
 HoldForm | Hold] *)

End[]; (* End `Private` *)

EndPackage[];
