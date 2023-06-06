(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RearrangeMultiplicativeSubExpressions;

Begin["`Private`"];

(* Define your public and private symbols here. *)
RearrangeMultiplicativeSubExpressions//ClearAll
Attributes[
  RearrangeMultiplicativeSubExpressions] = {HoldFirst}
RearrangeMultiplicativeSubExpressions[input_] := 
 Module[{firstoutput}, 
firstoutput = 
  Inactivate[input, 
     Times] //. {Inactive[Times][Global`i : (_?AtomQ ..)] :> 
      NonCommutativeMultiply @@ PositionQInFrontOfList[{Global`i}], 
     Inactive[Times][
       OrderlessPatternSequence[
       Global`n : ((_^_?(#1 > 0 &) | _?(NumeratorTermQ[#1] &)) ..), 
        Global`d : ((_^_?(#1 < 
                  0 &) | _?(DenominatorTermQ[#1] &)) ..)]] :> \
(NonCommutativeMultiply @@ PositionQInFrontOfList[{Global`n}] /.
         
         NonCommutativeMultiply[Global`x_] :>Global`x)/(NonCommutativeMultiply @@ 
          PositionQInFrontOfList[Denominator /@ {      Global`d}] /. 
         NonCommutativeMultiply[Global`y_] :> Global`y), 
     NonCommutativeMultiply[Global`i : (_?NumericQ ..)] :> Times[Global`i], 
     u : NonCommutativeMultiply[___] /; Cases[u, Global`q | Global`q^_] != {} :> 
      NonCommutativeMultiply @@ PositionQInFrontOfList[List @@ u], 
     Inactive[Times][Global`y__] :> NonCommutativeMultiply[Global`y]} /. 
   Inactive[Times][Global`i : (_?NumericQ ..)] :> Times[Global`i];
 Replace[
  Replace[DeleteCases[
    firstoutput /. 
     OrderlessPatternSequence[Global`numbers : (_?NumericQ ..), 
        Global`symbols : (_Symbol ...), 
        Global`powers : (_^_. ..)] ** (Global`plus : ((+__) ...)) :> 
      Times @@ Global`numbers NonCommutativeMultiply @@ 
        PositionQInFrontOfList[Join[{Global`symbols}, {Global`powers}, {Global`plus}]], 
    NonCommutativeMultiply[], All], NonCommutativeMultiply[Global`x_] :> Global`x, 
   All], {NonCommutativeMultiply[
     Global`nonqs : Repeated[_?(Head[#] == Symbol && # =!= Global`q &)], 
  Global`qs : Power[NonCommutativeMultiply[Global`q, _], _]] :> 
    NonCommutativeMultiply[Global`qs, Global`nonqs]}, All]]
End[]; (* End `Private` *)

EndPackage[];
