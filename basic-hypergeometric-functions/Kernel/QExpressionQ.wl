(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QExpressionQ;

Begin["`Private`"];

QExpressionQ // ClearAll



QExpressionQ[input_]:=MatchQ[input,(_?(Function[{symbol}, 
   
    ! Quiet[StringMatchQ[Quiet[FullSymbolName[symbol],General::strse], 
      "*`q"],StringMatchQ::strse], {}]))^_.]
End[]; (* End `Private` *)

EndPackage[];
