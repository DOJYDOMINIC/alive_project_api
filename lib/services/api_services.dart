import 'dart:convert';
import '../model/mainmodel.dart';
import 'package:http/http.dart' as http;

class PersonalDataAPI {
  static Future<PersonalData> fetchPersonalData(String dataId) async {
    final url = 'http://192.168.1.34:5000/api/search/searchById?dataId=$dataId';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return PersonalData.fromJson(responseData);
    } else {
      throw Exception('Failed to fetch personal data. Status code: ${response.statusCode}');
    }
  }
}


class DistrictApi {
  static Future<List<String>> fetchDistricts() async {
    const url = 'http://192.168.1.34:5000/api/search/listDistricts';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final districts = List<String>.from(responseData);
      return districts;
    } else {
      throw Exception('Failed to fetch districts. Status code: ${response.statusCode}');
    }
  }
}


// Future<List<String>> fetchBlocks(String district) async {
//   final url = 'http://192.168.1.34:5000/api/listBlocks?data_district=$district';
//
//   try {
//     final response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       final List<dynamic> data = json.decode(response.body);
//       return List<String>.from(data);
//     } else {
//       throw Exception('Failed to fetch blocks. Status code: ${response.statusCode}');
//     }
//   } catch (error) {
//     print('Error fetching blocks: $error');
//     rethrow;
//   }
// }


class BlockApi {
  static Future<List<String>> fetchBlocks(String district) async {
    final url = 'http://192.168.1.34:5000/api/listBlocks?data_district=$district';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return List<String>.from(data);
      } else {
        throw Exception('Failed to fetch blocks. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching blocks: $error');
      rethrow;
    }
  }
}
