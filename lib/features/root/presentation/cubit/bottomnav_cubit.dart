import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'bottomnav_state.dart';

@injectable
class BottomnavCubit extends Cubit<BottomnavState> {
  BottomnavCubit() : super(BottomnavState.initial());

  void _barItem(BottomnavItem navItem) {
    switch (navItem) {
      case BottomnavItem.home:
        emit(state.copyWith(navItem: BottomnavItem.home, index: 0));
        break;
      case BottomnavItem.posting:
        emit(state.copyWith(navItem: BottomnavItem.posting, index: 1));
        break;
      case BottomnavItem.favorite:
        emit(state.copyWith(navItem: BottomnavItem.favorite, index: 2));
        break;
      case BottomnavItem.profile:
        emit(state.copyWith(navItem: BottomnavItem.profile, index: 3));
        break;
      default:
        emit(state.copyWith(navItem: BottomnavItem.home, index: 0));
    }
  }

  void onBottomnav(int index) {
    switch (index) {
      case 0:
        _barItem(BottomnavItem.home);
        break;
      case 1:
        _barItem(BottomnavItem.posting);
        break;
      case 2:
        _barItem(BottomnavItem.favorite);
        break;
      case 3:
        _barItem(BottomnavItem.profile);
        break;
      default:
        _barItem(BottomnavItem.home);
    }
  }
}
