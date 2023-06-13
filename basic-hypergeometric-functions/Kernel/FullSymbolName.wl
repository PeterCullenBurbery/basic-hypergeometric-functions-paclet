BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];
PeterBurbery`BasicHypergeometricFunctions`FullSymbolName;(*this is based on Richard Hennigan's Resource Function*)

Begin["`Private`"];

Attributes[FullSymbolName] = {HoldAllComplete}
 
FullSymbolName[(symbol_)?SymbolQ] := 
 PreemptProtect[
  Block[{$Context = "System`", $ContextPath = {"System`"}}, 
   With[{string = 
      StringTake[
       ToString[HoldComplete[symbol], InputForm], {14, -2}]}, 
    If[StringFreeQ[string, "`"], StringJoin["System`", string], 
     string]]]]
 
FullSymbolName[(name_String)?NameQ] := 
 ToExpression[name, InputForm, FullSymbolName]
 
FullSymbolName[___] := $Failed

Attributes[SymbolQ] = {HoldAllComplete}
 
SymbolQ[s_Symbol] := Depth[HoldComplete[s]] === 2
 
SymbolQ[___] := False
 
Options[SymbolQ] = {}









End[]; (* End `Private` *)

EndPackage[];