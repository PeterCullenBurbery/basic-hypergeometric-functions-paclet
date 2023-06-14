(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`DeleteAllWhitespaceCharactersExceptSpace;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[DeleteAllWhitespaceCharactersExceptSpace]

DeleteAllWhitespaceCharactersExceptSpace[input_ ? (Function[{s}, StringQ[
  s], {}])] :=
  StringReplace[{Except[" ", WhitespaceCharacter] -> ""}][input]

End[]; (* End `Private` *)

EndPackage[];
