abstract class RemoteDataSourceInterface<T> {
  Future<List<T>> get();
  Future<T?> getById(int id);
  Future<T?> create(T model);
  Future<T?> update(T model);
  Future<bool> delete(int id);
}
