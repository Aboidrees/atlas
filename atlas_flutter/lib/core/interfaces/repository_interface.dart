abstract class RepositoryInterface<T> {
  Future<List<T>?> get();
  Future<T?> getByID(int id);
  Future<T?> create(T model);
  Future<T?> update(T model);
  Future<bool> delete(int id);
}
