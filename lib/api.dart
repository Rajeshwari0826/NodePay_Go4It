import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
// Pause/Unpause a Commerce Contract

void togglePausedState() async {
  var url =
      Uri.parse('https://api.verbwire.com/v1/nft/update/togglePausedState');
  var request = http.MultipartRequest('POST', url);
  request.headers['X-API-Key'] = 'sk_live_1ce94fe8-a219-40b6-be93-067f28bf5a2c';
  request.headers['accept'] = 'application/json';
  request.headers['content-type'] = 'multipart/form-data';

  request.fields['chain'] = 'polygon';
  // request.fields['contractAddress'] =
  //'0xc015A144c6Fb2de698B9f498ff9bbffF0CE370F6';

  try {
    var response = await request.send();
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(await response.stream.bytesToString());
    } else {
      // ignore: avoid_print
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    // ignore: avoid_catches_without_on_io, avoid_print
    print(e);
  }
}

// Set a payment price for your Commerce Contract

// import 'package:http/http.dart' as http;

void updatePaymentPrice() async {
  var url = Uri.parse('https://api.verbwire.com/v1/nft/update/setPaymentPrice');
  var request = http.MultipartRequest('POST', url);
  request.headers['X-API-Key'] = 'sk_live_1ce94fe8-a219-40b6-be93-067f28bf5a2c';
  request.headers['accept'] = 'application/json';
  request.headers['content-type'] = 'multipart/form-data';

  request.fields['chain'] = 'polygon';
  // request.fields['contractAddress'] =
  //     '0xc015A144c6Fb2de698B9f498ff9bbffF0CE370F6';
  request.fields['newPaymentPriceInWei'] = '300';

  try {
    var response = await request.send();
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('Payment price updated successfully');
      }
    } else {
      // ignore: avoid_print
      print(
          'Failed to update payment price. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // ignore: avoid_print
    print('$e');
  }
}

// Set Mint Price

// import 'package:http/http.dart' as http;

// convert to .dart for transaction app

// import 'package:http/http.dart' as http;

Future<Object> withdrawFunds() async {
  var url = Uri.parse('https://api.verbwire.com/v1/nft/update/withdrawFunds');
  var headers = {
    'X-API-Key': 'sk_live_1ce94fe8-a219-40b6-be93-067f28bf5a2c',
    'accept': 'application/json',
    'content-type': 'application/x-www-form-urlencoded',
  };
  var body = {
    'chain': 'polygon',
    //'contractAddress': '0xc015A144c6Fb2de698B9f498ff9bbffF0CE370F6',
  };

  try {
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      return 1;
    } else {
      return 1;
    }
  } catch (e) {
    return e;
  }
}

/// Deploy a Smart Contract

// import 'package:http/http.dart' as http;

Future<Object> deployContract() async {
  var url = Uri.parse('https://api.verbwire.com/v1/nft/deploy/deployContract');
  var headers = {
    'X-API-Key': 'sk_live_1ce94fe8-a219-40b6-be93-067f28bf5a2c',
    'accept': 'application/json',
    'content-type': 'multipart/form-data',
  };
  // var body = {
  //   'chain': 'polygon',
  //   'contractType': 'nft1155',
  //   'contractCategory': 'simple',
  //   'isCollectionContract': 'false',
  //   'contractName': 'NodePay',
  //   'contractSymbol': 'nP',
  //   //'recipientAddress': '0xc015A144c6Fb2de698B9f498ff9bbffF0CE370F6',
  // };

  try {
    var response = await http.post(url, headers: headers);
    if (response.statusCode == 200) {
      return 1;
    } else {
      return -1;
    }
  } catch (e) {
    return e;
  }
}

/// Get Payee Payment Details
// import 'package:http/http.dart' as http;

Future<Object> get fetchContractPaymentDetails async {
  var url = Uri.parse(
      'https://api.verbwire.com/v1/nft/userOps/contractPaymentDetails');
  var headers = {
    'X-API-Key': 'sk_live_1ce94fe8-a219-40b6-be93-067f28bf5a2c',
    'accept': 'application/json',
    'content-type': 'application/x-www-form-urlencoded',
  };
  // var body = {
  //   'chain': 'polygon',
  //   'contractAddress': '0xc015A144c6Fb2de698B9f498ff9bbffF0CE370F6',
  //   'payeeAddress': '0xc015A144c6Fb2de698B9f498ff9bbffF0CE370F6',
  // };

  try {
    var response = await http.post(url, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return response.body;
    }
  } catch (e) {
    return e;
  }
}

/// Get Allowlist Shares 200
///
// import 'package:http/http.dart' as http;

Future<Object> allowListSharesForAddress() async {
  var url = Uri.parse(
      'https://api.verbwire.com/v1/nft/userOps/allowListSharesForAddress');
  var headers = {
    'X-API-Key': 'sk_live_1ce94fe8-a219-40b6-be93-067f28bf5a2c',
    'accept': 'application/json',
    'content-type': 'application/x-www-form-urlencoded',
  };
  // var body = {
  //   'chain': 'polygon',
  //   'allowListAddress': '57',
  //   'contractAddress': '0xc015A144c6Fb2de698B9f498ff9bbffF0CE370F6',
  // };

  try {
    var response = await http.post(url, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return response.body;
    }
  } catch (e) {
    return e;
  }
}

// Get Payee

// import 'package:http/http.dart' as http;

Future<Object> payeeAtIndex() async {
  var url = Uri.parse('https://api.verbwire.com/v1/nft/userOps/payeeAtIndex');
  var headers = {
    'X-API-Key': 'sk_live_1ce94fe8-a219-40b6-be93-067f28bf5a2c',
    'accept': 'application/json',
    'content-type': 'application/x-www-form-urlencoded',
  };
  // var body = {'chain': 'goerli'};

  try {
    var response = await http.post(url, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return response.body;
    }
  } catch (e) {
    return e;
  }
}
