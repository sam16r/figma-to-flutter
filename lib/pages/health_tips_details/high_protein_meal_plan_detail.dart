import 'package:flutter/material.dart';

class HighProteinMealPlanDetail extends StatelessWidget {
  const HighProteinMealPlanDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Hero image
        SliverAppBar(
          expandedHeight: 260,
          pinned: true,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(25), blurRadius: 4),
                ],
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: Color(0xFF111827),
              ),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(25), blurRadius: 4),
                ],
              ),
              child: const Icon(
                Icons.bookmark_border,
                size: 20,
                color: Color(0xFF111827),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 12, 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(25), blurRadius: 4),
                ],
              ),
              child: const Icon(
                Icons.ios_share,
                size: 18,
                color: Color(0xFF111827),
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=800&auto=format&fit=crop',
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      const ColoredBox(color: Color(0xFFD1FAE5)),
                ),
                // Dark gradient
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black.withAlpha(160)],
                    ),
                  ),
                ),
                // Badges overlay
                const Positioned(
                  bottom: 16,
                  left: 16,
                  child: Row(
                    children: [
                      _BadgePill(
                        label: '✓ VERIFIED PLAN',
                        bg: Color(0xFF10B981),
                        textColor: Colors.white,
                      ),
                      SizedBox(width: 8),
                      _BadgePill(
                        label: '👤 DIETITIAN APPROVED',
                        bg: Color(0xFF374151),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // Content
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Text(
                  '7-Day High Protein Meal Plan',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 16),

                // Target + Goal row
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                  ),
                  child: const Column(
                    children: [
                      _MetaRow(
                        icon: Icons.bolt,
                        iconColor: Color(0xFF3B82F6),
                        label: 'TARGET',
                        value: '120g Protein/Day',
                      ),
                      SizedBox(height: 10),
                      _MetaRow(
                        icon: Icons.settings_outlined,
                        iconColor: Color(0xFFF59E0B),
                        label: 'PLAN GOAL',
                        value: 'Muscle Recovery',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Weekly Schedule header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Weekly Schedule',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),
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
                        '0/7 Completed',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3B82F6),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Days
                ..._days.map((day) => _DayCard(day: day)),

                const SizedBox(height: 24),

                // Download button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.download, color: Colors.white),
                    label: const Text(
                      'Download Full PDF Plan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B82F6),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _BadgePill extends StatelessWidget {
  final String label;
  final Color bg;
  final Color textColor;

  const _BadgePill({
    required this.label,
    required this.bg,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _MetaRow extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String value;

  const _MetaRow({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 20),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF9CA3AF),
                letterSpacing: 0.5,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Day data model
class _Day {
  final String name;
  final String label;
  final List<_Meal> meals;

  const _Day({required this.name, required this.label, required this.meals});
}

class _Meal {
  final String type;
  final String name;
  final String grams;

  const _Meal({required this.type, required this.name, required this.grams});
}

class _DayCard extends StatelessWidget {
  final _Day day;

  const _DayCard({required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE5E7EB)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // Day header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      day.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Text(
                      day.label,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF9CA3AF),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFD1D5DB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Mark Complete',
                      style: TextStyle(fontSize: 12, color: Color(0xFF9CA3AF)),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(height: 1, color: Color(0xFFE5E7EB)),

          // Meals
          ...day.meals.map(
            (meal) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        meal.type,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9CA3AF),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        meal.name,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF111827),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      meal.grams,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3B82F6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

const List<_Day> _days = [
  _Day(
    name: 'Day 1: Kickstart',
    label: 'Kickstart',
    meals: [
      _Meal(
        type: 'BREAKFAST',
        name: 'Scrambled Eggs with Spinach',
        grams: '25g',
      ),
      _Meal(type: 'LUNCH', name: 'Grilled Chicken Quinoa Bowl', grams: '40g'),
      _Meal(type: 'SNACK', name: 'Greek Yogurt with Berries', grams: '15g'),
      _Meal(type: 'DINNER', name: 'Baked Salmon with Asparagus', grams: '35g'),
    ],
  ),
  _Day(
    name: 'Day 2: Endurance',
    label: 'Endurance',
    meals: [
      _Meal(
        type: 'BREAKFAST',
        name: 'Protein Pancakes with Honey',
        grams: '28g',
      ),
      _Meal(type: 'LUNCH', name: 'Turkey Avocado Wrap', grams: '35g'),
      _Meal(type: 'SNACK', name: 'Cottage Cheese Bowl', grams: '20g'),
      _Meal(type: 'DINNER', name: 'Lean Beef Stir-Fry', grams: '36g'),
    ],
  ),
  _Day(
    name: 'Day 3: Recovery',
    label: 'Recovery',
    meals: [
      _Meal(
        type: 'BREAKFAST',
        name: 'Avocado Toast with Poached Egg',
        grams: '18g',
      ),
      _Meal(type: 'LUNCH', name: 'Tuna Salad Nicoise', grams: '32g'),
      _Meal(type: 'SNACK', name: 'Almonds & Hard Boiled Egg', grams: '13g'),
      _Meal(type: 'DINNER', name: 'Grilled Shrimp & Veggies', grams: '30g'),
    ],
  ),
  _Day(
    name: 'Day 4: Strength',
    label: 'Strength',
    meals: [
      _Meal(type: 'BREAKFAST', name: 'Tofu Scramble', grams: '25g'),
      _Meal(
        type: 'LUNCH',
        name: 'Quinoa & Black Bean Power Bowl',
        grams: '40g',
      ),
      _Meal(
        type: 'SNACK',
        name: 'Greek Yogurt with Almond Butter',
        grams: '20g',
      ),
      _Meal(type: 'DINNER', name: 'Pan-Seared Cod', grams: '35g'),
    ],
  ),
  _Day(
    name: 'Day 5: Power',
    label: 'Power',
    meals: [
      _Meal(type: 'BREAKFAST', name: 'Overnight Oats with Whey', grams: '30g'),
      _Meal(type: 'LUNCH', name: 'Ground Turkey Taco Salad', grams: '35g'),
      _Meal(type: 'SNACK', name: 'Protein Bar', grams: '20g'),
      _Meal(type: 'DINNER', name: 'Roast Chicken Breast', grams: '40g'),
    ],
  ),
  _Day(
    name: 'Day 6: Vitality',
    label: 'Vitality',
    meals: [
      _Meal(
        type: 'BREAKFAST',
        name: 'Smoked Salmon on Whole Grain',
        grams: '25g',
      ),
      _Meal(type: 'LUNCH', name: 'Soup with Chicken', grams: '45g'),
      _Meal(type: 'SNACK', name: 'Beef Jerky', grams: '20g'),
      _Meal(type: 'DINNER', name: 'Turkey Meatballs', grams: '30g'),
    ],
  ),
  _Day(
    name: 'Day 7: Performance',
    label: 'Performance',
    meals: [
      _Meal(
        type: 'BREAKFAST',
        name: 'Spinach & Mushroom Omelette',
        grams: '25g',
      ),
      _Meal(type: 'LUNCH', name: 'Roast Beef Sandwich', grams: '35g'),
      _Meal(type: 'SNACK', name: 'Protein Smoothie', grams: '25g'),
      _Meal(type: 'DINNER', name: 'Grilled Pork Tenderloin', grams: '35g'),
    ],
  ),
];
