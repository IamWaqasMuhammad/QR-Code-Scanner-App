import 'package:qr_code_scanner/app_barrels.dart';

class GenerateController extends GetxController{


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

}