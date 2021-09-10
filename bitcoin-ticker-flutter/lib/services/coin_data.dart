import 'package:bitcoin_ticker/utilities/constants.dart';
import 'package:bitcoin_ticker/utilities/helper.dart';

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

class CoinData {
  Future<Map> getCoinData(String currency) async {

    Map<String, String> cryptoPrices = {};

    for (String crypto in cryptoList) {
      NetworkHelper networkHelper = NetworkHelper(
          url: '$kCoinApiUrl/v1/exchangerate/$crypto/$currency',
          headers: kCoinApiHeader
      );
      dynamic data = await networkHelper.get();
      double rate = data['rate'];
      cryptoPrices[crypto] = rate.toStringAsFixed(0);
    }
    return cryptoPrices;
  }
}
