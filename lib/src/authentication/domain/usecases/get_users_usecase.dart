import 'package:clean_arch_bloc/core/usecase/usecase.dart';
import 'package:clean_arch_bloc/core/utils/typedaf.dart';
import 'package:clean_arch_bloc/src/authentication/domain/entities/user_entity.dart';
import 'package:clean_arch_bloc/src/authentication/domain/repositories/auth_repository.dart';

class GetUsersUseCase extends UseCaseWithoutParams<List<UserEntity>> {
  final AuthRepository _authRepository;

  const GetUsersUseCase(this._authRepository);
  @override
  ResultFuture<List<UserEntity>> call() async => _authRepository.getUsers();
}
