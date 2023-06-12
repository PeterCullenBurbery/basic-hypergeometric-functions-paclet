(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`PolynomializeFractionPower;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PolynomializeFractionPower // ClearAll
PolynomializeFractionPower::usage="PolynomializeFractionPower[expr] converts all fraction powers in the numerator of fractions in expr to polynomials in front of the fraction."
PolynomializeFractionPower[input_] :=
ReplaceAll[ {1/(denominator : (NonCommutativeMultiply[(_) ..] | _)) \
(NonCommutativeMultiply[
       OrderlessPatternSequence[
        fractionpowers : (_?FractionToPowerQ ..), 
        nonfractionpowers : (_?(! 
               FractionToPowerQ[#1] &) ..)]] | (fractionpowers : (_?
           FractionToPowerQ ..))) :> 
   NonCommutativeMultiply[
    fractionpowers, (nonfractionpowers/denominator)]}][input]
End[]; (* End `Private` *)

EndPackage[];
