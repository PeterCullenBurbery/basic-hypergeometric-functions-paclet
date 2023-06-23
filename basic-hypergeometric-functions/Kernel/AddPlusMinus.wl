(* ::Package:: *)

(* ::Package:: *)
(**)


BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`AddPlusMinus;

Begin["`Private`"];

(* Define your public and private symbols here. *)

AddPlusMinus // ClearAll

AddPlusMinus::usage = "AddPlusMinus[expr] combines cases of the form x and -x into PlusMinus[x]."

AddPlusMinus[expr_ ? (!StringQ[#]&)] :=
(* ReplaceAll[{l : (_ ? (ListQ[#]&)) :> PeterBurbery`BasicHypergeometricFunctions`ReplacePlusMinus[l, {x_, -x_}
     :> PlusMinus[x]]}][expr] *)Quiet[ReplaceAll[{l : (_ ? (ListQ[#]&
    )) :> (PeterBurbery`BasicHypergeometricFunctions`ReplacePlusMinus[l])
    }][expr] /. {Sum[summand : (_ | _[___]), PeterBurbery`BasicHypergeometricFunctions`ReplacePlusMinus[
    {variable_, lowerbound_, upperbound_}]] :> Sum[summand, {variable, lowerbound,
     upperbound}]}, Sum::vexdep]

End[]; (* End `Private` *)

EndPackage[];
