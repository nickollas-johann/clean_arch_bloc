import 'package:clean_arch_bloc/core/utils/typedaf.dart';
import 'package:clean_arch_bloc/src/authentication/domain/entities/user_entity.dart';

abstract class AuthRepository {
  ResultFuture<bool> createUser(UserEntity userEntity);
  ResultFuture<List<UserEntity>> getUsers();
}
