(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ReplaceNIntegrateWithInactiveIntegrateAndInactivateSumAfterPlacingQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
ReplaceNIntegrateWithInactiveIntegrateAndInactivateSumAfterPlacingQ//ClearAll

Attributes[
   ReplaceNIntegrateWithInactiveIntegrateAndInactivateSumAfterPlacingQ\
InTheFrontOfAllMultiplicativeExpressions] = {HoldFirst}; 
ReplaceNIntegrateWithInactiveIntegrateAndInactivateSumAfterPlacingQInT\
heFrontOfAllMultiplicativeExpressions[input_] := 
 RearrangeMultiplicativeSubExpressions //@ 
   Inactivate[input, 
    Sum | NIntegrate] /. {Inactive[NIntegrate][
     f_, {x_, xmin_, xmax_}, ___] :> 
    Inactive[Integrate][f, {x, xmin, xmax}]} 


End[]; (* End `Private` *)

EndPackage[];
