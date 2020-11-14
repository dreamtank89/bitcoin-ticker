import 'package:bitcoin_ticker/network.dart';

const List<String> currenciesList = [
  'MYR',
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
  Future<dynamic> getCoinData(selectedCurrency) async {
    // var crypto = cryptoList.forEach(
    //   (element) {
    //     return element;
    //   },
    // ).toString();

    // NetworkHelper network =
    //     NetworkHelper('$mapURL/$crypto/$selectedCurrency?apikey=$myKey');

    // return dataCoin;

    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      //Update the URL to use the crypto symbol from the cryptoList
      NetworkHelper network =
          NetworkHelper('$mapURL/$crypto/$selectedCurrency?apikey=$myKey');

      var dataCoin = await network.getData();
      cryptoPrices[crypto] = dataCoin.toStringAsFixed(0);
    }
    return cryptoPrices;
  }
}
