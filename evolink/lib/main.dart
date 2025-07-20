import 'package:flutter/material.dart';
import 'package:evolink/screen/login/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Login(),
    );
  }
}

Future<List<dynamic>> fetchUsers() async {
  final response = await http.get(
    Uri.parse('https://port-0-node-express-mdbm5y50c88ade54.sel5.cloudtype.app/users'),
  );
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load users');
  }
}

Future<bool> login(String email, String password) async {
  final response = await http.post(
    Uri.parse('https://port-0-node-express-mdbm5y50c88ade54.sel5.cloudtype.app/login'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'email': email, 'password': password}),
  );
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['success'] == true;
  } else {
    return false;
  }
}

void testApi() async {
  final users = await fetchUsers();
  print(users);
  final isLogin = await login('demoinging@gmail.com', '1234');
  print(isLogin ? "로그인 성공" : "로그인 실패");
}
