import 'package:flutter/material.dart';
import 'app_preferences_page.dart';
import 'about_caretag_page.dart';
import 'app_settings_page.dart';
import 'notification_preferences_page.dart';
import 'security_login_page.dart';
import 'my_dashboard_page.dart';
import 'report_problem_page.dart';
import 'transaction_history_page.dart';
import 'contact_support_page.dart';
import 'subscriptions_page.dart';
import 'edit_profile_page.dart';
import 'payment_methods_page.dart';
import 'privacy_policy_page.dart';
import 'terms_conditions_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _ProfileHeader(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 24),
                          _SectionTitle('Account Settings'),
                          SizedBox(height: 14),
                          _SectionCard(
                            items: [
                              _ItemData(
                                icon: Icons.edit_note,
                                iconBg: Color(0xFFE7F0FF),
                                iconColor: Color(0xFF2F80ED),
                                title: 'Edit profile',
                                routeName: EditProfilePage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.credit_card,
                                iconBg: Color(0xFFE2F7EA),
                                iconColor: Color(0xFF27AE60),
                                title: 'Payment methods',
                                routeName: PaymentMethodsPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.settings_outlined,
                                iconBg: Color(0xFFF3F4F6),
                                iconColor: Color(0xFF6B7280),
                                title: 'App settings',
                                routeName: AppSettingsPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.notifications_none,
                                iconBg: Color(0xFFFFF2CC),
                                iconColor: Color(0xFFF2994A),
                                title: 'Notification Preference',
                                routeName:
                                    NotificationPreferencesPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.lock_outline,
                                iconBg: Color(0xFFF0E8FF),
                                iconColor: Color(0xFF9B51E0),
                                title: 'Security & Login',
                                routeName: SecurityLoginPage.routeName,
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          _SectionTitle('Earing / Usage Section'),
                          SizedBox(height: 14),
                          _SectionCard(
                            items: [
                              _ItemData(
                                icon: Icons.grid_view,
                                iconBg: Color(0xFFE6ECFF),
                                iconColor: Color(0xFF5B6EF5),
                                title: 'My Dashboard',
                                routeName: MyDashboardPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.rotate_right,
                                iconBg: Color(0xFFFFF2CC),
                                iconColor: Color(0xFFE5A800),
                                title: 'Subscriptions',
                                routeName: SubscriptionsPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.receipt_long,
                                iconBg: Color(0xFFDDF8F5),
                                iconColor: Color(0xFF2AAFA0),
                                title: 'Transaction History',
                                routeName: TransactionHistoryPage.routeName,
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          _SectionTitle('Support & Help'),
                          SizedBox(height: 14),
                          _SectionCard(
                            items: [
                              _ItemData(
                                icon: Icons.help_outline,
                                iconBg: Color(0xFFF1F5F9),
                                iconColor: Color(0xFF64748B),
                                title: 'Help Center',
                              ),
                              _ItemData(
                                icon: Icons.support_agent,
                                iconBg: Color(0xFFFCE7F3),
                                iconColor: Color(0xFFEC4899),
                                title: 'Contact Support',
                                routeName: ContactSupportPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.warning_amber_outlined,
                                iconBg: Color(0xFFFFEDD5),
                                iconColor: Color(0xFFF97316),
                                title: 'Report a Problem',
                                routeName: ReportProblemPage.routeName,
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          _SectionTitle('App & Legal'),
                          SizedBox(height: 14),
                          _SectionCard(
                            items: [
                              _ItemData(
                                icon: Icons.tune,
                                iconBg: Color(0xFFF1F5F9),
                                iconColor: Color(0xFF6B7280),
                                title: 'App Preferences',
                                routeName: AppPreferencesPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.description_outlined,
                                iconBg: Color(0xFFE0F2FE),
                                iconColor: Color(0xFF0284C7),
                                title: 'Terms & Conditions Support',
                                routeName: TermsConditionsPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.shield_outlined,
                                iconBg: Color(0xFFDCFCE7),
                                iconColor: Color(0xFF16A34A),
                                title: 'Privacy Policy',
                                routeName: PrivacyPolicyPage.routeName,
                              ),
                              _ItemData(
                                icon: Icons.info_outline,
                                iconBg: Color(0xFFE0E7FF),
                                iconColor: Color(0xFF4F46E5),
                                title: 'About App',
                                routeName: AboutCareTagPage.routeName,
                              ),
                            ],
                          ),
                          SizedBox(height: 28),
                          _LogoutButton(),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _BottomNavBar(),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFDCEEFF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(280, 130),
          bottomRight: Radius.elliptical(280, 130),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const Text(
            'Profile',
            style: TextStyle(
              fontSize: 38 / 2,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 116,
            width: 116,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const CircleAvatar(
              backgroundColor: Color(0xFFB8D3F3),
              child: Icon(Icons.person, size: 56, color: Colors.white),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Rylan Robert Chettiar',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'CTG-8359-2047-1638',
            style: TextStyle(
              fontSize: 13,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6B7280),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 34 / 2,
        fontWeight: FontWeight.w700,
        color: Color(0xFF111827),
      ),
    );
  }
}

class _ItemData {
  const _ItemData({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    this.routeName,
  });

  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final String? routeName;
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.items});

  final List<_ItemData> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFECEFF3)),
      ),
      child: Column(
        children: [
          for (var index = 0; index < items.length; index++) ...[
            _SettingRow(item: items[index]),
            if (index != items.length - 1)
              const Divider(height: 1, thickness: 1, color: Color(0xFFF1F5F9)),
          ],
        ],
      ),
    );
  }
}

class _SettingRow extends StatelessWidget {
  const _SettingRow({required this.item});

  final _ItemData item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: item.routeName != null
          ? () => Navigator.pushNamed(context, item.routeName!)
          : null,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 14, 12, 14),
        child: Row(
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: item.iconBg,
                shape: BoxShape.circle,
              ),
              child: Icon(item.icon, size: 20, color: item.iconColor),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                item.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF111827),
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Color(0xFFB0B7C3)),
          ],
        ),
      ),
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFED1C24),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: const Text(
          'Logout',
          style: TextStyle(fontSize: 20 / 2, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 14),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFF1F5F9))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.home_outlined,
            label: 'Home',
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          const _NavItem(icon: Icons.assignment_outlined, label: 'Records'),
          _NavItem(
            icon: Icons.account_balance_outlined,
            label: 'My Care',
            onTap: () => Navigator.pushReplacementNamed(context, '/my-care'),
          ),
          _NavItem(
            icon: Icons.description_outlined,
            label: 'News',
            onTap: () => Navigator.pushReplacementNamed(context, '/news'),
          ),
          _NavItem(icon: Icons.person, label: 'Profile', active: true),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    this.active = false,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? const Color(0xFF1E63F4) : const Color(0xFF6B7280);
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (active)
            Container(
              width: 26,
              height: 3,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF1E63F4),
                borderRadius: BorderRadius.circular(12),
              ),
            )
          else
            const SizedBox(height: 11),
          Icon(icon, color: color, size: 22),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: active ? FontWeight.w700 : FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
