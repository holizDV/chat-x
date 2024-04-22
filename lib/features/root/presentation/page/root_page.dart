import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/injection/injection.dart';
import '../../../home/presentation/cubit/home_cubit.dart';
import '../../../posting/presentation/cubit/posting_cubit.dart';
import '../cubit/bottomnav_cubit.dart';
import 'root_view.dart';

@RoutePage()
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final _bottomnavCubit = getIt<BottomnavCubit>();
  final _homeCubit = getIt<HomeCubit>();
  final _postingCubit = getIt<PostingCubit>();

  Future<void> _onFetchDelayOfContent() async {
    Future.delayed(const Duration(milliseconds: 100), () {
      _homeCubit.fetchAllUser();
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      _postingCubit.fetchPosting();
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _onFetchDelayOfContent();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => _bottomnavCubit),
        BlocProvider(create: (_) => _homeCubit),
        BlocProvider(create: (_) => _postingCubit),
      ],
      child: const RootView(),
    );
  }
}
