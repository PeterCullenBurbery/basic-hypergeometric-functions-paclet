

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedBasicHypergeometricLaTeX;


Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedBasicHypergeometricLaTeX//ClearAll
VeryWellPoisedBasicHypergeometricLaTeX[
 input_?VeryWellPoisedBasicHypergeometricFunctionQ]:= 
TemplateApply["\\Whyp{<* #totalnumberofnumeratorparameters *>}{<* \
#totalnumberofdenominatorparameters *>}{<* \
TransformToLaTeX[#leadingelement] \
*>}{<*StringTake[TransformToLaTeX[#numeratorparameters],{3,-3}]*>}{<*\
TransformToLaTeX[#base]*>,<*TransformToLaTeX[#argument]*>}", 
 VeryWellPoisedBasicHypergeometricSeriesData[
input]]
End[]; (* End `Private` *)

EndPackage[];
