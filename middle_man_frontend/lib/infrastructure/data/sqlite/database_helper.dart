import 'package:middle_man_frontend/domain/company/value_objects.dart';
import 'package:path/path.dart';
import '../../data_transfer_objects/auth/user_dto.dart';
import '../../data_transfer_objects/company/company_dto.dart';
import '../../data_transfer_objects/item/item_dto.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {

  static const _databaseName = 'middleman.db';
  static const _databaseVersion = 1;

  static const userTable = 'User';
  static const companyTable = 'Company';
  static const addressTable = 'Address';
  static const itemTable = 'Item';
  static const roleTable = 'Role';


  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  // // static var lock = Lock();

  // // only have a single app-wide reference to the database
  // static Database? _database;

  Future _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $userTable (
          id TEXT PRIMARY KEY,
          userName TEXT,
          email TEXT,
          password TEXT,
          firstName TEXT,
          lastName TEXT
        )
        ''');

    await db.execute('''
        CREATE TABLE $companyTable (
          id TEXT PRIMARY KEY,
          name TEXT,
          description TEXT,
          logo TEXT
        )
        ''');
    await db.execute('''
        CREATE TABLE $addressTable (
          id TEXT PRIMARY KEY,
          phoneNumber TEXT,
          email TEXT,
          region TEXT,
          city TEXT,
          streetName TEXT,
          branchName TEXT,
          CONSTRAINT fk_company
              FOREIGN KEY (id)
              REFERENCES companyTable(id)
              ON DELETE CASCADE,
        )
        ''');
    await db.execute('''
        CREATE TABLE $itemTable (
          id TEXT PRIMARY KEY,
          name TEXT,
          price INTEGER,
          quantity INTEGER,
          type TEXT,
          CONSTRAINT fk_company
              FOREIGN KEY (id)
              REFERENCES companyTable(id)
              ON DELETE CASCADE,
        )
        ''');
    // await db.execute('''
    //     CREATE TABLE $roleTable (
    //       roleId TEXT PRIMARY KEY,
    //       roleName TEXT,
    //     )
    //     ''');
  }

  static Database? _database;
  
  Future<Database> _initDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    Sqflite.setDebugModeOn(true);
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }


  List<UserDto> parseUsers(List<Map<String, dynamic>> userList) {
    final users = <UserDto>[];
    userList.forEach(
      (userMap) {
        final user = UserDto.fromJson(userMap);
        users.add(user);
      },
    );
    return users;
  }



  List<CompanyDto> parseCompanies(List<Map<String, dynamic>> companyList) {
    final companies = <CompanyDto>[];
    companyList.forEach(
      (companyMap) {
        final company = CompanyDto.fromJson(companyMap);
        companies.add(company);
      },
    );
    return companies;
  }

  List<AddressItemDto> parseAddresses(List<Map<String, dynamic>> addressList) {
    final addresses = <AddressItemDto>[];
    addressList.forEach(
      (addressMap) {
        final address = AddressItemDto.fromJson(addressMap);
        addresses.add(address);
      },
    );
    return addresses;
  }

  List<ItemDto> parseItems(List<Map<String, dynamic>> itemList) {
    final items = <ItemDto>[];
    itemList.forEach(
      (itemMap) {
        final item = ItemDto.fromJson(itemMap);
        items.add(item);
      },
    );
    return items;
  }

  // List<Role> parseRoles(List<Map<String, dynamic>> roleList) {
  //   final roles = <Role>[];
  //   roleList.forEach(
  //     (roleMap) {
  //       final role = Role.fromJson(roleMap);
  //       roles.add(role);
  //     },
  //   );
  //   return roles;
  // }

  Future<List<UserDto>> findAllUsers() async {
    final db = await DatabaseHelper.instance.database;
    final userList = await db.query(userTable);
    final users = parseUsers(userList);
    return users;
  }

  Future<List<CompanyDto>> findAllCompanies() async {
    final db = await DatabaseHelper.instance.database;
    final companyList = await db.query(companyTable);
    final companies = parseCompanies(companyList);
    return companies;
  }

  Future<List<AddressItemDto>> findAllAddresses() async {
    final db = await DatabaseHelper.instance.database;
    final addressList = await db.query(addressTable);
    final addresses = parseAddresses(addressList);
    return addresses;
  }

  Future<List<AddressItemDto>> findCompanyAddresses(String companyId) async {
    final db = await DatabaseHelper.instance.database;
    final addressList =
        await db.query(addressTable, where: 'id = $companyId');
    final addresses = parseAddresses(addressList);
    return addresses;
  }

  Future<List<ItemDto>> findAllItems() async {
    final db = await DatabaseHelper.instance.database;
    final itemList = await db.query(itemTable);
    final items = parseItems(itemList);
    return items;
  }

  Future<List<ItemDto>> findCompanyItems(String companyId) async {
    final db = await DatabaseHelper.instance.database;
    final itemList =
        await db.query(itemTable, where: 'id = $companyId');
    final items = parseItems(itemList);
    return items;
  }

  // Future<List<Role>> findAllRoles() async {
  //   final db = await DatabaseHelper.instance.database;
  //   final roleList = await db.query(roleTable);
  //   final roles = parseRoles(roleList);
  //   return roles;
  // }

  Future<UserDto> findUserById(String id) async {
    final db = await DatabaseHelper.instance.database;
    final userList = await db.query(userTable, where: 'id = $id');
    final users = parseUsers(userList);
    return users.first;
  }

  Future<CompanyDto> findCompanyById(String id) async {
    final db = await DatabaseHelper.instance.database;
    final companyList = await db.query(companyTable, where: 'id = $id');
    final companies = parseCompanies(companyList);
    return companies.first;
  }

  Future<AddressItemDto> findAddressById(String id) async {
    final db = await DatabaseHelper.instance.database;
    final addressList = await db.query(addressTable, where: 'id = $id');
    final addresses = parseAddresses(addressList);
    return addresses.first;
  }

  Future<ItemDto> findItemById(String id) async {
    final db = await DatabaseHelper.instance.database;
    final itemList = await db.query(itemTable, where: 'id = $id');
    final items = parseItems(itemList);
    return items.first;
  }

  // Future<Role> findRoleById(String id) async {
  //   final db = await DatabaseHelper.instance.database;
  //   final roleList = await db.query(roleTable, where: 'roleId = $id');
  //   final roles = parseRoles(roleList);
  //   return roles.first;
  // }

  Future<int> insert(String table, Map<String, dynamic> row) async {
    final db = await DatabaseHelper.instance.database;
    return db.insert(table, row);
  }

  Future<int> insertUser(UserDto user) {
    return insert(userTable, user.toJson());
  }

  Future<int> insertCompany(CompanyDto company) {
    // rowData = company.toJson();
    Map<String, dynamic> row ={
      'id':company.id,
      'name': company.name,
      'description': company.description,
      'logo': company.logo
    }; 
    return insert(companyTable, row);
  }

  Future<int> insertAddress(AddressItemDto address) {
    return insert(addressTable, address.toJson());
  }

  Future<int> insertItem(ItemDto item) {
    return insert(itemTable, item.toJson());
  }

  // Future<int> insertRole(Role role) {
  //   return insert(roleTable, role.toJson());
  // }

  Future<int> _delete(String table, String columnId, String id) async {
    final db = await DatabaseHelper.instance.database;
    return db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> deleteUser(UserDto user) async {
      return _delete(userTable, user.id, user.id);
  }

  Future<int> deleteCompany(CompanyDto company) async { 
      return _delete(companyTable, company.id, company.id);
  }

  Future<int> deleteAddress(AddressItemDto address) async { 
      return _delete(addressTable, address.id, address.id);
  }

  Future<int> deleteItem(ItemDto item) async { 
      return _delete(itemTable, item.id, item.id);
  }

  // Future<int> deleteRole( item) async { 
  //     return _delete(itemTable, item.id, item.id);
  // }

  
  void close() {
    DatabaseHelper._database?.close();
  }
}