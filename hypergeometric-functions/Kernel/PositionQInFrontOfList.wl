
  BeginPackage["PeterBurbery`HypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`HypergeometricFunctions`PositionQInFrontOfList;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PositionQInFrontOfList//ClearAll

PositionQInFrontOfList[input_?ListQ] := 
 Module[{list}, list = Cases[q | q^_][input]; 
  Join[list, UnsortedComplement[input, list]]]

End[]; (* End `Private` *)

EndPackage[];
