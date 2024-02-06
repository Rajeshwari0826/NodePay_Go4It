import 'package:http/http.dart' as http;

void main() {
  // Make GET request for each URL
  makeGetRequest('https://api.verbwire.com/v1/nft/data/isWalletHolderOfToken');
  makeGetRequest('https://www.scrapingbee.com/curl-converter/dart');
  makeGetRequest('https://curlconverter.com/');
  makeGetRequest(
      'https://stackoverflow.com/questions/67853082/how-to-convert-curl-command-to-http-request-in-flutter');
  makeGetRequest(
      'https://copyprogramming.com/howto/how-to-convert-curl-command-to-http-request-in-flutter');
  makeGetRequest('https://bfotool.com/curl-to-dart');
}

// Function to make GET request
Future<Object> makeGetRequest(String url) async {
  try {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return 1;
    } else {
      return -1;
    }
  } catch (e) {
    return e;
  }
}
