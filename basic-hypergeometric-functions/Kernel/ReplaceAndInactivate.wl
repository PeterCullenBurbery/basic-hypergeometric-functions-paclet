(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`ReplaceAndInactivate;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

ReplaceAndInactivate // ClearAll

Attributes[ReplaceAndInactivate] = {HoldAll};

ReplaceAndInactivate[input_ ? (!EquationQ[#]&)] :=
  RearrangeMultiplicativeSubexpressions //@
    FullSimplify[                                           (*    PowerExpand 
      
@*)(*I am not using PowerExpand because it converts something like ((b c d z)/(a q))^m to b^m**c^m**d^m**z^m/q^m**a^m, which is not what I want.*) Inactivate[input, Sum | NIntegrate] /. {Inactive[NIntegrate][f_, 
  {x_, xmin_, xmax_}, ___] :> Inactive[Integrate][f, {x, xmin, xmax}]}
    ]

(*This could cause problems where things would move*)

ReplaceAndInactivate[input_ ? (EquationQ[#]&)] :=
  ApplySides[
    Function[{side},
      RearrangeMultiplicativeSubexpressions //@
        FullSimplify[(*PowerExpand@*)(*I am not using PowerExpand because it converts something like ((b c d z)/(a q))^m to b^m**c^m**d^m**z^m/q^m**a^m, which is not what I want.*)
        ReplaceAll[{Inactive[NIntegrate][f_, {x_, xmin_, xmax_}, ___
  ] :> Inactive[Integrate][f, {x, xmin, xmax}]}][side]
        ]
    ]
    ,
    Inactivate[input, Sum | NIntegrate]
  ]

End[]; (* End `Private` *)

EndPackage[];
