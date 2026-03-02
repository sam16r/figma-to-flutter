import 'package:flutter/material.dart';

class BetaLabPage extends StatelessWidget {
  const BetaLabPage({super.key});

  static const routeName = '/beta-lab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Blue gradient header
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 56, 20, 32),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF3B82F6), Color(0xFF1D4ED8)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: SafeArea(
                      bottom: false,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Back button
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Join the\nFuture',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w900,
                              height: 1.1,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Help us shape the future of medical technology. Get early access to unreleased AI features and wearable integrations.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Exclusive Tester Perks card
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF7C3AED), Color(0xFF4F46E5)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.15),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.card_giftcard_outlined,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Exclusive Tester Perks',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Get a Free Pro subscription for 6 months for all active beta testers.',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Active Beta Projects
                        Row(
                          children: const [
                            Icon(
                              Icons.science_outlined,
                              color: Color(0xFF374151),
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Active Beta Projects',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF111827),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 14),

                        const _BetaProjectRow(
                          icon: Icons.psychology_outlined,
                          iconColor: Color(0xFF3B82F6),
                          iconBg: Color(0xFFEFF6FF),
                          title: 'Mood Prediction AI',
                          subtitle: 'Biometric analysis v2.1',
                        ),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        const _BetaProjectRow(
                          icon: Icons.favorite_outlined,
                          iconColor: Color(0xFFEF4444),
                          iconBg: Color(0xFFFFF1F2),
                          title: 'Advanced ECG',
                          subtitle: 'Arrhythmia detection',
                        ),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        const _BetaProjectRow(
                          icon: Icons.medication_liquid_outlined,
                          iconColor: Color(0xFF22C55E),
                          iconBg: Color(0xFFF0FDF4),
                          title: 'Smart Dosage',
                          subtitle: 'Integration with dispensers',
                        ),

                        const SizedBox(height: 28),

                        // Stats row
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9FAFB),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              children: const [
                                Expanded(
                                  child: _StatColumn(
                                    value: '2.4k',
                                    label: 'TESTERS',
                                  ),
                                ),
                                VerticalDivider(
                                  color: Color(0xFFE5E7EB),
                                  width: 1,
                                ),
                                Expanded(
                                  child: _StatColumn(
                                    value: '12',
                                    label: 'COUNTRIES',
                                  ),
                                ),
                                VerticalDivider(
                                  color: Color(0xFFE5E7EB),
                                  width: 1,
                                ),
                                Expanded(
                                  child: _StatColumn(
                                    value: '4.9',
                                    label: 'RATING',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Sticky bottom bar
          Container(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Color(0xFFE5E7EB))),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B82F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Submit Beta Application →',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'By applying, you agree to the Beta Testing Terms and Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BetaProjectRow extends StatelessWidget {
  const _BetaProjectRow({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.subtitle,
  });
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: iconBg, shape: BoxShape.circle),
            child: Icon(icon, color: iconColor, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE5E7EB)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Apply',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF374151),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  const _StatColumn({required this.value, required this.label});
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Color(0xFF9CA3AF),
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
