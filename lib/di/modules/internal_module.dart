import 'package:injectable/injectable.dart';
import 'package:pokedex/presentation/routers/router.dart';

@module
abstract class InternalModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
