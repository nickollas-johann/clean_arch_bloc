import 'package:clean_arch_bloc/core/usecase/usecase.dart';
import 'package:clean_arch_bloc/core/utils/typedaf.dart';
import 'package:clean_arch_bloc/src/authentication/domain/entities/user_entity.dart';
import 'package:clean_arch_bloc/src/authentication/domain/repositories/auth_repository.dart';

class CreateUserUseCase extends UseCaseWithParams<bool, UserEntity> {
  final AuthRepository _authRepository;

  CreateUserUseCase(this._authRepository);

  @override
  ResultFuture<bool> call(UserEntity params) async =>
      _authRepository.createUser(params);
}
