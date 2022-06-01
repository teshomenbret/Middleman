
import '../repository.dart';
import 'database_helper.dart';
import '../../data_transfer_objects/auth/user_dto.dart';
import '../../data_transfer_objects/company/company_dto.dart';
import '../../data_transfer_objects/item/item_dto.dart';

class SqliteRepository extends Repository {
  final dbHelper = DatabaseHelper.instance;

  @override
  Future<List<UserDto>> findAllUsers() {
    return dbHelper.findAllUsers();
  }

  @override
  Future<List<CompanyDto>> findAllCompanies() {
    return dbHelper.findAllCompanies();
  }

  @override
  Future<List<AddressItemDto>> findAllAddresses() {
    return dbHelper.findAllAddresses();
  }

  @override
  Future<List<AddressItemDto>> findCompanyAddresses(String companyId) {
    return dbHelper.findCompanyAddresses(companyId);
  }

  @override
  Future<List<ItemDto>> findAllItems() {
    return dbHelper.findAllItems();
  }

  @override
  Future<List<ItemDto>> findCompanyItems(String companyId) {
    return dbHelper.findCompanyItems(companyId);
  }

  @override
  Future<UserDto> findUserById(String id){
    return dbHelper.findUserById(id);
  }

  @override
  Future<CompanyDto> findCompanyById(String id){
    return dbHelper.findCompanyById(id);
  }

  @override
  Future<AddressItemDto> findAddressById(String id){
    return dbHelper.findAddressById(id);
  }

  @override
  Future<ItemDto> findItemById(String id) {
    return dbHelper.findItemById(id);
  }
  
  @override
  Future<int> insertUser(UserDto user){
    return insertUser(user);
  }

  @override
  Future<int> insertCompany(CompanyDto company){
    return insertCompany(company);
  }

  @override
  Future<int> insertAddress(AddressItemDto address){
    return insertAddress(address);
  }

  @override
  Future<int> insertItem(ItemDto item){
    return insertItem(item);
  }

  @override
  Future<void> deleteUser(UserDto user){
    dbHelper.deleteUser(user);
    return Future.value();
  }

  @override
  Future<void> deleteCompany(CompanyDto company) {
    dbHelper.deleteCompany(company);
    return Future.value();
  }

  @override
  Future<void> deleteAddress(AddressItemDto address) {
    dbHelper.deleteAddress(address);
    return Future.value();
  }

  @override
  Future<void> deleteItem(ItemDto item) {
    dbHelper.deleteItem(item);
    return Future.value();
  }

  @override
  Future init() async {
    await dbHelper.database;
    return Future.value();
  }

  @override
  void close() {
    dbHelper.close();
  }
}