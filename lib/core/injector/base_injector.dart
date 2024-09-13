import 'package:get_it/get_it.dart';

import 'base_bloc_injector.dart';
import 'base_datasource_injector.dart';
import 'base_repository_injector.dart';

abstract class BaseInjector {
  static final GetIt sl = GetIt.instance;

  static void init() {
    BaseDataSourceInjector.init(sl);
    BaseRepositoryInjector.init(sl);
    BaseBlocInjector.init(sl);
  }
}
