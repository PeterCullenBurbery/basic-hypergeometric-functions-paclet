

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`FromVeryWellPoisedBasicHypergeometricSeriesToLaTeX;


Begin["`Private`"];

(* Define your public and private symbols here. *)

FromVeryWellPoisedBasicHypergeometricSeriesToLaTeX//ClearAll
FromVeryWellPoisedBasicHypergeometricSeriesToLaTeX[input_] := 
 TemplateApply[
  "\\Whyp{<* TeXString[#totalnumberofnumeratorparameters] *>}{<* \
TeXString[#totalnumberofdenominatorparameters] *>}{<* \
TeXString[#leadingelement] \
*>}<*TeXString/@#numeratorparameters*>{<*TeXString[#base]*>,<*\
TeXString[#argument]*>}", 
  VeryWellPoisedBasicHypergeometricSeriesData[input]]

End[]; (* End `Private` *)

EndPackage[];
