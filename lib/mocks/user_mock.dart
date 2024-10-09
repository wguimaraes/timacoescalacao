import 'dart:convert';

class UsersMock {
  static const usersMock =
      '[ { "id": 1, "name": "William Guimarães", "email": "william.guimaraes@unimedrs.coop.br", "login": "william.guimaraes", "admin": true }, { "id": 2, "name": "Jane Smith", "email": "janesmith@example.com", "login": "janesmith456", "admin": false }, { "id": 3, "name": "Robert Johnson", "email": "robertjohnson@example.com", "login": "robjohn789", "admin": false }, { "id": 4, "name": "Emily Davis", "email": "emilydavis@example.com", "login": "emilyd123", "admin": false }, { "id": 5, "name": "Michael Brown", "email": "michaelbrown@example.com", "login": "mikebrown007", "admin": false }, { "id": 6, "name": "Jessica Wilson", "email": "jessicawilson@example.com", "login": "jesswilson98", "admin": false }, { "id": 7, "name": "David Miller", "email": "davidmiller@example.com", "login": "davidmill12", "admin": false }, { "id": 8, "name": "Sophia Taylor", "email": "sophiataylor@example.com", "login": "sophiatay789", "admin": false }, { "id": 9, "name": "James Moore", "email": "jamesmoore@example.com", "login": "jamesmoore23", "admin": false }, { "id": 10, "name": "Laura Anderson", "email": "lauraanderson@example.com", "login": "lauraand123", "admin": false } ]';
  static getUsersMock() {
    return jsonDecode(usersMock);
  }
}
