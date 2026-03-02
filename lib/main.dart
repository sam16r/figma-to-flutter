import 'package:flutter/material.dart';
import 'package:figma/pages/splash_screen.dart';
import 'package:figma/pages/home_page.dart';
import 'package:figma/pages/profile_page.dart';
import 'package:figma/pages/news_page.dart';
import 'package:figma/pages/news_detail_page.dart';
import 'package:figma/pages/health_tips_detail_page.dart';
import 'package:figma/pages/quick_tips_page.dart';
import 'package:figma/pages/diseases_awareness_detail_page.dart';
import 'package:figma/pages/alerts_safety_detail_page.dart';
import 'package:figma/pages/mental_wellness_detail_page.dart';
import 'package:figma/pages/mental_wellness_details/peer_support_page.dart';
import 'package:figma/pages/medicines_treatments_detail_page.dart';
import 'package:figma/pages/fda_drug_updates_page.dart';
import 'package:figma/pages/pharmacist_qa_page.dart';
import 'package:figma/pages/medical_technology_detail_page.dart';
import 'package:figma/pages/caretag_pro_page.dart';
import 'package:figma/pages/cgm_device_page.dart';
import 'package:figma/pages/beta_lab_page.dart';
import 'package:figma/pages/app_preferences_page.dart';
import 'package:figma/pages/about_caretag_page.dart';
import 'package:figma/pages/app_settings_page.dart';
import 'package:figma/pages/notification_preferences_page.dart';
import 'package:figma/pages/security_login_page.dart';
import 'package:figma/pages/my_dashboard_page.dart';
import 'package:figma/pages/report_problem_page.dart';
import 'package:figma/pages/transaction_history_page.dart';
import 'package:figma/pages/contact_support_page.dart';
import 'package:figma/pages/subscriptions_page.dart';
import 'package:figma/pages/edit_profile_page.dart';
import 'package:figma/pages/payment_methods_page.dart';
import 'package:figma/pages/add_card_page.dart';
import 'package:figma/pages/privacy_policy_page.dart';
import 'package:figma/pages/terms_conditions_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Care App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'SF Pro Display',
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomePage.routeName: (context) => const HomePage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
        NewsPage.routeName: (context) => const NewsPage(),
        NewsDetailPage.routeName: (context) => const NewsDetailPage(),
        HealthTipsDetailPage.routeName: (context) =>
            const HealthTipsDetailPage(),
        QuickTipsPage.routeName: (context) => const QuickTipsPage(),
        DiseasesAwarenessDetailPage.routeName: (context) =>
            const DiseasesAwarenessDetailPage(),
        AlertsSafetyDetailPage.routeName: (context) =>
            const AlertsSafetyDetailPage(),
        MentalWellnessDetailPage.routeName: (context) =>
            const MentalWellnessDetailPage(),
        PeerSupportPage.routeName: (context) => const PeerSupportPage(),
        MedicinesTreatmentsDetailPage.routeName: (context) =>
            const MedicinesTreatmentsDetailPage(),
        FdaDrugUpdatesPage.routeName: (context) =>
            const FdaDrugUpdatesPage(),
        PharmacistQaPage.routeName: (context) => const PharmacistQaPage(),
        MedicalTechnologyDetailPage.routeName: (context) =>
            const MedicalTechnologyDetailPage(),
        CareTagProPage.routeName: (context) => const CareTagProPage(),
        CgmDevicePage.routeName: (context) => const CgmDevicePage(),
        BetaLabPage.routeName: (context) => const BetaLabPage(),
        AppPreferencesPage.routeName: (context) => const AppPreferencesPage(),
        AboutCareTagPage.routeName: (context) => const AboutCareTagPage(),
        AppSettingsPage.routeName: (context) => const AppSettingsPage(),
        NotificationPreferencesPage.routeName: (context) =>
            const NotificationPreferencesPage(),
        SecurityLoginPage.routeName: (context) => const SecurityLoginPage(),
        MyDashboardPage.routeName: (context) => const MyDashboardPage(),
        ReportProblemPage.routeName: (context) => const ReportProblemPage(),
        TransactionHistoryPage.routeName: (context) =>
            const TransactionHistoryPage(),
        ContactSupportPage.routeName: (context) => const ContactSupportPage(),
        SubscriptionsPage.routeName: (context) => const SubscriptionsPage(),
        EditProfilePage.routeName: (context) => const EditProfilePage(),
        PaymentMethodsPage.routeName: (context) => const PaymentMethodsPage(),
        AddCardPage.routeName: (context) => const AddCardPage(),
        PrivacyPolicyPage.routeName: (context) => const PrivacyPolicyPage(),
        TermsConditionsPage.routeName: (context) => const TermsConditionsPage(),
      },
    );
  }
}
