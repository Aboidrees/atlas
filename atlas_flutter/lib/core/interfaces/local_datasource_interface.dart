abstract class LocalDataSourceInterface<T> {
  late String cacheKey;

  Future<bool> store(T dataToCache);
  Future<T?> restore();
  Future<bool> clear();
}
