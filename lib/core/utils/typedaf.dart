import 'package:clean_arch_bloc/core/errors/failure.dart';

typedef ResultFuture<T> = Future<(Failure, T)>;
