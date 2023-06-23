(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`EnsureHeld;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[EnsureHeld]

SetAttributes[EnsureHeld, {HoldAll}]

EnsureHeld[input_] :=
  Module[{placeholder},
    placeholder = Unique[];
    Which[
      IsHeld[input],
        input
      ,
      Not[IsHeld[input]] && PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead[
        input] === Symbol && MatchQ[Head[input], Hold | HoldForm],
        input
      ,
      Not[IsHeld[input]] && PeterBurbery`BasicHypergeometricFunctions`UnevaluatedHead[
        input] === Symbol && Not[MatchQ[Head[input], Hold | HoldForm]],
        placeholder[Evaluate[input]] /. {placeholder -> Hold}
      ,
      True,
        Hold[input]
    ]
  ]

EnsureHeld::usage = "EnsureHeld[input] checks whether the input is an unheld expression. If it is, it holds the expression. If the input is already a held expression, it returns the input unchanged.";

End[]; (* End `Private` *)

EndPackage[];
