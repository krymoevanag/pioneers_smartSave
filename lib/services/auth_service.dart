
class AuthService {
  // Dummy user database
  static final Map<String, String> _users = {
    "admin@example.com": "admin",
    "member@example.com": "member",
  };

  // Simulate login
  static Future<String?> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay

    if (_users.containsKey(email)) {
      return _users[email]; // Return role
    } else {
      return null; // Login failed
    }
  }
}
