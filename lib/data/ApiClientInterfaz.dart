abstract class ApiClient {
  Future<String> get(String url, Map<String, String> headers);
  Future<String> post(String url, Map<String, String> headers, String body);
  Future<String> post2(String url, Map<String, String> headers, Map<String, String> body);
}