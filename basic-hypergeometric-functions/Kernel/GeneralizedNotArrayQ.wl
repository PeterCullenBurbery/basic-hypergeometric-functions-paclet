(* ::Package:: *)

(* ::Package:: *)
(**)


  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`GeneralizedNotArrayQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

GeneralizedNotArrayQ//ClearAll
GeneralizedNotArrayQ[input_] :=
And@@{ArrayDepth[input,
AllowedHeads->"ListLike"|NumericArray|Association|GeoPosition]===0,!ByteArrayQ[input],!DataStructureQ[input]}
End[]; (* End `Private` *)

EndPackage[];
