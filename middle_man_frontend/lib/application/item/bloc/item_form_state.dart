import 'package:middle_man_frontend/domain/core/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:middle_man_frontend/domain/item/item.dart';
part 'item_form_state.freezed.dart';

@freezed
class ItemFormState with _$ItemFormState {
  const factory ItemFormState.initial() = ItemFormStateInitial;
  const factory ItemFormState.loading() = ItemFormStateLoading;
  const factory ItemFormState.success() = ItemFormStateSuccess;
  const factory ItemFormState.failure(String error) = ItemFormStateFailure;
  const factory ItemFormState.items(List<Item> items) = ItemFormStateItem;
  const factory ItemFormState.item(Item items) = ItemFormStateIteme;
}
