
  BeginPackage["PeterBurbery`HypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`HypergeometricFunctions`PositionQInFrontOfMultiplicativeSubExpressions;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PositionQInFrontOfMultiplicativeSubExpressions[input_] := 
 Module[{firstoutput}, 
  firstoutput = 
   Inactivate[input, 
      Times] //. {Inactive[Times][i : (_?AtomQ ..)] :> 
       NonCommutativeMultiply @@ PositionQInFrontOfList[{i}], 
      Inactive[Times][
        OrderlessPatternSequence[
         n : ((_^_?(#1 > 0 &) | _?(Denominator[#1] === 1 &)) ..), 
         d : ((_^_?(#1 < 0 &) | _?(Denominator[#1] =!= 
                  1 &)) ..)]] :> (NonCommutativeMultiply @@ 
           PositionQInFrontOfList[{n}] /. 
          NonCommutativeMultiply[x_] :> x)/(NonCommutativeMultiply @@ 
           PositionQInFrontOfList[Denominator /@ {d}] /. 
          NonCommutativeMultiply[y_] :> y), 
      NonCommutativeMultiply[i : (_?NumericQ ..)] :> Times[i], 
      u : NonCommutativeMultiply[___] /; Cases[u, q | q^_] != {} :> 
       NonCommutativeMultiply @@ PositionQInFrontOfList[List @@ u], 
      Inactive[Times][y__] :> NonCommutativeMultiply[y]} /. 
    Inactive[Times][i : (_?NumericQ ..)] :> Times[i]; 
  Replace[Replace[
    DeleteCases[
     firstoutput /. 
      OrderlessPatternSequence[numbers : (_?NumericQ ..), 
         symbols : (_Symbol ...), 
         powers : (_^_. ..)] ** (plus : ((+__) ...)) :> 
       Times @@ numbers NonCommutativeMultiply @@ 
         PositionQInFrontOfList[Join[{symbols}, {powers}, {plus}]], 
     NonCommutativeMultiply[], All], NonCommutativeMultiply[x_] :> x, 
    All], {(nonqs : (_?(Head[#1] == Symbol && #1 =!= 
               q &) ..)) ** (qs : (q ** _)^_) :> qs ** nonqs}, All]]
(*this has a bug.*)
End[]; (* End `Private` *)

EndPackage[];