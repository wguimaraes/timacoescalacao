import 'dart:convert';

class GamesMock {
  static const gamesMock =
      '[{"id":1,"name":"Team A","dateTime":"2024-09-26T10:00:00Z","users":[{"id":101,"name":"Alice Johnson"},{"id":102,"name":"Bob Smith"},{"id":103,"name":"Catherine Miller"},{"id":104,"name":"Daniel Clark"},{"id":105,"name":"Eleanor Harris"},{"id":106,"name":"Frank Lopez"}]},{"id":2,"name":"Team B","dateTime":"2024-09-26T11:00:00Z","users":[{"id":107,"name":"Grace Walker"},{"id":108,"name":"Henry Young"},{"id":109,"name":"Ivy King"},{"id":110,"name":"Jack Wright"},{"id":111,"name":"Karen Turner"},{"id":112,"name":"Liam Phillips"}]},{"id":3,"name":"Team C","dateTime":"2024-09-26T12:00:00Z","users":[{"id":113,"name":"Mia Stewart"},{"id":114,"name":"Noah Edwards"},{"id":115,"name":"Olivia Collins"},{"id":116,"name":"Paul Russell"},{"id":117,"name":"Quinn Bennett"},{"id":118,"name":"Rachel Carter"}]},{"id":4,"name":"Team D","dateTime":"2024-09-26T13:00:00Z","users":[{"id":119,"name":"Sam Mitchell"},{"id":120,"name":"Tina Diaz"},{"id":121,"name":"Ursula Gonzales"},{"id":122,"name":"Victor Brooks"},{"id":123,"name":"Wendy Rogers"},{"id":124,"name":"Xander Morgan"}]},{"id":5,"name":"Team E","dateTime":"2024-09-26T14:00:00Z","users":[{"id":125,"name":"Yara Murphy"},{"id":126,"name":"Zack Bell"},{"id":127,"name":"Amy Hughes"},{"id":128,"name":"Ben Foster"},{"id":129,"name":"Chloe Peterson"},{"id":130,"name":"David Sanders"}]}]';
  static getGamesMock() {
    return jsonDecode(gamesMock);
  }
}
