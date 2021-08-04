import 'package:dartz/dartz.dart';
import 'package:notes_app/domain/core/value_objects.dart';
import 'package:notes_app/domain/core/value_validators.dart';
import 'package:notes_app/domain/core/failures.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}
