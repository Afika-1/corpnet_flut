import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart'; // Ensure this import is present

class ApiService {
  final String baseUrl = 'https://api.example.com'; 

  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}