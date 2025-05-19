// ユーザーのモデル
class User {
  final String id;
  final String lastName;
  final String firstName;
  final String email;

  // コンストラクタを追加して、finalフィールドを初期化します
  User({
    required this.id,
    required this.lastName,
    required this.firstName,
    required this.email,
  });

  // ユーザーの名前を返すメソッド
  String get fullName => '$lastName $firstName';
}
