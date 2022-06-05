import 'package:bloc/bloc.dart';
import 'package:middle_man_frontend/application/item/bloc/item_form_event.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:middle_man_frontend/application/item/bloc/item_form_state.dart';
import 'package:middle_man_frontend/domain/item/item_failure.dart';

import '../../../domain/item/i_item_repository.dart';
import '../../../infrastructure/data/sqlite/sqlite_repository.dart';
import '/domain/item/item.dart';
import '../../../domain/item/value_objects.dart';

class ItemFormBloc extends Bloc<ItemFormEvent, ItemFormState> {
  final IItemRepository _itemRepository;

  ItemFormBloc(this._itemRepository) : super(const ItemFormState.initial()) {
    on<ItemFormEventCreate>(
      ((event, emit) async {
        emit(const ItemFormStateLoading());
        var result = await _itemRepository.create(event.item);
        result.fold((l) {
          const ItemFormState.failure("unable to create item");
        }, (r) {
          emit(ItemFormState.item(r));
        });
        Either<ItemFailure, List<Item>> items;
        result.fold(
            (l) => {
                  emit(const ItemFormState.failure(
                      "please fill the correct data"))
                },
            (r) async => {
                  items = await _itemRepository.read(),
                  items.fold((l) {
                    // try to read from the local database
                    SqliteRepository sqliteRepository = SqliteRepository();
                    var itemList =sqliteRepository.findAllItems();
                     emit(ItemFormState.items(itemList));
                  }, (r) {
                    emit(ItemFormState.items(r));
                  })
                });
      }),
    );
    on<ItemFormEventDelete>(
      ((event, emit) async {
        emit(const ItemFormStateLoading());
        var result = await _itemRepository.delete(event.item);
        result.fold((l) {
          emit(const ItemFormState.failure("unable to  the delete the data"));
        }, (r) {});
      }),
    );
  }
}
