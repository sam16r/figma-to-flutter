import 'package:flutter/material.dart';
import 'package:figma/pages/home_page.dart';
import 'package:figma/pages/profile_page.dart';
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
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
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
