(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`IsHeld;

Begin["`Private`"];

(* Define your public and private symbols here. *)


ClearAll[IsHeld]
SetAttributes[IsHeld, HoldAll]
IsHeld[input_] := MatchQ[UnevaluatedHead[input], HoldForm | Hold]
IsHeld::usage = 
  "IsHeld[input] returns True if the input is a held expression, and \
False otherwise. A held expression is an expression that is held by \
Hold or HoldForm.";

End[]; (* End `Private` *)

EndPackage[];
