import 'package:bitcoin_ticker/network.dart';

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

const myKey = 'CD591868-E7BB-43DE-8E3A-B581A9D7F592';
const mapURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future<dynamic> getCoinData() async {
    NetworkHelper network = NetworkHelper('$mapURL/BTC/MYR?apikey=$myKey');

    var dataCoin = await network.getData();

    return dataCoin;
  }
}
