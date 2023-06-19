(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`PolynomialsHaveCommonFactorQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[PolynomialsHaveCommonFactorQ]

PolynomialsHaveCommonFactorQ::usage = 
  "PolynomialsHaveCommonFactorQ[polynomial1,polynomial2,\[Ellipsis]] returns \
True when polynomial1,polynomial2,\[Ellipsis] have a common factor and False \
when they do not.";

Options[PolynomialsHaveCommonFactorQ] = {Extension -> Automatic, 
   Trig -> True, Modulus -> 0};(*I am setting the Extension to Automatic and Trig to True to try to be as thorough as possible.*)

PolynomialsHaveCommonFactorQ[input : Repeated[_?PolynomialQ], 
  opts : OptionsPattern[]] := 
 Module[{options}, 
  options = Join[{opts}, Options[PolynomialsHaveCommonFactorQ]];
  If[OptionValue[Modulus] != 0 && OptionValue[Extension] != None, 
   Message[PolynomialsHaveCommonFactorQ::mext, 
    "If Modulus is not 0, then Extension should be None."];
   Return[$Failed]];
  Which[! (OptionValue[Modulus] === 0 || 
      OptionValue[Extension] === None), 
   "Conflicting option setting. If Modulus is not 0, then Extension \
should be None. To fix the error, set Modulus->0 and use the default \
which is Extension->Automatic, or keep Modulus nonzero and set \
Extension->None. For more details see the error message \
ref/message/General/mext.", 
   OptionValue[Modulus] === 0 || OptionValue[Extension] === None, 
   PolynomialLCM[input, 
     Sequence @@ FilterRules[options, Options[PolynomialGCD]]]-Times[input] =!= 0]]
End[]; (* End `Private` *)

EndPackage[];
