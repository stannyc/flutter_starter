import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({
    this.id = 0,
    this.name,
    this.email,
  });

  final int id;
  final String? name;
  final String? email;

  @override
  List<Object?> get props => [id];
}
