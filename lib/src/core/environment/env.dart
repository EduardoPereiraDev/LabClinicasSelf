
final class Env {
  static const backendBaseUrl = String.fromEnvironment('BACKEND_BASE_URL');

    static validate() {
    if (backendBaseUrl.isEmpty) {
      throw Error.throwWithStackTrace('Env(BACKEND_BASE_URL) Not Found',
          StackTrace.fromString('Env(BACKEND_BASE_URL) Not Found'));
    }
  }
  
}