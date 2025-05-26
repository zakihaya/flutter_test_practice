import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_practice/model/user.dart';
import 'package:flutter_test_practice/repositories/user_repository.dart';

void main() {
  group('UserRepository Test', () {
    late UserRepository userRepository;

    setUp(() {
      userRepository = UserRepository();
    });

    test('addUser adds a user to the list', () async {
      final user = User(id: '1', lastName: 'Test', firstName: 'User', email: 'test@example.com');
      userRepository.addUser(user);
      final users = await userRepository.getUsers();
      expect(users, contains(user));
    });

    test('getUsers returns the list of users', () async {
      final user1 = User(id: '1', lastName: 'Test', firstName: 'User1', email: 'test1@example.com');
      final user2 = User(id: '2', lastName: 'Test', firstName: 'User2', email: 'test2@example.com');
      userRepository.addUser(user1);
      userRepository.addUser(user2);
      final users = await userRepository.getUsers();
      expect(users, [user1, user2]);
    });

    test('deleteUser removes a user from the list', () async {
      final user = User(id: '1', lastName: 'Test', firstName: 'User', email: 'test@example.com');
      userRepository.addUser(user);
      userRepository.deleteUser('1');
      final users = await userRepository.getUsers();
      expect(users, isEmpty);
    });

    test('deleteUser does nothing if user not found', () async {
      final user = User(id: '1', lastName: 'Test', firstName: 'User', email: 'test@example.com');
      userRepository.addUser(user);
      userRepository.deleteUser('2'); // 존재하지 않는 ID
      final users = await userRepository.getUsers();
      expect(users, contains(user));
      expect(users.length, 1);
    });
  });
}
