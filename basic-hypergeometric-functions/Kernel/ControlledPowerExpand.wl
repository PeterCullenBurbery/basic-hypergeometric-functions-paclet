

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ControlledPowerExpand;


Begin["`Private`"];

(* Define your public and private symbols here. *)

ControlledPowerExpand//ClearAll

SetAttributes[ControlledPowerExpand, HoldFirst]
ControlledPowerExpand[i_] := 
 Switch[Extract[HoldForm[i], {1, 0}] === Sqrt, True, i, False, 
  PowerExpand[i]]

End[]; (* End `Private` *)

EndPackage[];