(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`WellPoisedHypergeometricCases;

Begin["`Private`"];

(* Define your public and private symbols here. *)

WellPoisedHypergeometricCases // ClearAll

WellPoisedHypergeometricCases[input_ ? (Function[{s}, StringQ[s], {}]
  )] :=
  StringCases[input, ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ Shortest[
    x__] ~~ ("\\right)\\text{**}" | ("\\right)" ~~ EndOfString)) :> x), IgnoreCase
     -> True]

Options[WellPoisedHypergeometricCases] = {Heads -> False};

WellPoisedHypergeometricCases[input_ ? (!StringQ[#]&), level_:All, OptionsPattern[
  ]] :=
  Cases[input, _?VeryWellPoisedBasicHypergeometricFunctionQ, level, Heads
     -> OptionValue[Heads]]

End[]; (* End `Private` *)

EndPackage[];
