class App {
  static App _instance;
  final String baseUrl;
  final String appName;

  App.configure({this.appName, this.baseUrl}) {
    _instance = this;
  }

  factory App() {
    if (_instance == null) {
      throw UnimplementedError("App must be configured first");
    }

    return _instance;
  }
}
