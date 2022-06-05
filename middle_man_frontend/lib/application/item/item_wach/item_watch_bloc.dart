import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_watch_event.dart';
part 'item_watch_state.dart';
part 'item_watch_bloc.freezed.dart';

class ItemWatchBloc extends Bloc<ItemWatchEvent, ItemWatchState> {
  ItemWatchBloc() : super(_Initial()) {
    on<ItemWatchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
