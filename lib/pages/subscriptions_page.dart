import 'package:flutter/material.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  static const routeName = '/subscriptions';

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
          'Subscriptions',
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
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF2D2D2D), Color(0xFF4A4A3A)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.workspace_premium,
                      color: Color(0xFFFBBF24),
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'CURRENT PLAN',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFBBF24),
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  'CareTag Plus - Yearly',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Renews on Oct 24, 2025',
                  style: TextStyle(fontSize: 14, color: Color(0xFFD1D5DB)),
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: const [
                    Text(
                      '₹500',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '/year',
                      style: TextStyle(fontSize: 16, color: Color(0xFFD1D5DB)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'Active Benefits',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 16),
          const _BenefitRow(
            icon: Icons.cloud_upload_outlined,
            iconBg: Color(0xFFFFF9E6),
            iconColor: Color(0xFFFBBF24),
            title: 'Cloud Backup',
            subtitle: 'Unlimited secure storage for your data',
          ),
          const _BenefitRow(
            icon: Icons.support_agent,
            iconBg: Color(0xFFFFF9E6),
            iconColor: Color(0xFFFBBF24),
            title: 'Priority Support',
            subtitle: '24/7 dedicated assistance line',
          ),
          const _BenefitRow(
            icon: Icons.analytics_outlined,
            iconBg: Color(0xFFFFF9E6),
            iconColor: Color(0xFFFBBF24),
            title: 'Advanced Analytics',
            subtitle: 'Deep insights into your health trends',
          ),
          const _BenefitRow(
            icon: Icons.group_outlined,
            iconBg: Color(0xFFFFF9E6),
            iconColor: Color(0xFFFBBF24),
            title: 'Family Sharing',
            subtitle: 'Share benefits with up to 5 members',
          ),
          const _BenefitRow(
            icon: Icons.block,
            iconBg: Color(0xFFFFF9E6),
            iconColor: Color(0xFFFBBF24),
            title: 'Ad-Free Experience',
            subtitle: 'Enjoy the app without interruptions',
          ),
          const SizedBox(height: 28),
          const Text(
            'Available Add-ons',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE5E7EB)),
            ),
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDCEEFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.video_call_outlined,
                    size: 22,
                    color: Color(0xFF1E63F4),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Telehealth Pack',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF111827),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '₹100/mo',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E63F4),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Cancel Subscription',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFEF4444),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'By continuing, you agree to the Terms of Service and Privacy Policy. Subscriptions auto-renew unless canceled at least 24 hours before the end of the current period.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF9CA3AF),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _BenefitRow extends StatelessWidget {
  const _BenefitRow({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 22, color: iconColor),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.check_circle, color: Color(0xFF16A34A), size: 22),
        ],
      ),
    );
  }
}
