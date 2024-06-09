import "package:get_it/get_it.dart";

import "../features/data/api_client.dart";

GetIt singleton = GetIt.instance;

Future<void> initdependctInjection() async {
  singleton.registerSingleton<ApiClient>(ApiClientImplementation());
  await singleton<ApiClient>().init();
}
