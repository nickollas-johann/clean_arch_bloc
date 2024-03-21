import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int? id;
  final DateTime createdAt;
  final String name;
  final String avatar;

  const UserEntity(this.id, this.createdAt, this.name, this.avatar);

  UserEntity.empty() : this(0, DateTime.now(), '', '');

  @override
  List<Object?> get props => [id, createdAt, name, avatar];
}
