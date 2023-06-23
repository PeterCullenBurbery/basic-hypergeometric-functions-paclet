(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RearrangeExpression;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
RearrangeExpression//ClearAll



RearrangeExpression[input : _?(# === Hold &)[__] ] := 
PeterBurbery`BasicHypergeometricFunctions`ReplaceAndInactivate@@input
RearrangeExpression[input : _?(# === HoldForm &)[__] ] := 
PeterBurbery`BasicHypergeometricFunctions`ReplaceAndInactivate@@input
RearrangeExpression[input : _?(# =!= Hold &&#=!=HoldForm)[__] | _] :=PeterBurbery`BasicHypergeometricFunctions`ReplaceAndInactivate[input]

End[]; (* End `Private` *)

EndPackage[];
