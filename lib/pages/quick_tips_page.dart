import 'package:flutter/material.dart';

class QuickTipsPage extends StatelessWidget {
  static const routeName = '/quick-tips';

  const QuickTipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App bar
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 16, 0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                            color: const Color(0xFFE5E7EB),
                            width: 1,
                          ),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Color(0xFF9CA3AF),
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF9CA3AF),
                              size: 18,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 11),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          color: const Color(0xFFE5E7EB),
                          width: 1,
                        ),
                      ),
                      child: const Icon(
                        Icons.tune,
                        color: Color(0xFF3B82F6),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Header section
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEFF6FF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'DAILY WELLNESS',
                              style: TextStyle(
                                color: Color(0xFF3B82F6),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Quick Daily\nTips',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Small changes for a healthier you. Discover actionable advice for your everyday life.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF6B7280),
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Person illustration placeholder
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEF3C7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.directions_walk,
                        size: 40,
                        color: Color(0xFFF59E0B),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Tips list
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 12),
                ..._tips.map((tip) => _TipCard(tip: tip)),
                const SizedBox(height: 20),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

const List<_TipData> _tips = [
  _TipData(
    icon: Icons.chair_outlined,
    iconColor: Color(0xFF3B82F6),
    iconBg: Color(0xFFEFF6FF),
    category: 'ERGONOMICS',
    readTime: '2 min read',
    title: 'Posture Check',
    description:
        'Are you slouching right now? Adjust your chair height so your knees are at a 90-degree angle and your feet are flat on the floor. Your monitor should be at eye level to prevent neck strain.',
    lineColor: Color(0xFF3B82F6),
  ),
  _TipData(
    icon: Icons.nightlight_outlined,
    iconColor: Color(0xFF8B5CF6),
    iconBg: Color(0xFFF5F3FF),
    category: 'SLEEP',
    readTime: '3 min read',
    title: 'Digital Sunset',
    description:
        "Blue light suppresses melatonin. Try enabling 'Night Shift' mode or putting your devices away 1 hour before bed to improve sleep quality and fall asleep faster.",
    lineColor: Color(0xFF8B5CF6),
  ),
  _TipData(
    icon: Icons.grid_view_rounded,
    iconColor: Color(0xFFF59E0B),
    iconBg: Color(0xFFFFFBEB),
    category: 'NUTRITION',
    readTime: '4 min read',
    title: 'Fiber Facts',
    description:
        "Start your day right. Adding high-fiber foods like oats, chia seeds, or berries to your breakfast can stabilise blood sugar and keep you full until lunch.",
    lineColor: Color(0xFFF59E0B),
  ),
  _TipData(
    icon: Icons.self_improvement,
    iconColor: Color(0xFF3B82F6),
    iconBg: Color(0xFFEFF6FF),
    category: 'MENTAL HEALTH',
    readTime: '2 min read',
    title: '3-Minute Mindfulness',
    description:
        "Feeling overwhelmed? Try the 4-7-8 breathing technique. Inhale for 4 seconds, hold for 7, and exhale slowly for 8. Repeat for 3 cycles to reset your nervous system.",
    lineColor: Color(0xFF3B82F6),
  ),
  _TipData(
    icon: Icons.stairs_outlined,
    iconColor: Color(0xFF10B981),
    iconBg: Color(0xFFD1FAE5),
    category: 'EXERCISE',
    readTime: '1 min read',
    title: 'Stairs Over Elevator',
    description:
        'Small daily movements add up. Taking the stairs instead of the elevator can burn extra calories and strengthen your leg muscles without a gym membership.',
    lineColor: Color(0xFF10B981),
  ),
  _TipData(
    icon: Icons.remove_red_eye_outlined,
    iconColor: Color(0xFFF59E0B),
    iconBg: Color(0xFFFFFBEB),
    category: 'EYE HEALTH',
    readTime: '1 min read',
    title: '20-20-20 Rule',
    description:
        'To reduce eye strain, every 20 minutes, look at something 20 feet away for 20 seconds. This helps relax the focusing muscle inside the eye to reduce fatigue.',
    lineColor: Color(0xFFF59E0B),
  ),
  _TipData(
    icon: Icons.water_drop_outlined,
    iconColor: Color(0xFF3B82F6),
    iconBg: Color(0xFFEFF6FF),
    category: 'HYDRATION',
    readTime: '1 min read',
    title: 'Water Before Meals',
    description:
        'Drinking a glass of water 30 minutes before eating can aid digestion and prevent overeating. It prepares your stomach for food and ensures optimal hydration.',
    lineColor: Color(0xFF3B82F6),
  ),
  _TipData(
    icon: Icons.wb_sunny_outlined,
    iconColor: Color(0xFFF59E0B),
    iconBg: Color(0xFFFFFBEB),
    category: 'SUN SAFETY',
    readTime: '2 min read',
    title: 'UV Protection',
    description:
        'Even on cloudy days, UV rays can damage skin. Apply broad-spectrum SPF 30+ daily to protect against premature aging and reduce the risk of skin cancer.',
    lineColor: Color(0xFFF59E0B),
  ),
  _TipData(
    icon: Icons.medical_services_outlined,
    iconColor: Color(0xFF0D9488),
    iconBg: Color(0xFFCCFBF1),
    category: 'DENTAL CARE',
    readTime: '2 min read',
    title: 'Floss Daily',
    description:
        "Brushing only cleans 60% of tooth surfaces. Flossing reaches the rest to prevent gum disease and remove plaque from areas your toothbrush can't reach.",
    lineColor: Color(0xFF0D9488),
  ),
];

class _TipData {
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String category;
  final String readTime;
  final String title;
  final String description;
  final Color lineColor;

  const _TipData({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.category,
    required this.readTime,
    required this.title,
    required this.description,
    required this.lineColor,
  });
}

class _TipCard extends StatelessWidget {
  final _TipData tip;

  const _TipCard({required this.tip});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category row
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: tip.iconBg,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(tip.icon, color: tip.iconColor, size: 16),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  tip.category,
                  style: TextStyle(
                    color: tip.iconColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Color(0xFF9CA3AF),
                    size: 16,
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.ios_share,
                    color: Color(0xFF9CA3AF),
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            tip.readTime,
            style: const TextStyle(
              color: Color(0xFF9CA3AF),
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            tip.title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            tip.description,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF4B5563),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 14),
          // Colored bottom line
          Container(
            height: 3,
            decoration: BoxDecoration(
              color: tip.lineColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
