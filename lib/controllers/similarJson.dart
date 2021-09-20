import 'dart:convert';

import 'package:http/http.dart';

Future<void> readSimilarJson() async {
  Uri uri = Uri.parse("http://omanphone.smsoman.com/api/upsellproducts?id=5");
  var response = await get(uri);
  final data = await json.decode(response.body);
  return data;
}
