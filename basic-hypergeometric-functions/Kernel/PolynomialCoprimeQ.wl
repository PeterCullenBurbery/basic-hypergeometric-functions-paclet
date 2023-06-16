(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PolynomialCoprimeQ;

Begin["`Private`"];

ClearAll[PolynomialCoprimeQ]

PolynomialCoprimeQ::usage = 
  "PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns \
True when polynomial1,polynomial2,\[Ellipsis] are coprime and False \
when they are not.";

Options[PolynomialCoprimeQ] = {Extension -> Automatic, 
   Trig -> True, Modulus -> 0};(*I am setting the Extension to Automatic and Trig to True to try to be as thorough as possible.*)

PolynomialCoprimeQ[input : Repeated[_?PolynomialQ], 
  opts : OptionsPattern[]] := 
 Module[{options}, 
  options = Join[{opts}, Options[PolynomialCoprimeQ]];
  If[OptionValue[Modulus] != 0 && OptionValue[Extension] != None, 
   Message[PolynomialCoprimeQ::mext, 
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
     Sequence @@ FilterRules[options, Options[PolynomialGCD]]]-Times[input] === 0]]
(* ClearAll[PolynomialCoprimeQ]

PolynomialCoprimeQ::usage = "PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns True when polynomial1,polynomial2,\[Ellipsis] are coprime and False when they are not.";

Options[PolynomialCoprimeQ] = {Extension -> Automatic, Trig -> True};

PolynomialCoprimeQ[input : Repeated[_?PolynomialQ], opts : OptionsPattern[]] :=
    EchoEvaluation@PolynomialGCD[input, Sequence@@EchoEvaluation@FilterRules[{opts}, Options[PolynomialGCD]]] === 1 *)

(* ClearAll[PolynomialCoprimeQ]

PolynomialCoprimeQ::usage = "PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns True when polynomial1,polynomial2,\[Ellipsis] are coprime and False when they are not.";

Options[PolynomialCoprimeQ] = {Extension -> Automatic, Trig -> True};

PolynomialCoprimeQ[input : Repeated[_?PolynomialQ], opts : OptionsPattern[
    ]] :=
    PolynomialGCD[input, Sequence @@ EchoEvaluation@FilterRules[{opts}, Options[PolynomialGCD
        ]]] === 1 *)

(* Define your public and private symbols here. *)

(* PolynomialCoprimeQ::usage = "PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns True when polynomial1,polynomial2,\[Ellipsis] are coprime and False when they are not.";



PolynomialCoprimeQ[input : Repeated[_?PolynomialQ]] :=
    PolynomialGCD[input] === 1

PositionQInFrontOfList[args___] :=
    Null /; CheckArguments[PositionQInFrontOfList[args], {1, Infinity
        }] *)

(* PolynomialCoprimeQ::usage = "PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns True when polynomial1,polynomial2,\[Ellipsis] are coprime and False when they are not.";

Options[PolynomialCoprimeQ] = {Extension -> Automatic, Trig -> True};

PolynomialCoprimeQ[input : Repeated[_?PolynomialQ]] :=
    PolynomialGCD[input,] === 1

PositionQInFrontOfList[args___] :=
    Null /; CheckArguments[PositionQInFrontOfList[args], {1, Infinity
        }] *)

(* PolynomialCoprimeQ // ClearAll

PolynomialCoprimeQ::usage = "PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns True when polynomial1,polynomial2,\[Ellipsis] are coprime and False when they are not.";

Options[PolynomialCoprimeQ] = {Extension -> Automatic, Trig -> True};

PolynomialCoprimeQ[input : Repeated[_?PolynomialQ], opts : OptionsPattern[
    ]] :=
    PolynomialGCD[input, Echo@FilterRules[{opts}, Echo@Options[PolynomialGCD]]] ===
         1

PositionQInFrontOfList[args___] :=
    Null /; CheckArguments[PositionQInFrontOfList[args], {1, Infinity
        }] *)

(* ClearAll[PolynomialCoprimeQ]

PolynomialCoprimeQ::usage = "PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns True when polynomial1,polynomial2,\[Ellipsis] are coprime and False when they are not.";

Options[PolynomialCoprimeQ] = {(*Extension -> Automatic,*)Trig -> True
    };

PolynomialCoprimeQ[input : Repeated[_?PolynomialQ], opts : OptionsPattern[
    ]] :=
    (* EchoEvaluation@PolynomialGCD[input,Echo@ FilterRules[Echo@{opts}, Options[PolynomialGCD]]] === {1}  *)(* PolynomialLCM[input]-Times[input]===0 *)PolynomialGCD[
        input, Sequence @@ FilterRules[{opts}, Options[PolynomialGCD]]] === 1 *)

End[]; (* End `Private` *)

EndPackage[];
