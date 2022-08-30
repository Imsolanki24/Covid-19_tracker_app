import 'dart:convert';
import 'package:covid_tracker_app/Model/WorldStateModel.dart';
import 'package:http/http.dart' as http;
import 'package:covid_tracker_app/Service/Utilities/app_url.dart';

// create class for API

class StatesServices {
  Future<WorldStateModel> fetchWorldStatesRecords() async {
    final response = await http.get(Uri.parse(AppUrl.worldStateApi));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStateModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> ccoountiresList() async {
    var data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
