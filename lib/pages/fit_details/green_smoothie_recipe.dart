import 'package:flutter/material.dart';

class GreenSmoothieRecipe extends StatelessWidget {
  const GreenSmoothieRecipe({super.key});

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
                    Image.network(
                      'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?w=800&auto=format&fit=crop',
                      height: 240,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        height: 240,
                        color: const Color(0xFF1E293B),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Tag + rating
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF22C55E),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'NUTRIENT DENSE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.star,
                                color: Color(0xFFF59E0B),
                                size: 14,
                              ),
                              const Text(
                                ' 4.9',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF374151),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          const Text(
                            'Green Smoothie Bowl',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'A high-antioxidant morning fuel designed to support cognitive function and digestive health with dark leafy greens and healthy fats.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF6B7280),
                              height: 1.5,
                            ),
                          ),

                          const SizedBox(height: 14),

                          // Quick stats
                          Row(
                            children: const [
                              _QuickStat(
                                icon: Icons.access_time_outlined,
                                value: '10 mins',
                                color: Color(0xFF6B7280),
                              ),
                              SizedBox(width: 20),
                              _QuickStat(
                                icon: Icons.local_fire_department_outlined,
                                value: '320 kcal',
                                color: Color(0xFFF59E0B),
                              ),
                              SizedBox(width: 20),
                              _QuickStat(
                                icon: Icons.bar_chart_outlined,
                                value: 'Easy',
                                color: Color(0xFF22C55E),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // Nutritional Breakdown
                          const Text(
                            'Nutritional Breakdown',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              _NutritionChip(
                                value: '8g',
                                label: 'Protein',
                                color: Color(0xFF3B82F6),
                              ),
                              SizedBox(width: 12),
                              _NutritionChip(
                                value: '45g',
                                label: 'Carbs',
                                color: Color(0xFFF59E0B),
                              ),
                              SizedBox(width: 12),
                              _NutritionChip(
                                value: '12g',
                                label: 'Fats',
                                color: Color(0xFFEF4444),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              _SmallNutritionBadge(
                                value: '12g (High)',
                                label: 'FIBER',
                              ),
                              SizedBox(width: 10),
                              _SmallNutritionBadge(
                                value: 'Vitamin A\n180% DV',
                                label: '',
                              ),
                              SizedBox(width: 10),
                              _SmallNutritionBadge(
                                value: 'Potassium\n420mg',
                                label: '',
                              ),
                            ],
                          ),

                          const SizedBox(height: 22),

                          // Ingredients
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Ingredients',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                              Row(
                                children: [
                                  _UnitToggle(label: 'METRIC', active: true),
                                  const SizedBox(width: 4),
                                  _UnitToggle(label: 'IMP', active: false),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          const _SmoothieIngredientRow(
                            emoji: '🥬',
                            name: 'Baby Spinach',
                            amount: '2 cups',
                            note: 'POTASSIUM FOR MUSCLE FUNCTION',
                          ),
                          const _SmoothieIngredientRow(
                            emoji: '🍌',
                            name: 'Frozen Banana',
                            amount: '1 large',
                            note: '',
                          ),
                          const _SmoothieIngredientRow(
                            emoji: '🥛',
                            name: 'Unsweetened Almond Milk',
                            amount: '120ml',
                            note: 'OMEGA-3 FATTY ACIDS',
                          ),
                          const _SmoothieIngredientRow(
                            emoji: '🌱',
                            name: 'Chia Seeds',
                            amount: '1 tbsp',
                            note: '',
                          ),

                          const SizedBox(height: 22),

                          // Preparation Steps
                          const Text(
                            'Preparation Steps',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 12),

                          const _SmoothieStep(
                            number: 1,
                            title: 'Blend the Base',
                            description:
                                'Place the frozen banana, baby spinach, and almond milk into a high-speed blender. Blend on high until the mixture is completely smooth and thick.',
                          ),
                          const _SmoothieStep(
                            number: 2,
                            title: 'Adjust Consistency',
                            description:
                                'If the mixture is too thick, add almond milk 1 tablespoon at a time. The goal is a soft serve ice cream texture that holds its shape.',
                          ),
                          const _SmoothieStep(
                            number: 3,
                            title: 'Assemble & Garnish',
                            description:
                                'Pour into a chilled bowl. Top with chia seeds, fresh berries, and a sprinkle of low-sugar granola for texture contrast.',
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

class _QuickStat extends StatelessWidget {
  const _QuickStat({
    required this.icon,
    required this.value,
    required this.color,
  });
  final IconData icon;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 15),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF374151),
          ),
        ),
      ],
    );
  }
}

class _NutritionChip extends StatelessWidget {
  const _NutritionChip({
    required this.value,
    required this.label,
    required this.color,
  });
  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: color,
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
        ),
      ],
    );
  }
}

class _SmallNutritionBadge extends StatelessWidget {
  const _SmallNutritionBadge({required this.value, required this.label});
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (label.isNotEmpty)
              Text(
                label,
                style: const TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF9CA3AF),
                  letterSpacing: 0.4,
                ),
              ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Color(0xFF374151),
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UnitToggle extends StatelessWidget {
  const _UnitToggle({required this.label, required this.active});
  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: active ? const Color(0xFF3B82F6) : const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: active ? Colors.white : const Color(0xFF6B7280),
        ),
      ),
    );
  }
}

class _SmoothieIngredientRow extends StatelessWidget {
  const _SmoothieIngredientRow({
    required this.emoji,
    required this.name,
    required this.amount,
    required this.note,
  });
  final String emoji;
  final String name;
  final String amount;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 24)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                if (note.isNotEmpty)
                  Text(
                    note,
                    style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF9CA3AF),
                      letterSpacing: 0.3,
                    ),
                  ),
              ],
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF374151),
            ),
          ),
        ],
      ),
    );
  }
}

class _SmoothieStep extends StatelessWidget {
  const _SmoothieStep({
    required this.number,
    required this.title,
    required this.description,
  });
  final int number;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: const BoxDecoration(
              color: Color(0xFF22C55E),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '$number',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
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
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF374151),
                    height: 1.6,
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
