import 'package:flutter/material.dart';

class VeganProteinDetail extends StatelessWidget {
  const VeganProteinDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFF374151),
                      size: 22,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.bookmark_border,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                  const SizedBox(width: 14),
                  const Icon(
                    Icons.share_outlined,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hero
                    Stack(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&auto=format&fit=crop',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            height: 200,
                            color: const Color(0xFF1E293B),
                          ),
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withValues(alpha: 0.65),
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 14,
                          left: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF22C55E),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              'GUIDE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 14,
                          left: 16,
                          right: 16,
                          child: Text(
                            'Vegan Protein Sources:\nA Complete Guide',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Author
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 16,
                                backgroundColor: Color(0xFF6366F1),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Reviewed by Dr. Lisa Wong, RD',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF374151),
                                    ),
                                  ),
                                  Text(
                                    'Clinical Dietitian • Updated Oct 24',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF9CA3AF),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),

                          const Text(
                            'Switching to a plant-based diet doesn\'t mean sacrificing performance or muscle. The key lies in understanding variety and nutrient density. Here is everything you need to know about fueling your body with plants.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF374151),
                              height: 1.7,
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Complete Protein Myth
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF7ED),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFFED7AA),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text('⚠️', style: TextStyle(fontSize: 16)),
                                    SizedBox(width: 8),
                                    Text(
                                      'The \'Complete Protein\' Myth',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF111827),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'For decades, it was believed you needed to combine foods (like rice and beans) at every meal to get a "complete" protein. Modern science shows the liver assembles amino acids over the course of a day.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF374151),
                                    height: 1.6,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF9FAFB),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Key Takeaway',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFFD97706),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Focus on variety throughout the day, not necessarily at every single meal. Your body is smarter than you think.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF374151),
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          // Protein Power Ranking table header
                          const Text(
                            'Protein Power Ranking',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Table
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Column(
                              children: [
                                _ProteinTableHeader(),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFE5E7EB),
                                ),
                                _ProteinTableRow(
                                  food: 'Seitan (Wheat Gluten)',
                                  serving: '3 oz',
                                  level: 'High',
                                  levelColor: const Color(0xFF22C55E),
                                ),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                _ProteinTableRow(
                                  food: 'Lentils (Cooked)',
                                  serving: '1 cup',
                                  level: 'High',
                                  levelColor: const Color(0xFF22C55E),
                                ),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                _ProteinTableRow(
                                  food: 'Tempeh',
                                  serving: '1 cup',
                                  level: 'Med',
                                  levelColor: const Color(0xFFF59E0B),
                                ),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                _ProteinTableRow(
                                  food: 'Edamame',
                                  serving: '1 cup',
                                  level: 'Med',
                                  levelColor: const Color(0xFFF59E0B),
                                ),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                _ProteinTableRow(
                                  food: 'Tofu (Firm)',
                                  serving: '1/2 cup',
                                  level: 'Med',
                                  levelColor: const Color(0xFFF59E0B),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          // Sample High-Protein Day
                          const Text(
                            'Sample High-Protein Day',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 12),

                          _MealSampleRow(
                            label: 'BREAKFAST',
                            name: 'Tofu Scramble & Avocado',
                            protein: '22g Protein',
                            kcal: '450 kcal',
                          ),
                          const SizedBox(height: 8),
                          _MealSampleRow(
                            label: 'LUNCH',
                            name: 'Quinoa Chickpea Power Bowl',
                            protein: '19g Protein',
                            kcal: '520 kcal',
                          ),
                          const SizedBox(height: 8),
                          _MealSampleRow(
                            label: 'DINNER',
                            name: 'Red Lentil Dal with Brown Rice',
                            protein: '24g Protein',
                            kcal: '600 kcal',
                          ),

                          const SizedBox(height: 22),

                          // Smart Supplementation
                          const Text(
                            'Smart Supplementation',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFF6FF),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.medical_services_outlined,
                                        color: Color(0xFF3B82F6),
                                        size: 22,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Vitamin B12',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFF111827),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        'Essential for nerve function. Hard to get from plants alone. Consider a daily supplement.',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xFF6B7280),
                                          height: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFF7ED),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.bolt,
                                        color: Color(0xFFF59E0B),
                                        size: 22,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Iron',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFF111827),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        'Pair iron-rich plant foods (spinach, lentils) with Vitamin C (lemon, peppers) to boost absorption.',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xFF6B7280),
                                          height: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProteinTableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'FOOD SOURCE',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Color(0xFF9CA3AF),
                letterSpacing: 0.4,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'SERVING',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Color(0xFF9CA3AF),
                letterSpacing: 0.4,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'PROTEIN',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Color(0xFF9CA3AF),
                letterSpacing: 0.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProteinTableRow extends StatelessWidget {
  const _ProteinTableRow({
    required this.food,
    required this.serving,
    required this.level,
    required this.levelColor,
  });
  final String food;
  final String serving;
  final String level;
  final Color levelColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              food,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF111827),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              serving,
              style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: levelColor.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                level,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: levelColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MealSampleRow extends StatelessWidget {
  const _MealSampleRow({
    required this.label,
    required this.name,
    required this.protein,
    required this.kcal,
  });
  final String label;
  final String name;
  final String protein;
  final String kcal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF9CA3AF),
                    letterSpacing: 0.4,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Icon(Icons.bolt, color: Color(0xFF22C55E), size: 13),
                  Text(
                    protein,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF22C55E),
                    ),
                  ),
                ],
              ),
              Text(
                kcal,
                style: const TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
