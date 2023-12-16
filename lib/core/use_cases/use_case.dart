import 'package:dartz/dartz.dart';

import '../exceptions/app_exception.dart';

abstract class UseCase<Type, Param> {
  Future<Either<AppException, Type>> call([Param param]);
}
