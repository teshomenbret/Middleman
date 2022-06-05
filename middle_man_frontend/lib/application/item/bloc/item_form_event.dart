import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:middle_man_frontend/domain/item/item.dart';
part 'item_form_event.freezed.dart';

@freezed
class ItemFormEvent with _$ItemFormEvent {
  // const factory ItemFormEvent.started() = _Started;
  const ItemFormEvent._();
  const factory ItemFormEvent.create(Item item) = ItemFormEventCreate;
  const factory ItemFormEvent.read() = ItemFormEventRead;
  const factory ItemFormEvent.update(Item item) = ItemFormEventUpdate;
  const factory ItemFormEvent.delete(Item item) = ItemFormEventDelete;
 
}
