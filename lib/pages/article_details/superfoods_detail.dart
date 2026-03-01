import 'package:flutter/material.dart';

class SuperfoodsDetail extends StatelessWidget {
  const SuperfoodsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        const Text(
          'Superfoods You Need to Include in Your Diet',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
            height: 1.2,
          ),
        ),
        const SizedBox(height: 14),

        // Author row
        Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                color: Color(0xFFFFEDD5),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  'CT',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFF97316),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'By CareTag Editorial',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              '·',
              style: TextStyle(color: Color(0xFF9CA3AF), fontSize: 13),
            ),
            const SizedBox(width: 8),
            const Text(
              '5 min read',
              style: TextStyle(fontSize: 13, color: Color(0xFF9CA3AF)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Divider(color: Color(0xFFF3F4F6)),
        const SizedBox(height: 20),

        // Intro
        const Text(
          'Incorporating these nutritional powerhouses into your daily routine can boost energy, improve focus, and strengthen your immune system naturally.',
          style: TextStyle(fontSize: 16, height: 1.6, color: Color(0xFF4B5563)),
        ),
        const SizedBox(height: 32),

        const Text(
          'Top 5 Powerhouses',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 20),

        _buildFoodCard(
          icon: Icons.water_drop_outlined,
          iconColor: const Color(0xFF3B82F6),
          iconBgColor: const Color(0xFFDBEAFE),
          title: 'Blueberries',
          tagLabel: 'Antioxidants',
          tagColor: const Color(0xFF3B82F6),
          tagBgColor: const Color(0xFFEFF6FF),
          description:
              'Packed with antioxidants that protect your cells from damage. They are known to improve memory and cognitive function over time.',
        ),

        _buildFoodCard(
          icon: Icons.opacity,
          iconColor: const Color(0xFFF97316),
          iconBgColor: const Color(0xFFFFEDD5),
          title: 'Salmon',
          tagLabel: 'Omega-3',
          tagColor: const Color(0xFFF97316),
          tagBgColor: const Color(0xFFFFF7ED),
          description:
              'Rich in omega-3 fatty acids essential for heart and brain health. Regular consumption can lower blood pressure and reduce inflammation.',
        ),

        _buildFoodCard(
          icon: Icons.eco_outlined,
          iconColor: const Color(0xFF10B981),
          iconBgColor: const Color(0xFFD1FAE5),
          title: 'Kale',
          tagLabel: 'Vitamin K',
          tagColor: const Color(0xFF10B981),
          tagBgColor: const Color(0xFFECFDF5),
          description:
              "A nutrient-dense leafy green loaded with Vitamin K, A, and C. It supports bone health and boosts your body's detoxification processes.",
        ),

        _buildFoodCard(
          icon: Icons.spa_outlined,
          iconColor: const Color(0xFFD97706),
          iconBgColor: const Color(0xFFFEF3C7),
          title: 'Walnuts',
          tagLabel: 'Brain Health',
          tagColor: const Color(0xFFD97706),
          tagBgColor: const Color(0xFFFFFBEB),
          description:
              'The ultimate brain food, containing healthy fats and polyphenols. Studies suggest they may improve memory and reduce anxiety.',
        ),

        _buildFoodCard(
          icon: Icons.healing,
          iconColor: const Color(0xFFEAB308),
          iconBgColor: const Color(0xFFFEF9C3),
          title: 'Turmeric',
          tagLabel: 'Anti-inflammatory',
          tagColor: const Color(0xFFEAB308),
          tagBgColor: const Color(0xFFFEFCE8),
          description:
              'Contains curcumin, a potent anti-inflammatory compound. It aids in digestion and helps alleviate joint pain naturally.',
        ),
      ],
    );
  }

  Widget _buildFoodCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String tagLabel,
    required Color tagColor,
    required Color tagBgColor,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFF1F5F9)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: tagBgColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        tagLabel,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: tagColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.5,
                    color: Color(0xFF4B5563),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
