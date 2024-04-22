import 'package:flutter/material.dart';

import '../../../../common/widget/data_not_found.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DataNotFound(
        message: "Profile Feature Still Progress Development",
      ),
    );
  }
}
