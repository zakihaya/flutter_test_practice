import 'package:flutter_test_practice/model/user.dart';

// ユーザーのリポジトリ
class UserRepository {
  // ユーザー一覧
  final List<User> users = [];

  // ユーザー一覧を返す
  Future<List<User>> getUsers() async {
    return users;
  }

  // ユーザーを追加する
  void addUser(User user) {
    users.add(user);
  }

  // ユーザーを削除する
  void deleteUser(String id) {
    users.removeWhere((user) => user.id == id);
  }
}
