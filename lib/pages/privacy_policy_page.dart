import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  static const routeName = '/privacy-policy';

  const PrivacyPolicyPage({super.key});

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
          'Privacy Policy',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Last updated: October 24, 2023',
                style: TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
              ),
              const SizedBox(height: 24),
              // Quick Summary
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFD1FAE5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Color(0xFF10B981),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Quick Summary',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'We collect minimal data to provide our services. Your health data is encrypted end-to-end. We never sell your personal information to third parties.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF065F46),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              // Introduction
              _SectionHeader(
                icon: Icons.shield_outlined,
                iconColor: const Color(0xFF10B981),
                title: 'Introduction',
              ),
              const SizedBox(height: 12),
              const Text(
                'At CareTag, we take your privacy seriously. This policy describes how we collect, use, and handle your personal information when you use our websites, software, and services ("Services").',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF374151),
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 32),
              // Data We Collect
              _SectionHeader(
                icon: Icons.description_outlined,
                iconColor: const Color(0xFF10B981),
                title: 'Data We Collect',
              ),
              const SizedBox(height: 16),
              _DataItem(
                title: 'Account Information',
                description:
                    'Name, email, phone number, and profile photo used to create your account.',
              ),
              const SizedBox(height: 12),
              _DataItem(
                title: 'Health Data',
                description:
                    'Blood type, allergies, and emergency contacts you choose to input.',
              ),
              const SizedBox(height: 12),
              _DataItem(
                title: 'Usage Data',
                description:
                    'Information about how you interact with our app to improve user experience.',
              ),
              const SizedBox(height: 32),
              // Encryption & Security
              _SectionHeader(
                icon: Icons.lock_outline,
                iconColor: const Color(0xFF10B981),
                title: 'Encryption & Security',
              ),
              const SizedBox(height: 12),
              const Text(
                'Your data is encrypted both in transit and at rest using industry-standard AES-256 encryption. We employ strict access controls and regular security audits to ensure your information remains safe.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF374151),
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Color(0xFF10B981),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.verified_user,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'SOC2 Compliant Security',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF374151),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              // Third-Party Sharing
              _SectionHeader(
                icon: Icons.share_outlined,
                iconColor: const Color(0xFF10B981),
                title: 'Third-Party Sharing',
              ),
              const SizedBox(height: 12),
              const Text(
                'We do not sell your personal data. We only share information with third parties when necessary to provide our services, such as:',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF374151),
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 12),
              _BulletPoint(
                text: 'Payment processors for subscription handling.',
              ),
              _BulletPoint(
                text:
                    'Cloud hosting providers (e.g., AWS) to store data securely.',
              ),
              _BulletPoint(
                text: 'Customer support tools to help resolve your issues.',
              ),
              const SizedBox(height: 40),
              // Download PDF
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF2196F3),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: const Text(
                    'Download PDF Version',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;

  const _SectionHeader({
    required this.icon,
    required this.iconColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _DataItem extends StatelessWidget {
  final String title;
  final String description;

  const _DataItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 4),
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Color(0xFF10B981),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6B7280),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _BulletPoint extends StatelessWidget {
  final String text;

  const _BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(fontSize: 14, color: Color(0xFF374151)),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF374151),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
