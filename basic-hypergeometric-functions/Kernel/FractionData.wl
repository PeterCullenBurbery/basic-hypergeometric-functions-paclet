(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

PeterBurbery`BasicHypergeometricFunctions`FractionData;

Begin["`Private`"];

FractionData // ClearAll

FractionData::usage = "FractionData[x] gives data on a fraction.";

FractionData[x_] :=
   Module[{leftTypes, rightTypes, interestingDataTypes, numeratorData,
       denominatorData, numerator, denominator, basicData, listData, interestingData,
       organizedData, moreData, postData, postDataProduct, preData, preDataProduct,
       combinedData, smallerFractionData, allData, totalProductList, totalProductProduct,
       deletedCasesData, outputData, interestingNumeratorDataAssociation, interestingDenominatorDataAssociation,
       interestingNumeratorDataList, interestingDenominatorDataList, numeratorWithThingsToKeep,
       leftTypesList, rightTypesList, leftProduct, rightProduct, finalProduct,
       denominatorProduct},
      leftTypes = {"q-powers", "fraction-power-cases"};
      rightTypes = {"sums", "integrals", "products", "very-well-poised-basic-hypergeometric-cases"
         };
      interestingDataTypes = {"very-well-poised-basic-hypergeometric-cases",
          "fraction-power-cases", "sums", "q-powers", "integrals", "products"}
         ;
      {numerator, denominator} = NumeratorDenominator[x];
      numeratorData = <|"value" -> numerator|>;
      denominatorData = <|"value" -> denominator|>;
      interestingNumeratorDataAssociation = <|"q-powers" -> Cases[numerator,
          (_ ? (Function[{symbol}, Quiet[StringMatchQ[Quiet[FullSymbolName[symbol
         ], General::strse], "*`q"], StringMatchQ::strse], {}])) ^ _], "very-well-poised-basic-hypergeometric-cases"
          -> Cases[numerator, _?VeryWellPoisedBasicHypergeometricFunctionQ], "fraction-power-cases"
          -> Cases[numerator, (_?FractionQ) ^ power_], "sums" -> Cases[numerator,
          (Sum | Inactive[Sum])[summand:___, {variableOfSummation_, lowerBound_,
          upperBound_}]], "integrals" -> Join[Cases[numerator, (Inactive[Integrate
         ] | Integrate)[integrand_, {variableOfIntegration_, lowerBound_, upperBound_
         }]], Cases[numerator, (Integrate | Inactive[Integrate])[integrand_, variable_
         ]]], "products" -> Cases[numerator, (Inactive[Product] | Product)[factor_,
          {variable_, lowerBound_, upperBound_}]]|>;
      interestingNumeratorDataList = Catenate[Values[interestingNumeratorDataAssociation
         ]];
      interestingDenominatorDataAssociation = <|"q-powers" -> Cases[denominator,
          (_ ? (Function[{symbol}, Quiet[StringMatchQ[Quiet[FullSymbolName[symbol
         ], General::strse], "*`q"], StringMatchQ::strse], {}])) ^ _], "very-well-poised-basic-hypergeometric-cases"
          -> Cases[denominator, _?VeryWellPoisedBasicHypergeometricFunctionQ],
          "fraction-power-cases" -> Cases[denominator, (_?FractionQ) ^ power_,
          "integrals"] -> Join[Cases[denominator, (Inactive[Integrate] | Integrate
         )[integrand_, {variableOfIntegration_, lowerBound_, upperBound_}]], Cases[
         denominator, (Integrate | Inactive[Integrate])[integrand_, variable_]
         ]], "products" -> Cases[denominator, (Inactive[Product] | Product)[factor_,
          {variable_, lowerBound_, upperBound_}]]|>;
      interestingDenominatorDataList = Catenate[Values[interestingDenominatorDataAssociation
         ]];
      numeratorData = Join[numeratorData, interestingNumeratorDataAssociation,
          <|"interesting-data" -> interestingNumeratorDataList|>];
      denominatorData = Join[denominatorData, interestingDenominatorDataAssociation,
          <|"interesting-data" -> interestingDenominatorDataList|>];
      numeratorWithThingsToKeep = DeleteCases[numerator, Alternatives
          @@ interestingNumeratorDataList];
      leftTypesList = Catenate[Lookup[interestingNumeratorDataAssociation,
          leftTypes]];
      leftProduct = TransformList[leftTypesList];
      rightTypesList = Catenate[Lookup[interestingNumeratorDataAssociation,
          rightTypes]];
      rightProduct = TransformList[rightTypesList];
      numeratorData = Join[numeratorData, <|"numerator-with-things-to-keep"
          -> numeratorWithThingsToKeep|>];
      denominatorProduct = TransformList[List @@ (denominator)];
      finalProduct = TransformList[{leftProduct, numeratorWithThingsToKeep
          / denominatorProduct, rightProduct}];
      outputData = <|"numerator" -> numeratorData, "denominator" -> denominatorData,
          "left-product" -> leftProduct, "right-product" -> rightProduct, "numerator-with-things-to-keep"
          -> numeratorWithThingsToKeep, "denominator-product" -> denominatorProduct,
          "final-product" -> finalProduct|>
   ]

End[]; (* End `Private` *)

EndPackage[];
