import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_practice/model/user.dart';

void main() {
  group('User', () {
    test('Constructor creates a User object with correct properties', () {
      final user = User(
        id: '1',
        lastName: '山田',
        firstName: '太郎',
        email: 'yamada.taro@example.com',
      );

      expect(user.id, '1');
      expect(user.lastName, '山田');
      expect(user.firstName, '太郎');
      expect(user.email, 'yamada.taro@example.com');
    });

    test('fullName returns the full name', () {
      final user = User(
        id: '1',
        lastName: '山田',
        firstName: '太郎',
        email: 'yamada.taro@example.com',
      );

      expect(user.fullName, '山田 太郎');
    });

    test('fullName returns the full name with different names', () {
      final user = User(
        id: '2',
        lastName: 'Suzuki',
        firstName: 'Ichiro',
        email: 'suzuki.ichiro@example.com',
      );

      expect(user.fullName, 'Suzuki Ichiro');
    });
  });
}
