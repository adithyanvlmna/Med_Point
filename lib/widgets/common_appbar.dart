import 'package:flutter/material.dart';
import 'package:med_point/core/app_theme/app_colors.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;
  const CommonAppbar({
    super.key,
    this.automaticallyImplyLeading=false
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.whiteColor,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
