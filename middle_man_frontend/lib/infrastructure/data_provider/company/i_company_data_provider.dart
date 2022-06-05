abstract class ICompanyDataProvider {
  Future<String> fetchAll();
  Future<String> create(Map<String, dynamic> companyAsJoson);
  Future<String> update(Map<String, dynamic> companyAsJoson);
  Future<void> delete(String id);
}