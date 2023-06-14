(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ReplaceAndInactivate;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

ReplaceAndInactivate // ClearAll

Attributes[ReplaceAndInactivate] = {HoldFirst};

ReplaceAndInactivate[input_ ? (!EquationQ[#]&)] :=
  RearrangeMultiplicativeSubexpressions //@ FullSimplify[PowerExpand@Inactivate[input,
     Sum | NIntegrate] /. {Inactive[NIntegrate][f_, {x_, xmin_, xmax_}, ___
    ] :> Inactive[Integrate][f, {x, xmin, xmax}]}]

(*This could cause problems where things would move*)

ReplaceAndInactivate[input_ ? (EquationQ[#]&)] :=
  ApplySides[
    Function[{side},
      RearrangeMultiplicativeSubexpressions //@ FullSimplify[PowerExpand@ReplaceAll[
        {Inactive[NIntegrate][f_, {x_, xmin_, xmax_}, ___] :> Inactive[Integrate
        ][f, {x, xmin, xmax}]}][side]]
    ]
    ,
    Inactivate[input, Sum | NIntegrate]
  ]

End[]; (* End `Private` *)

EndPackage[];
