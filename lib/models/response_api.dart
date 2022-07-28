class ResponseApi {
  final bool success;
  final String message;
  final List items;
  final List<Map<String, dynamic>> errors;

  ResponseApi({required this.success, required this.message, required this.items, required this.errors});

  factory ResponseApi.fromJson(Map<String, dynamic> json) {
    return ResponseApi(
      success: json['success'] ?? false,
      message: json['message'] ?? 'Error',
      items: json['items'] ?? [], 
      errors: json['errors'] ?? []);
  }


  factory ResponseApi.empty() {
    return ResponseApi(
      success: false,
      message: 'Error',
      items: [], 
      errors: []);
  }

}