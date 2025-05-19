## 参考

https://docs.flutter.dev/cookbook/testing/unit/introduction

## 実行方法

すべてのテストを実行

```bash
flutter test
```

指定したテストファイルを実行

```bash
flutter test test/test_name.dart
```

## メモ

### テストのマッチャ

下のようなものがある。
他にも例外が発生することなど、一通りのものは普通にありそう。

- `expect(actual, matcher)`
- `expect(['1', '2', '3'], contains(user.id))`
