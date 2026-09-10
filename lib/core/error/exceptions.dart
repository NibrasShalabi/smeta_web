/// Exceptions thrown from the data layer (data sources) — translated to a
/// Failure inside the repository.
class ServerException implements Exception {
  final String message;
  ServerException([this.message = 'Server error']);
}

class CacheException implements Exception {
  final String message;
  CacheException([this.message = 'Cache error']);
}
