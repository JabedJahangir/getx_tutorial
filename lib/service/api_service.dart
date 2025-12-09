import 'dart:convert';
import 'package:getx_tutorial/model/todo_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<TodoModel>> getData() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Decode JSON
        final List<dynamic> datas = jsonDecode(response.body);
        // Convert to TodoModel list
        return datas.map((data) => TodoModel.fromJson(data)).toList();
      } else {
        print("Error: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("Exception: $e");
      return [];
    }
  }
}

