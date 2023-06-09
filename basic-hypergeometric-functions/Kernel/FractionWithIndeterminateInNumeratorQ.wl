

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`FractionWithIndeterminateInNumeratorQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

FractionWithIndeterminateInNumeratorQ//ClearAll
FractionWithIndeterminateInNumeratorQ[input_] := 
 And @@ {FractionQ[input], Cases[Numerator[N[input]], _Symbol, All, Heads -> True] =!= {}}

End[]; (* End `Private` *)

EndPackage[];
