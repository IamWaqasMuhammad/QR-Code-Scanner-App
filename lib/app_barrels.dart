library;

export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:get/get.dart';
export 'package:qr_flutter/qr_flutter.dart';
export 'package:screenshot/screenshot.dart';
export 'package:mobile_scanner/mobile_scanner.dart';

// --- Core Constants ---
export 'package:qr_code_scanner/core/constants/app_colors/app_colors.dart';
export 'package:qr_code_scanner/core/constants/app_icons/app_icons.dart';
export 'package:qr_code_scanner/core/constants/app_strings/app_strings.dart';
export 'package:qr_code_scanner/core/constants/app_text_styles/app_text_styles.dart';

// --- Core Common Widgets ---
export 'package:qr_code_scanner/core/common_widgets/custom_button/custom_button.dart';
export 'package:qr_code_scanner/core/common_widgets/custom_text_field/custom_text_field.dart';
export 'package:qr_code_scanner/core/common_widgets/custom_navbar/custom_navbar.dart';
export 'package:qr_code_scanner/core/common_widgets/custom_navbar/navbar_item.dart';
export 'package:qr_code_scanner/core/common_widgets/generator_widgets.dart';
export 'package:qr_code_scanner/core/common_widgets/home_widgets.dart';

// --- Routes ---
export 'package:qr_code_scanner/routes/app_routes.dart';

// --- Modules ---

// Home
export 'package:qr_code_scanner/modules/home/binding/home_binding.dart';
export 'package:qr_code_scanner/modules/home/controller/home_controller.dart';
export 'package:qr_code_scanner/modules/home/view/home_screen.dart';

// Splash
export 'package:qr_code_scanner/modules/splash/binding/splash_binding.dart';
export 'package:qr_code_scanner/modules/splash/controller/splash_controller.dart';
export 'package:qr_code_scanner/modules/splash/view/splash_screen.dart';

// History
export 'package:qr_code_scanner/modules/history/controller/history_controller.dart';
export 'package:qr_code_scanner/modules/history/view/history_screen.dart';

// QR Scan
export 'package:qr_code_scanner/modules/qr_scan/binding/qr_scan_binding.dart';
export 'package:qr_code_scanner/modules/qr_scan/controller/qr_scan_controller.dart';
export 'package:qr_code_scanner/modules/qr_scan/view/qr_scan_screen.dart';

// Generate (Main)
export 'package:qr_code_scanner/modules/generate/binding/generate_binding.dart';
export 'package:qr_code_scanner/modules/generate/controller/generate_controller.dart';
export 'package:qr_code_scanner/modules/generate/view/generate_screen.dart';

// Detail
export 'package:qr_code_scanner/modules/detail/controller/qr_detail_controller.dart';

// Settings
export 'package:qr_code_scanner/modules/settings/binding/settings_binding.dart';
export 'package:qr_code_scanner/modules/settings/controller/settings_controller.dart';
export 'package:qr_code_scanner/modules/settings/view/settings_screen.dart';
export 'package:qr_code_scanner/modules/settings/widgets/settings_tiles.dart';

// Generators
export 'package:qr_code_scanner/modules/text_qr_generator/binding/text_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/text_qr_generator/controller/text_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/text_qr_generator/view/text_qr_generator_screen.dart';

export 'package:qr_code_scanner/modules/contact_qr_generator/binding/contact_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/contact_qr_generator/controller/contact_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/contact_qr_generator/view/contact_qr_generator_screen.dart';

export 'package:qr_code_scanner/modules/email_qr_generator/binding/email_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/email_qr_generator/controller/email_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/email_qr_generator/view/email_qr_generator_screen.dart';

export 'package:qr_code_scanner/modules/instagram_qr_generator/binding/instagram_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/instagram_qr_generator/controller/instagram_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/instagram_qr_generator/view/instagram_qr_generator_screen.dart';

export 'package:qr_code_scanner/modules/twitter_qr_generator/binding/twitter_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/twitter_qr_generator/controller/twitter_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/twitter_qr_generator/view/twitter_qr_generator_screen.dart';

export 'package:qr_code_scanner/modules/website_qr_generator/binding/website_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/website_qr_generator/controller/website_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/website_qr_generator/view/website_qr_generator_screen.dart';

export 'package:qr_code_scanner/modules/whatsapp_qr_generator/binding/whatsapp_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/whatsapp_qr_generator/controller/whatsapp_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/whatsapp_qr_generator/view/whatsapp_qr_generator_screen.dart';

export 'package:qr_code_scanner/modules/wifi_qr_generator/binding/wifi_qr_generator_binding.dart';
export 'package:qr_code_scanner/modules/wifi_qr_generator/controller/wifi_qr_generator_controller.dart';
export 'package:qr_code_scanner/modules/wifi_qr_generator/view/wifi_qr_generator_screen.dart';
