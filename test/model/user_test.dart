import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_practice/model/user.dart';

void main() {
  group('User', () {
    late User user;

    setUp(() {
      user = User(
        id: '1',
        lastName: '山田',
        firstName: '太郎',
        email: 'yamada.taro@example.com',
      );
    });

    test('Constructor creates a User object with correct properties', () {
      expect(user.id, '1');
      expect(user.lastName, '山田');
      expect(user.firstName, '太郎');
      expect(user.email, 'yamada.taro@example.com');
    });

    test('fullName returns the full name', () {
      expect(user.fullName, '山田 太郎');
    });

    test('fullName returns the full name with different names', () {
      final user2 = User(
        id: '2',
        lastName: '鈴木',
        firstName: '一郎',
        email: 'suzuki.ichiro@example.com',
      );
      expect(user2.fullName, '鈴木 一郎');
    });

    // 配列に値が含まれルコとのテスト
    test('containsValue returns true if the array contains the value', () {

      expect(['1', '2', '3'], contains(user.id));
    });
  });
}
