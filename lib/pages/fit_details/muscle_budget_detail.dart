import 'package:flutter/material.dart';

class MuscleBudgetDetail extends StatelessWidget {
  const MuscleBudgetDetail({super.key});

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
                          'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&auto=format&fit=crop',
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
                              'BUDGET FITNESS',
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
                            'Building Muscle on a Budget',
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
                                    'Dr. Ray',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF374151),
                                    ),
                                  ),
                                  Text(
                                    'Sports Medicine Specialist • 6 min read',
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
                            "You don't need expensive supplements or a fancy gym membership to see real results. With smart grocery choices and bodyweight leverage, gains are accessible to everyone.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF374151),
                              height: 1.7,
                            ),
                          ),

                          const SizedBox(height: 22),

                          // Budget Protein Powerhouses
                          Row(
                            children: const [
                              Icon(
                                Icons.attach_money,
                                color: Color(0xFF22C55E),
                                size: 18,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Budget Protein Powerhouses',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Price per gram of protein is the metric that matters. Here are the champions of the grocery aisle.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF6B7280),
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 12),

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
                                _BudgetTableHeader(),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFE5E7EB),
                                ),
                                const _BudgetTableRow(
                                  item: 'Canned Tuna',
                                  level: 'High',
                                  levelColor: Color(0xFF22C55E),
                                  cost: '\$0.99',
                                ),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                const _BudgetTableRow(
                                  item: 'Eggs (12ct)',
                                  level: 'V. High',
                                  levelColor: Color(0xFF22C55E),
                                  cost: '\$2.50',
                                ),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                const _BudgetTableRow(
                                  item: 'Lentils (1lb)',
                                  level: 'Med',
                                  levelColor: Color(0xFFF59E0B),
                                  cost: '\$1.49',
                                ),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                const _BudgetTableRow(
                                  item: 'Greek Yogurt',
                                  level: 'Med',
                                  levelColor: Color(0xFFF59E0B),
                                  cost: '\$4.99',
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          // No-Equipment Routine
                          Row(
                            children: const [
                              Icon(
                                Icons.directions_run,
                                color: Color(0xFF3B82F6),
                                size: 18,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'The No-Equipment Routine',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),

                          const _NoEquipExercise(
                            icon: Icons.accessibility_new_outlined,
                            title: 'Bodyweight Squats',
                            sets:
                                '4 sets to failure. Focus on depth and slow controlled descent.',
                          ),
                          const SizedBox(height: 12),
                          const _NoEquipExercise(
                            icon: Icons.fitness_center,
                            title: 'Push-ups',
                            sets:
                                '4 sets of 15-20 reps. Keep core tight. Elevate feet to increase difficulty.',
                          ),
                          const SizedBox(height: 12),
                          const _NoEquipExercise(
                            icon: Icons.directions_walk,
                            title: 'Lunges',
                            sets:
                                '3 sets of 12 reps per leg. Great for balance and unilateral strength.',
                          ),

                          const SizedBox(height: 22),

                          // Bulk Meal Prep card
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E293B),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.shopping_basket_outlined,
                                      color: Color(0xFF22C55E),
                                      size: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Bulk Meal Prep: Under \$30',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Cooking in bulk saves time and money. Our strategists calculated a week\'s worth of muscle-building lunches for just \$28.50.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white70,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                const _BulkTip(
                                  'Buy oats and rice in large 5lb bags',
                                ),
                                const _BulkTip(
                                  'Choose frozen veggies over fresh',
                                ),
                                const _BulkTip(
                                  'Use slow cooker for cheaper meat cuts',
                                ),
                              ],
                            ),
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

class _BudgetTableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'ITEM',
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
              'PROTEIN/\$\$',
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
              'COST',
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

class _BudgetTableRow extends StatelessWidget {
  const _BudgetTableRow({
    required this.item,
    required this.level,
    required this.levelColor,
    required this.cost,
  });
  final String item;
  final String level;
  final Color levelColor;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF111827),
              ),
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
          Expanded(
            flex: 2,
            child: Text(
              cost,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFF374151),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NoEquipExercise extends StatelessWidget {
  const _NoEquipExercise({
    required this.icon,
    required this.title,
    required this.sets,
  });
  final IconData icon;
  final String title;
  final String sets;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color(0xFFEFF6FF),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xFF3B82F6), size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  sets,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                    height: 1.5,
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

class _BulkTip extends StatelessWidget {
  const _BulkTip(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: Color(0xFF22C55E),
            size: 16,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
