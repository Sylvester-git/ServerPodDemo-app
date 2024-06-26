import "../../../packeg_barrel.dart";

abstract class ApiClient {
  late SessionManager sessionManager;
  late Client client;

  Future<void> init();
}

class ApiClientImplementation extends ApiClient {
  @override
  Future<void> init() async {
    client = Client('http://$localhost:8080/',
        authenticationKeyManager: FlutterAuthenticationKeyManager())
      ..connectivityMonitor = FlutterConnectivityMonitor();

    sessionManager = SessionManager(caller: client.modules.auth);
    await sessionManager.initialize();
  }
}
