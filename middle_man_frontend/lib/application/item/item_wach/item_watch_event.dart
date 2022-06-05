part of 'item_watch_bloc.dart';

@freezed
class ItemWatchEvent with _$ItemWatchEvent {
  const factory ItemWatchEvent.started() = _Started;
}