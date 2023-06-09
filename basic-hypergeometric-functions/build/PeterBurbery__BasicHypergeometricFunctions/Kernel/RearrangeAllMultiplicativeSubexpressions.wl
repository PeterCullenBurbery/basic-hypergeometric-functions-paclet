(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RearrangeAllMultiplicativeSubExpressions;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
RearrangeAllMultiplicativeSubExpressions//ClearAll



RearrangeAllMultiplicativeSubExpressions[input_] := 
 RearrangeMultiplicativeSubExpressions //@ PowerExpand[input]
End[]; (* End `Private` *)

EndPackage[];
