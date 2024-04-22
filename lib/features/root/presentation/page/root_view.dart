import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/theme.dart';
import '../../../favorite/presentation/page/favorite_page.dart';
import '../../../home/presentation/page/home_page.dart';
import '../../../posting/presentation/page/posting_page.dart';
import '../../../profile/presentation/page/profile_page.dart';
import '../cubit/bottomnav_cubit.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomnavCubit, BottomnavState>(
        builder: (context, state) {
          if (state.navItem == BottomnavItem.home) {
            return const HomePage();
          }
          if (state.navItem == BottomnavItem.posting) {
            return const PostingPage();
          }
          if (state.navItem == BottomnavItem.favorite) {
            return const FavoritePage();
          }
          if (state.navItem == BottomnavItem.profile) {
            return const ProfilePage();
          }
          return const SizedBox.shrink();
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomnavCubit, BottomnavState>(
        builder: (context, state) {
          return BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.post_add),
                label: "Posting",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Like",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
            onTap: (index) => context.read<BottomnavCubit>().onBottomnav(index),
            currentIndex: state.index,
            selectedItemColor: AppColor.primaryMain,
            unselectedItemColor: AppColor.foregroundSecondaryText,
            backgroundColor: AppColor.backgroundCard,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle:
                Typograph.textRegular.copyWith(fontSize: FontSize.s12),
            unselectedLabelStyle:
                Typograph.textRegular.copyWith(fontSize: FontSize.s12),
          );
        },
      ),
    );
  }
}
