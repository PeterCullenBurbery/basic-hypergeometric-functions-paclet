(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RearrangeExpression;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
RearrangeExpression//ClearAll



RearrangeExpression[input : _?(# === Hold &)[__] ] := 
ReplaceAndInactivate@@input
RearrangeExpression[input : _?(# === HoldForm &)[__] ] := 
ReplaceAndInactivate@@input
RearrangeExpression[input : _?(# =!= Hold &&#=!=HoldForm)[__] | _] :=ReplaceAndInactivate[input]

End[]; (* End `Private` *)

EndPackage[];
