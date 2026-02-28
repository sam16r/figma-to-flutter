import 'package:flutter/material.dart';

class ContactSupportPage extends StatelessWidget {
  const ContactSupportPage({super.key});

  static const routeName = '/contact-support';

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
          'Contact Support',
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _SupportOption(
              icon: Icons.chat_bubble_outline,
              iconBg: const Color(0xFFFFE4E6),
              iconColor: const Color(0xFFEC4899),
              title: 'Start Live Chat',
              subtitle: 'Wait time: ~2 min',
              onTap: () {},
            ),
            const SizedBox(height: 16),
            _SupportOption(
              icon: Icons.email_outlined,
              iconBg: const Color(0xFFFFE4E6),
              iconColor: const Color(0xFFEC4899),
              title: 'Email Support',
              onTap: () {},
            ),
            const SizedBox(height: 16),
            _SupportOption(
              icon: Icons.phone_outlined,
              iconBg: const Color(0xFFFFE4E6),
              iconColor: const Color(0xFFEC4899),
              title: 'Call Us',
              onTap: () {},
            ),
            const SizedBox(height: 16),
            _SupportOption(
              icon: Icons.help_outline,
              iconBg: const Color(0xFFE0E7FF),
              iconColor: const Color(0xFF4F46E5),
              title: 'Browse FAQs',
              subtitle: 'Find answers quickly',
              trailing: const Icon(
                Icons.open_in_new,
                size: 18,
                color: Color(0xFFB0B7C3),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 32),
            const Text(
              'Our support team is available 24/7.\nPlease have your account details ready.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF6B7280),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SupportOption extends StatelessWidget {
  const _SupportOption({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    this.subtitle,
    this.trailing,
    required this.onTap,
  });

  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF111827),
                        ),
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          subtitle!,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                trailing ??
                    const Icon(Icons.chevron_right, color: Color(0xFFB0B7C3)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
