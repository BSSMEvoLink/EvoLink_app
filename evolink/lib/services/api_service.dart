import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:8080/api'; // Spring Boot 서버 주소
  
  // HTTP 헤더
  static Map<String, String> get headers => {
    'Content-Type': 'application/json',
    // 'Authorization': 'Bearer $token', // JWT 토큰이 있다면 추가
  };

  // 커뮤니티 게시글 목록 조회
  static Future<List<Map<String, dynamic>>> getCommunityPosts({String? tag}) async {
    try {
      final queryParams = tag != null ? {'tag': tag} : null;
      final uri = Uri.parse('$baseUrl/community/posts').replace(queryParameters: queryParams);
      
      final response = await http.get(uri, headers: headers);
      
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Failed to load community posts');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 새 게시글 작성
  static Future<Map<String, dynamic>> createCommunityPost({
    required String tag,
    required String content,
    String? imagePath,
    required String authorName,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/community/posts'),
        headers: headers,
        body: json.encode({
          'tag': tag,
          'content': content,
          'imagePath': imagePath,
          'authorName': authorName,
        }),
      );
      
      if (response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to create post');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 매칭 사용자 목록 조회
  static Future<List<Map<String, dynamic>>> getMatchingUsers({
    String? industry,
    String? stack,
    String? userType,
    String? location,
  }) async {
    try {
      final queryParams = <String, String>{};
      if (industry != null) queryParams['industry'] = industry;
      if (stack != null) queryParams['stack'] = stack;
      if (userType != null) queryParams['userType'] = userType;
      if (location != null) queryParams['location'] = location;
      
      final uri = Uri.parse('$baseUrl/matching/users').replace(queryParameters: queryParams);
      
      final response = await http.get(uri, headers: headers);
      
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Failed to load matching users');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 매칭 요청
  static Future<Map<String, dynamic>> requestMatching({
    required String targetUserId,
    required String message,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/matching/request'),
        headers: headers,
        body: json.encode({
          'targetUserId': targetUserId,
          'message': message,
        }),
      );
      
      if (response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to request matching');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 로그인
  static Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/auth/login'),
        headers: headers,
        body: json.encode({
          'email': email,
          'password': password,
        }),
      );
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Login failed');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 회원가입
  static Future<Map<String, dynamic>> register({
    required String email,
    required String password,
    required String name,
    required String userType,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/auth/register'),
        headers: headers,
        body: json.encode({
          'email': email,
          'password': password,
          'name': name,
          'userType': userType,
        }),
      );
      
      if (response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Registration failed');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 사용자 프로필 조회
  static Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/users/profile'),
        headers: headers,
      );
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load profile');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 프로필 수정
  static Future<Map<String, dynamic>> updateUserProfile({
    required Map<String, dynamic> profileData,
  }) async {
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/users/profile'),
        headers: headers,
        body: json.encode(profileData),
      );
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to update profile');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // 옵션 데이터 조회 (산업, 스택, 지역 등)
  static Future<List<String>> getOptions(String optionType) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/$optionType'),
        headers: headers,
      );
      
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.cast<String>();
      } else {
        throw Exception('Failed to load $optionType');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
} 