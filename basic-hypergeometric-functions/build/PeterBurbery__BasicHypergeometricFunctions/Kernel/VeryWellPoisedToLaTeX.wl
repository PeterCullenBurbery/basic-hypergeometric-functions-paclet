

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedToLaTeX;


Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedToLaTeX//ClearAll
VeryWellPoisedToLaTeX[input_] := 
 TemplateApply[
  "\\Whyp{<* TeXString[#totalnumberofnumeratorparameters] *>}{<* \
TeXString[#totalnumberofdenominatorparameters] *>}{<* \
TeXString[#leadingelement] \
*>}<*TeXString/@#numeratorparameters*>{<*TeXString[#base]*>,<*\
TeXString[#argument]*>}", 
  VeryWellPoisedBasicHypergeometricSeriesData[input]]

End[]; (* End `Private` *)

EndPackage[];
