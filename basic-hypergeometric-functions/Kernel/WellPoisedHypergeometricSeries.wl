
     

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`WellPoisedHypergeometricSeries;


Begin["`Private`"];

(* Define your public and private symbols here. *)

WellPoisedHypergeometricSeries//ClearAll

WellPoisedHypergeometricSeries // ClearAll
WellPoisedHypergeometricSeries[a_, b_, numeratorparameters__, base_, 
  argument_] := 
 QHypergeometricPFQ[{b, base Sqrt[a], -base Sqrt[a], a, 
   numeratorparameters}, 
  Join[{Sqrt[a], -Sqrt[a]}, 
   Table[base a/argument, {argument, 
     Join[{b}, {numeratorparameters}]}]], base, argument]
(* WellPoisedHypergeometricSeries /: 
 TeXString[WellPoisedHypergeometricSeries[a_, b_, c_, d_, q_, z_]] ^:=
   "\\Whyp{6}{5}{" <> WrapWithBrackets[a] <> "}" <> "{" <> 
   WrapWithBrackets[b] <> "," <> WrapWithBrackets[b] <> "," <> 
   WrapWithBrackets[c] <> "," <> WrapWithBrackets[d] <> "}{" <> 
   WrapWithBrackets[q] <> "," <> WrapWithBrackets[z] <> "}"*)

End[]; (* End `Private` *)

EndPackage[];
