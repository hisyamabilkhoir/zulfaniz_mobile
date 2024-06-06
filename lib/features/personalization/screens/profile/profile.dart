import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zulfaniz_store/common/widgets/appbar/appbar.dart';
import 'package:zulfaniz_store/common/widgets/images/t_circular_image.dart';
import 'package:zulfaniz_store/common/widgets/texts/section_heading.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Ubah Foto Profile')),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Head Profile Infor
              const TSectionHeading(
                title: 'Informasi Profil',
                showActionButon: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                title: 'Nama',
                value: 'Hisyam Abilkhoir',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Username',
                value: 'hisyam_abilkhoir',
                onPressed: () {},
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Head Personal Infor
              const TSectionHeading(
                title: 'Informasi Pribadi',
                showActionButon: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                title: 'User ID',
                value: '49033',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Email',
                value: 'hisyamabilkhoir@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'No Handphone',
                value: '+62 8597 3729 267',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Jenis Kelamin',
                value: 'Laki - laki',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Tanggal Lahir',
                value: '14 April 20004',
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Tutup Akun',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
