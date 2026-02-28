import 'package:flutter/material.dart';

class SecurityLoginPage extends StatefulWidget {
  const SecurityLoginPage({super.key});

  static const routeName = '/security-login';

  @override
  State<SecurityLoginPage> createState() => _SecurityLoginPageState();
}

class _SecurityLoginPageState extends State<SecurityLoginPage> {
  bool _twoFactor = false;
  bool _biometricUnlock = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Security & Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          _SecurityRow(
            icon: Icons.lock_reset,
            iconBg: const Color(0xFFF3E8FF),
            iconColor: const Color(0xFF9B51E0),
            title: 'Change Password',
            trailing: const Icon(Icons.chevron_right, color: Color(0xFFB0B7C3)),
            onTap: () {},
          ),
          _SecurityRow(
            icon: Icons.phonelink_lock,
            iconBg: const Color(0xFFF3E8FF),
            iconColor: const Color(0xFF9B51E0),
            title: 'Two-Factor\nAuthentication',
            trailing: Switch(
              value: _twoFactor,
              onChanged: (value) => setState(() => _twoFactor = value),
              activeColor: const Color(0xFF9B51E0),
            ),
            onTap: null,
          ),
          _SecurityRow(
            icon: Icons.fingerprint,
            iconBg: const Color(0xFFF3E8FF),
            iconColor: const Color(0xFF9B51E0),
            title: 'Biometric Unlock',
            trailing: Switch(
              value: _biometricUnlock,
              onChanged: (value) => setState(() => _biometricUnlock = value),
              activeColor: const Color(0xFF9B51E0),
            ),
            onTap: null,
          ),
          _SecurityRow(
            icon: Icons.devices,
            iconBg: const Color(0xFFF3E8FF),
            iconColor: const Color(0xFF9B51E0),
            title: 'Active Sessions',
            trailing: const Icon(Icons.chevron_right, color: Color(0xFFB0B7C3)),
            onTap: () {},
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Review your security settings regularly to keep your account safe.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF9CA3AF),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SecurityRow extends StatelessWidget {
  const _SecurityRow({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    required this.trailing,
    required this.onTap,
  });

  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final Widget trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: iconBg,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 24, color: iconColor),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF111827),
                    height: 1.3,
                  ),
                ),
              ),
              trailing,
            ],
          ),
        ),
      ),
    );
  }
}
