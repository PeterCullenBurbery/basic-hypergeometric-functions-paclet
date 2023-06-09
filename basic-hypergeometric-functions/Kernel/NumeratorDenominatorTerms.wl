

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`NumeratorDenominatorTerms;


Begin["`Private`"];

(* Define your public and private symbols here. *)

NumeratorDenominatorTerms//ClearAll
NumeratorDenominatorTerms[input_] :={Cases[input, 
  x_ /; NumeratorTermQ[x] === True], 
 Cases[input, 
  x_ /; DenominatorTermQ[x] === True]}

End[]; (* End `Private` *)

EndPackage[];
