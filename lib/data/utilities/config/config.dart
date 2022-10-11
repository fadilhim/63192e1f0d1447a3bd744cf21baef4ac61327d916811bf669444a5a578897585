import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiConfig {
  String url = 'https://id.portal-pokemon.com/play/pokedex/api/v1';
}
