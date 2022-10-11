import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/utilities/utilities.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class ThirdPartyModule {
  Dio get dio => Dio()
    ..options.headers.addAll(<String, dynamic>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    })
    ..interceptors.add(
      PrettyDioLogger(
        requestBody: true,
      ),
    )
    ..interceptors.add(
      RetryInterceptor(),
    )
    ..interceptors.add(
      DioCacheInterceptor(
        options: CacheOptions(
          store: MemCacheStore(
            maxSize: 20971520,
            maxEntrySize: 1572864,
          ),
          allowPostMethod: true,
        ),
      ),
    );
}
