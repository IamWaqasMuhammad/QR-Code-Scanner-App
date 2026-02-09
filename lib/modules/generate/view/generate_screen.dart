
import '../../../app_barrels.dart';

class GenerateScreen extends StatelessWidget {
  GenerateScreen({super.key});

  final List<Map<String, dynamic>> platforms = [
    {
      "label": AppStrings.text,
      "icon": AppIcons.textIcon,
      "route": AppRoutes.generateText
    },
    {
      "label": AppStrings.websiteText,
      "icon": AppIcons.websiteIcon,
      "route": AppRoutes.generateWebsite
    },
    {
      "label": AppStrings.contactText,
      "icon": AppIcons.contactIcon,
      "route": AppRoutes.generateContact
    },
    {
      "label": AppStrings.whatsappText,
      "icon": AppIcons.whatsappIcon,
      "route": AppRoutes.generateWhatsApp
    },
    {
      "label": AppStrings.twitterText,
      "icon": AppIcons.twitterIcon,
      "route": AppRoutes.generateTwitter
    },
    {
      "label": AppStrings.instagramText,
      "icon": AppIcons.instagramIcon,
      "route": AppRoutes.generateInstagram
    },
    {
      "label": AppStrings.wifiText,
      "icon": AppIcons.wifiIcon,
      "route": AppRoutes.generateWifi
    },
    {
      "label": AppStrings.emailText,
      "icon": AppIcons.emailIcon,
      "route": AppRoutes.generateEmail
    },
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
                  AppStrings.generateQR,
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
                        color: AppColors.blackColor.withOpacity(0.5),
                        blurRadius: 12,
                      ),
                    ],
                    onTap: () => Get.toNamed(AppRoutes.settings),
                    child: Icon(
                      Icons.settings_outlined,
                      color: AppColors.primaryColor,
                      size: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              AppStrings.generateQRSubTitle,
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
                        Get.toNamed(platform['route'] as String);
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
