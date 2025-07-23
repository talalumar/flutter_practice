import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PKR',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'bitcoin',
  'ethereum',
  'litecoin',
];

class CoinData {

  Future getCoinData(String? selectCurr) async {
    final currency = selectCurr?.toLowerCase() ?? 'aud';
    http.Response response = await http.get(Uri.parse('https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum,litecoin&vs_currencies=$currency'));
    Map<String, String> cryptoPrices = {};

    for (String crypto in cryptoList) {
      if (response.statusCode == 200) {
        print(response.body);
        var coinData = jsonDecode(response.body);
        var priceData = coinData[crypto][currency];
        cryptoPrices[crypto] = priceData.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}