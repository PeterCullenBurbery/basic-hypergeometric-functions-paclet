BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];
PeterBurbery`BasicHypergeometricFunctions`ReplacePlusMinus;
Begin["`Private`"];
ReplacePlusMinus//ClearAll
ReplacePlusMinus::usage="ReplacePlusMinus[list] replaces cases of p,-p in a  list with plus or minus p."
ReplacePlusMinus[l_?(Function[{x},ListQ[x],{}])]:=SequenceReplace[l, {x_, -x_} :> PlusMinus[x]]
ReplacePlusMinus[args___]:=
Null/;CheckArguments[ReplacePlusMinus[args],1];
End[];
EndPackage[];
