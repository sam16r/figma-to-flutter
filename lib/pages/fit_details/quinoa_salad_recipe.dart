import 'package:flutter/material.dart';

class QuinoaSaladRecipe extends StatelessWidget {
  const QuinoaSaladRecipe({super.key});

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
                    // Hero food image
                    Image.network(
                      'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&auto=format&fit=crop',
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
                          const Text(
                            'Quinoa & Avocado Salad',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 12),

                          // Stats row
                          Row(
                            children: const [
                              _RecipeStat(
                                icon: Icons.local_fire_department_outlined,
                                iconColor: Color(0xFFF59E0B),
                                value: '420kcal',
                              ),
                              SizedBox(width: 20),
                              _RecipeStat(
                                icon: Icons.access_time_outlined,
                                iconColor: Color(0xFF3B82F6),
                                value: '20 min',
                              ),
                              SizedBox(width: 20),
                              _RecipeStat(
                                icon: Icons.bar_chart_outlined,
                                iconColor: Color(0xFF22C55E),
                                value: 'Easy',
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          // Macros
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9FAFB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: const [
                                Expanded(
                                  child: _MacroColumn(
                                    value: '15g',
                                    label: 'PROT',
                                    color: Color(0xFF3B82F6),
                                  ),
                                ),
                                _MacroDivider(),
                                Expanded(
                                  child: _MacroColumn(
                                    value: '45g',
                                    label: 'CARB',
                                    color: Color(0xFFF59E0B),
                                  ),
                                ),
                                _MacroDivider(),
                                Expanded(
                                  child: _MacroColumn(
                                    value: '22g',
                                    label: 'FAT',
                                    color: Color(0xFFEF4444),
                                  ),
                                ),
                                _MacroDivider(),
                                Expanded(
                                  child: _MacroColumn(
                                    value: '12g',
                                    label: 'FIB',
                                    color: Color(0xFF22C55E),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          // Ingredients
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Ingredients',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                              Text(
                                '2 Servings',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          const _IngredientItem(text: '1 cup cooked quinoa'),
                          const _IngredientItem(text: '1 ripe avocado, cubed'),
                          const _IngredientItem(
                            text: '1/2 cup cherry tomatoes, halved',
                          ),
                          const _IngredientItem(
                            text: 'Fresh lime juice (1 lime)',
                          ),
                          const _IngredientItem(
                            text: '2 tbsp extra virgin olive oil',
                          ),

                          const SizedBox(height: 22),

                          // Preparation
                          const Text(
                            'Preparation',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 12),

                          const _PrepStep(
                            number: 1,
                            text:
                                'Rinse quinoa thoroughly. Cook in water or vegetable broth until fluffy (approx 15 mins). Let cool.',
                          ),
                          const _PrepStep(
                            number: 2,
                            text:
                                'While quinoa cools, chop the avocado and slice cherry tomatoes in halves.',
                          ),
                          const _PrepStep(
                            number: 3,
                            text:
                                'Whisk lime juice, olive oil, salt, and pepper in a small bowl until emulsified.',
                          ),
                          const _PrepStep(
                            number: 4,
                            text:
                                'Toss all ingredients together gently. Garnish with fresh herbs if desired and serve immediately.',
                          ),

                          const SizedBox(height: 16),

                          // Heart-Healthy Benefits callout
                          Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0FDF4),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFBBF7D0),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.favorite_outline,
                                  color: Color(0xFF22C55E),
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Heart-Healthy Benefits',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF111827),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        'Avocados are rich in monounsaturated fats which can help lower bad cholesterol levels and reduce risk of heart disease.',
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

class _RecipeStat extends StatelessWidget {
  const _RecipeStat({
    required this.icon,
    required this.iconColor,
    required this.value,
  });
  final IconData icon;
  final Color iconColor;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 16),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xFF374151),
          ),
        ),
      ],
    );
  }
}

class _MacroColumn extends StatelessWidget {
  const _MacroColumn({
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
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: color,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Color(0xFF9CA3AF),
            letterSpacing: 0.4,
          ),
        ),
      ],
    );
  }
}

class _MacroDivider extends StatelessWidget {
  const _MacroDivider();

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 36, color: const Color(0xFFE5E7EB));
  }
}

class _IngredientItem extends StatelessWidget {
  const _IngredientItem({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(top: 5, right: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF3B82F6),
              shape: BoxShape.circle,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF374151),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _PrepStep extends StatelessWidget {
  const _PrepStep({required this.number, required this.text});
  final int number;
  final String text;

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
              color: Color(0xFF3B82F6),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF374151),
                  height: 1.6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
