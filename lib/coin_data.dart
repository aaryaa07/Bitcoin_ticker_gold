//TODO: Add your imports here.
import 'dart:convert';
import 'package:http/http.dart' as http;

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
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';

class CoinData {
  CoinData(this.currency);


  String currency;
  String rate='';
  Future <String> getCoinData ()
  async {
    var url ='https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apikey=9101A53E-5CA9-43DD-987C-879EB946138B';
    var response = await http.get(url);
    String data=response.body;
     rate=jsonDecode(data)['rate'].round().toString();
    print(rate);
    print(data);
    return rate;



  }
  Future <String> getCoinData1 ()
  async {
    var url ='https://rest.coinapi.io/v1/exchangerate/ETH/$currency?apikey=9101A53E-5CA9-43DD-987C-879EB946138B';
    var response = await http.get(url);
    String data=response.body;
    rate=jsonDecode(data)['rate'].round().toString();
    print(rate);
    print(data);
    return rate;



  }
  Future <String> getCoinData2 ()
  async {
    var url ='https://rest.coinapi.io/v1/exchangerate/LTC/$currency?apikey=9101A53E-5CA9-43DD-987C-879EB946138B';
    var response = await http.get(url);
    String data=response.body;
    rate=jsonDecode(data)['rate'].round().toString();
    print(rate);
    print(data);
    return rate;



  }
  //TODO: Create your getCoinData() method here.
}
