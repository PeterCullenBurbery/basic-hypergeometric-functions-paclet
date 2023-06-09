


(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`DeleteText;


Begin["`Private`"];

(* Define your public and private symbols here. *)

DeleteText//ClearAll


DeleteText[input_?StringQ] := 
StringReplace[{"\\text{" ~~ r : Shortest[___] ~~
               "}" :> r}][input]

End[]; (* End `Private` *)

EndPackage[];
