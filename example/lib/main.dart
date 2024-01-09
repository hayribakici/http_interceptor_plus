import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor_plus/http_interceptor_plus.dart';

void main() async {
  // Create an instance of LoggingMiddleware and add it to the http.Client
  final http.Client client = LoggingMiddleware(http.Client());

  try {
    // Make an HTTP GET request
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    // Print the response status code
    debugPrint('GET Response: ${response.statusCode}');
  } catch (e) {
    // Print any error that occurs during the request
    debugPrint('GET Error: $e');
  }
}
