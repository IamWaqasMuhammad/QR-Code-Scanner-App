import 'package:qr_code_scanner/routes/app_routes.dart';

import '../../../app_barrels.dart';
import '../../../core/common_widgets/custom_button/custom_button.dart';

class GenerateScreen extends StatelessWidget {
  GenerateScreen({super.key});

  final List<Map<String, String>> platforms = [
    {"label": "Text", "icon": AppIcons.textIcon},
    {"label": "Website", "icon": AppIcons.websiteIcon},
    {"label": "Contact", "icon": AppIcons.contactIcon},
    {"label": "WhatsApp", "icon": AppIcons.whatsappIcon},
    {"label": "Twitter", "icon": AppIcons.twitterIcon},
    {"label": "Instagram", "icon": AppIcons.instagramIcon},
    {"label": "WiFi", "icon": AppIcons.wifiIcon},
    {"label": "Email", "icon": AppIcons.emailIcon},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Generate QR Code',
                  style: TextStyle(
                    color: AppColors.whiteGrayColor,
                    fontFamily: 'Itim',
                    fontSize: 26.sp,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: CustomButton(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.5), // Add opacity
                        blurRadius: 12,
                      ),
                    ],
                    onTap: () => Get.toNamed(AppRoutes.settings),
                    child: Icon(
                      Icons.settings_outlined,
                      color: AppColors.primaryColor,
                      size: 20.sp, // Add explicit size
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              'You can generate QR Code for below platforms!',
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 18.sp,
                color: AppColors.whiteGrayColor.withOpacity(0.4),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: GridView.builder(
                shrinkWrap: false,
                itemCount: platforms.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context, index) {
                  final platform = platforms[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: CustomButton(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black,
                      onTap: () {
                        // Handle button tap
                        print("Selected ${platform['label']}");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            platform['icon']!,
                            height: 40.h,
                            width: 40.w,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            platform['label']!,
                            style: TextStyle(
                              color: AppColors.whiteGrayColor,
                              fontFamily: 'Itim',
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
