part of 'bottomnav_cubit.dart';

enum BottomnavItem { home, posting, favorite, profile }

class BottomnavState extends Equatable {
  const BottomnavState({required this.navItem, required this.index});

  final BottomnavItem navItem;
  final int index;

  factory BottomnavState.initial() {
    return const BottomnavState(navItem: BottomnavItem.home, index: 0);
  }

  @override
  List<Object> get props => [navItem, index];

  BottomnavState copyWith({
    BottomnavItem? navItem,
    int? index,
  }) {
    return BottomnavState(
      navItem: navItem ?? this.navItem,
      index: index ?? this.index,
    );
  }
}
