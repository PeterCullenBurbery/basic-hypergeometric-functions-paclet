

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`FractionWithNumeratorNotOneQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

FractionWithNumeratorNotOneQ//ClearAll
FractionWithNumeratorNotOneQ[input_] := 
 And @@ {FractionQ[input], Numerator[input] =!= 1}

End[]; (* End `Private` *)

EndPackage[];
