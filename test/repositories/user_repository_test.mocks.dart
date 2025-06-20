// Mocks generated by Mockito 5.4.6 from annotations
// in flutter_test_practice/test/repositories/user_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_test_practice/model/user.dart' as _i3;
import 'package:flutter_test_practice/repositories/user_repository.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [UserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepository extends _i1.Mock implements _i2.UserRepository {
  @override
  List<_i3.User> get users =>
      (super.noSuchMethod(
            Invocation.getter(#users),
            returnValue: <_i3.User>[],
            returnValueForMissingStub: <_i3.User>[],
          )
          as List<_i3.User>);

  @override
  _i4.Future<List<_i3.User>> getUsers() =>
      (super.noSuchMethod(
            Invocation.method(#getUsers, []),
            returnValue: _i4.Future<List<_i3.User>>.value(<_i3.User>[]),
            returnValueForMissingStub: _i4.Future<List<_i3.User>>.value(
              <_i3.User>[],
            ),
          )
          as _i4.Future<List<_i3.User>>);

  @override
  void addUser(_i3.User? user) => super.noSuchMethod(
    Invocation.method(#addUser, [user]),
    returnValueForMissingStub: null,
  );

  @override
  void deleteUser(String? id) => super.noSuchMethod(
    Invocation.method(#deleteUser, [id]),
    returnValueForMissingStub: null,
  );
}

/// A class which mocks [User].
///
/// See the documentation for Mockito's code generation for more information.
class MockUser extends _i1.Mock implements _i3.User {
  @override
  String get id =>
      (super.noSuchMethod(
            Invocation.getter(#id),
            returnValue: _i5.dummyValue<String>(this, Invocation.getter(#id)),
            returnValueForMissingStub: _i5.dummyValue<String>(
              this,
              Invocation.getter(#id),
            ),
          )
          as String);

  @override
  String get lastName =>
      (super.noSuchMethod(
            Invocation.getter(#lastName),
            returnValue: _i5.dummyValue<String>(
              this,
              Invocation.getter(#lastName),
            ),
            returnValueForMissingStub: _i5.dummyValue<String>(
              this,
              Invocation.getter(#lastName),
            ),
          )
          as String);

  @override
  String get firstName =>
      (super.noSuchMethod(
            Invocation.getter(#firstName),
            returnValue: _i5.dummyValue<String>(
              this,
              Invocation.getter(#firstName),
            ),
            returnValueForMissingStub: _i5.dummyValue<String>(
              this,
              Invocation.getter(#firstName),
            ),
          )
          as String);

  @override
  String get email =>
      (super.noSuchMethod(
            Invocation.getter(#email),
            returnValue: _i5.dummyValue<String>(
              this,
              Invocation.getter(#email),
            ),
            returnValueForMissingStub: _i5.dummyValue<String>(
              this,
              Invocation.getter(#email),
            ),
          )
          as String);

  @override
  String get fullName =>
      (super.noSuchMethod(
            Invocation.getter(#fullName),
            returnValue: _i5.dummyValue<String>(
              this,
              Invocation.getter(#fullName),
            ),
            returnValueForMissingStub: _i5.dummyValue<String>(
              this,
              Invocation.getter(#fullName),
            ),
          )
          as String);
}
