import 'package:mockapi/Models/DemoModel.dart';
import 'package:http/http.dart' as http;
import 'Constants.dart';
import 'dart:convert';

Future<DemoModel> fetchData() async {
  final response = await http.get('${(apiUrl)}/users');
  if (response.statusCode == 200) {
    return DemoModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load DemoAPI');
  }
}


Future<DemoModel> addData(String name,String tech) async {
  final response = await http.post(
   '${(apiUrl)}/users',  
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    }, 
    body: jsonEncode(<String, dynamic>{
      'name': name,
      'tech': tech,
    }),
  );

  if (response.statusCode == 201) {
    print(response.body);
    return DemoModel.fromJson(jsonDecode(response.body));
  } else {
     throw Exception('Failed to load DemoAPI');
  }
}