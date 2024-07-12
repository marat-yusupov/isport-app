import 'package:isport_app/data/repository/auth_data_repository_impl.dart';
import 'package:isport_app/domain/repository/auth_data_repository.dart';
import 'package:isport_app/internal/dependencies/api_module.dart';

class RepositoryModule{
  static AuthDataRepository? _authDataRepository;

  static AuthDataRepository authDataRepository() {
    return _authDataRepository ?? AuthDataRepositoryImpl(ApiModule.apiUtil());
  }
}