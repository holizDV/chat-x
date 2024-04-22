import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/widget/data_not_found.dart';

@injectable
class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DataNotFound(
        message: "Favorite Feature Progress Development",
      ),
    );
  }
}
