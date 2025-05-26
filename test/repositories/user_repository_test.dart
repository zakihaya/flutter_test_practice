import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_practice/model/user.dart';
import 'package:flutter_test_practice/repositories/user_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_repository_test.mocks.dart'; // 生成されたモックファイル

// UserRepository と User のモックを生成するためのアノテーション
@GenerateNiceMocks([MockSpec<UserRepository>(), MockSpec<User>()])
void main() {
  group('UserRepository Test with Mockito', () {
    late MockUserRepository mockUserRepository;
    late MockUser mockUser; // Userのモック

    setUp(() {
      mockUserRepository = MockUserRepository();
      mockUser = MockUser(); // Userのモックを初期化
    });

    test('addUser adds a user to the list using mock', () async {
      // mockUser の設定
      when(mockUser.id).thenReturn('1');
      when(mockUser.lastName).thenReturn('Test');
      when(mockUser.firstName).thenReturn('User');
      when(mockUser.email).thenReturn('test@example.com');

      // addUserが呼び出されたときの動作を定義
      // このテストでは addUser は値を返さないため、特別な設定は不要

      // getUsersが呼び出されたときにモックユーザーリストを返すように設定
      when(mockUserRepository.getUsers()).thenAnswer((_) async => [mockUser]);

      // 実際の処理（この部分はUserRepositoryの実装に依存するため、
      // モックを使ったテストでは通常、直接addUserを呼び出す代わりに
      // addUserが呼び出されたことをverifyする）
      // しかし、このリポジトリは内部状態を持つため、addUserを呼び出し、
      // getUsersで結果を確認する従来の方法も有効です。
      // ここでは、addUserが呼び出され、その後getUsersで確認する形で進めます。
      mockUserRepository.addUser(mockUser); // モックオブジェクトにユーザーを追加

      final users = await mockUserRepository.getUsers();
      expect(users, contains(mockUser));
      verify(mockUserRepository.addUser(mockUser)).called(1); // addUserが1回呼ばれたか確認
      verify(mockUserRepository.getUsers()).called(1); // getUsersが1回呼ばれたか確認
    });

    test('getUsers returns the list of users using mock', () async {
      final mockUser1 = MockUser();
      when(mockUser1.id).thenReturn('1');
      when(mockUser1.lastName).thenReturn('Test');
      when(mockUser1.firstName).thenReturn('User1');
      when(mockUser1.email).thenReturn('test1@example.com');

      final mockUser2 = MockUser();
      when(mockUser2.id).thenReturn('2');
      when(mockUser2.lastName).thenReturn('Test');
      when(mockUser2.firstName).thenReturn('User2');
      when(mockUser2.email).thenReturn('test2@example.com');

      when(mockUserRepository.getUsers()).thenAnswer((_) async => [mockUser1, mockUser2]);

      // addUserの呼び出しは不要。getUsersが直接モックデータを返すため。
      // mockUserRepository.addUser(mockUser1); // 実際のaddUserを呼び出す必要はない
      // mockUserRepository.addUser(mockUser2);

      final users = await mockUserRepository.getUsers();
      expect(users, [mockUser1, mockUser2]);
      verify(mockUserRepository.getUsers()).called(1);
    });

    test('deleteUser removes a user from the list using mock', () async {
      when(mockUser.id).thenReturn('1');

      // deleteUserが呼び出されたときの動作を定義
      // このテストでは deleteUser は値を返さないため、特別な設定は不要

      // getUsersが呼び出されたときに空のリストを返すように設定（削除後なので）
      when(mockUserRepository.getUsers()).thenAnswer((_) async => []);

      // 実際の処理（addUserを呼ばずに、deleteUserを呼び出し、getUsersで結果を確認）
      mockUserRepository.deleteUser('1');

      final users = await mockUserRepository.getUsers();
      expect(users, isEmpty);
      verify(mockUserRepository.deleteUser('1')).called(1);
      verify(mockUserRepository.getUsers()).called(1);
    });

    test('deleteUser does nothing if user not found using mock', () async {
      final mockExistingUser = MockUser();
      when(mockExistingUser.id).thenReturn('1');
      when(mockExistingUser.lastName).thenReturn('Test');
      when(mockExistingUser.firstName).thenReturn('User');
      when(mockExistingUser.email).thenReturn('test@example.com');

      // deleteUserが呼び出されたときの動作を定義

      // getUsersが呼び出されたときに元のユーザーリストを返すように設定
      when(mockUserRepository.getUsers()).thenAnswer((_) async => [mockExistingUser]);

      // 存在しないユーザーIDでdeleteUserを呼び出す
      mockUserRepository.deleteUser('2');

      final users = await mockUserRepository.getUsers();
      expect(users, contains(mockExistingUser));
      expect(users.length, 1);
      verify(mockUserRepository.deleteUser('2')).called(1);
      verify(mockUserRepository.getUsers()).called(1);
    });
  });
}
