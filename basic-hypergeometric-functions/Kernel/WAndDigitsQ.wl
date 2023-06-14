(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`WAndDigitsQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*WAndDigitsQ//ClearAll*)

WAndDigitsQ // ClearAll

WAndDigitsQ[input_Symbol] :=
  StringMatchQ[SymbolName[input], "W" ~~ DigitCharacter..]

WAndDigitsQ[input_ ? (Function[{s}, StringQ[s], {}])] :=
  StringMatchQ[input, "W" ~~ DigitCharacter..]

End[]; (* End `Private` *)

EndPackage[];
