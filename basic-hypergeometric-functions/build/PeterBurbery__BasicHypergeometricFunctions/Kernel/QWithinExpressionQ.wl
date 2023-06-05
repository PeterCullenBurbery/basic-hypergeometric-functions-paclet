(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QWithinExpressionQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
QWithinExpressionQ//ClearAll

QWithinExpressionQ[input_] := 
 MemberQ[TreeData /@ TreeSelect[ExpressionTree[input], TreeLeafQ], q]


End[]; (* End `Private` *)

EndPackage[];
