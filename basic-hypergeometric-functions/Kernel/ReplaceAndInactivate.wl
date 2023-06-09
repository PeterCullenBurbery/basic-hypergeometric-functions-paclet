(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ReplaceAndInactivate;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
ReplaceAndInactivate//ClearAll

Attributes[
   ReplaceAndInactivate] = {HoldFirst}; 
ReplaceAndInactivate[input_] :=    RearrangeMultiplicativeSubexpressions //@ 
 FullSimplify[
  Inactivate[input, 
    Sum | NIntegrate] /. {Inactive[NIntegrate][
      f_, {x_, xmin_, xmax_}, ___] :> 
     Inactive[Integrate][f, {x, xmin, xmax}]}]


End[]; (* End `Private` *)

EndPackage[];
