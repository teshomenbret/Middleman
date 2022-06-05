
abstract class IItemDataProvider {
  Future<String> create(Map<String, dynamic> itemAsJoson);
  Future<String> fetchByType(String type);
  Future<String> fetchAll();
  Future<String> update(Map<String, dynamic> itemAsJoson);
  Future<void> delete(String id);
}