import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zulfaniz_store/features/personalization/screens/profile/profile.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';

class TProfileUserTile extends StatelessWidget {
  const TProfileUserTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Hisyam Abilkhoir',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'hisyamabilkhoir@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
          onPressed: () => Get.to(() => const ProfileScreen()),
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          )),
    );
  }
}
