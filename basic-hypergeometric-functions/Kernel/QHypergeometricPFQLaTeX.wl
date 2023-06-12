(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QHypergeometricPFQLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

QHypergeometricPFQLaTeX // ClearAll

Attributes[QHypergeometricPFQLaTeX] = {HoldFirst};

QHypergeometricPFQLaTeX[input_ ? (!EquationQ[#]&)] :=
  RearrangeMultiplicativeSubexpressions //@ FullSimplify[Inactivate[input,
     Sum | NIntegrate] /. {Inactive[NIntegrate][f_, {x_, xmin_, xmax_}, ___
    ] :> Inactive[Integrate][f, {x, xmin, xmax}]}]

(*This could cause problems where things would move*)

QHypergeometricPFQLaTeX[input_ ? (EquationQ[#]&)] :=
  ApplySides[
    Function[{side},
      RearrangeMultiplicativeSubexpressions //@ FullSimplify[ReplaceAll[
        {Inactive[NIntegrate][f_, {x_, xmin_, xmax_}, ___] :> Inactive[Integrate
        ][f, {x, xmin, xmax}]}][side]]
    ]
    ,
    Inactivate[input, Sum | NIntegrate]
  ]

End[]; (* End `Private` *)

EndPackage[];
