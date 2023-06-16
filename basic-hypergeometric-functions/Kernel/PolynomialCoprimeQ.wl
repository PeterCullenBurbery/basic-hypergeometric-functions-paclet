(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PolynomialCoprimeQ;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PolynomialCoprimeQ // ClearAll

PolynomialCoprimeQ::usage="PolynomialCoprimeQ[polynomial1,polynomial2,\[Ellipsis]] returns True when polynomial1,polynomial2,\[Ellipsis] are coprime and False when they are not."
PolynomialCoprimeQ[input_:Repeated[_?PolynomialQ]]:=PolynomialGCD[input]===1

PositionQInFrontOfList[args___] :=
    Null /; CheckArguments[PositionQInFrontOfList[args],{ 1,Infinity}]

End[]; (* End `Private` *)

EndPackage[];
