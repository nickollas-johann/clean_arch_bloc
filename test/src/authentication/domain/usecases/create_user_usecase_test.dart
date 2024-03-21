import 'package:clean_arch_bloc/core/errors/failure.dart';
import 'package:clean_arch_bloc/src/authentication/domain/entities/user_entity.dart';
import 'package:clean_arch_bloc/src/authentication/domain/repositories/auth_repository.dart';
import 'package:clean_arch_bloc/src/authentication/domain/usecases/create_user_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepo extends Mock implements AuthRepository {}

void main() {
  late CreateUserUseCase useCase;
  late AuthRepository authRepository;
  registerFallbackValue(UserEntity(any(), any(), any(), any()));

  setUp(() {
    authRepository = MockAuthRepo();
    useCase = CreateUserUseCase(authRepository);
  });

  var params = UserEntity.empty();

  test('Should call the [AuthRepository.createUser]', () async {
    // Arrange
    when(
      () => authRepository.createUser(params),
    ).thenAnswer((_) async => const Right(true));
    // Act
    final result = useCase(params);

    // Assert
    expect(result, equals(const Right<Failure, bool>(true)));

    verify(() => authRepository.createUser(params)).called(1);

    verifyNoMoreInteractions(authRepository);
  });
}
