
import '../data_transfer_objects/auth/user_dto.dart';
import '../data_transfer_objects/company/company_dto.dart';
import '../data_transfer_objects/item/item_dto.dart';

abstract class Repository {
  Future<List<UserDto>> findAllUsers();

  Future<List<CompanyDto>> findAllCompanies();

  Future<List<AddressItemDto>> findAllAddresses();

  Future<List<AddressItemDto>> findCompanyAddresses(String companyId);

  Future<List<ItemDto>> findAllItems();

  Future<List<ItemDto>> findCompanyItems(String companyId);

  Future<UserDto> findUserById(String id);

  Future<CompanyDto> findCompanyById(String id);

  Future<AddressItemDto> findAddressById(String id);

  Future<ItemDto> findItemById(String id);

  Future<int> insertUser(UserDto user);

  Future<int> insertCompany(CompanyDto company);

  Future<int> insertAddress(AddressItemDto address);

  Future<int> insertItem(ItemDto item);

  Future<void> deleteUser(UserDto user);

  Future<void> deleteCompany(CompanyDto company);

  Future<void> deleteAddress(AddressItemDto address);

  Future<void> deleteItem(ItemDto item);

  Future init();
  void close();

}