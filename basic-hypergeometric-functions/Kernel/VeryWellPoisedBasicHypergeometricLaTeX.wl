(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`VeryWellPoisedBasicHypergeometricLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

VeryWellPoisedBasicHypergeometricLaTeX // ClearAll

VeryWellPoisedBasicHypergeometricLaTeX[input_?VeryWellPoisedBasicHypergeometricFunctionQ
  ] :=
  TemplateApply["\\Whyp{<* #totalnumberofnumeratorparameters *>}{<* #totalnumberofdenominatorparameters *>}{<* TeXString[#leadingelement] *>}{<* NumeratorParametersLaTeX[#numeratorparameters] *>}{<* StringRiffle[{TeXString[#base],TeXString[#argument]},\",\"] *>}",
     VeryWellPoisedBasicHypergeometricSeriesData[input]]

End[]; (* End `Private` *)

EndPackage[];
