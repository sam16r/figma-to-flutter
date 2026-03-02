import 'package:flutter/material.dart';

class SevenDayMealPlanPage extends StatefulWidget {
  const SevenDayMealPlanPage({super.key});

  static const routeName = '/7-day-meal-plan';

  @override
  State<SevenDayMealPlanPage> createState() => _SevenDayMealPlanPageState();
}

class _SevenDayMealPlanPageState extends State<SevenDayMealPlanPage> {
  int _selectedDay = 1;

  static const List<_DayMeals> _allDays = [
    _DayMeals(
      day: 1,
      breakfast: _Meal(
        label: 'BREAKFAST',
        name: 'Greek Yogurt with Hemp Seeds & Berries',
        protein: '30g Protein',
        icon: Icons.wb_sunny_outlined,
      ),
      lunch: _Meal(
        label: 'LUNCH',
        name: 'Grilled Chicken & Quinoa Salad',
        protein: '45g Protein',
        icon: Icons.restaurant_outlined,
      ),
      snack: _Meal(
        label: 'SNACK',
        name: 'Handful of Almonds & Protein Shake',
        protein: '20g Protein',
        icon: Icons.local_cafe_outlined,
      ),
      dinner: _Meal(
        label: 'DINNER',
        name: 'Baked Salmon with Steamed Broccoli',
        protein: '35g Protein',
        icon: Icons.nightlight_outlined,
      ),
    ),
    _DayMeals(
      day: 2,
      breakfast: _Meal(
        label: 'BREAKFAST',
        name: 'Scrambled Eggs with Spinach & Feta',
        protein: '25g Protein',
        icon: Icons.wb_sunny_outlined,
      ),
      lunch: _Meal(
        label: 'LUNCH',
        name: 'Turkey & Avocado Wrap with Whole Grain Tortilla',
        protein: '35g Protein',
        icon: Icons.restaurant_outlined,
      ),
      snack: _Meal(
        label: 'SNACK',
        name: 'Cottage Cheese with Sliced Peaches',
        protein: '20g Protein',
        icon: Icons.local_cafe_outlined,
      ),
      dinner: _Meal(
        label: 'DINNER',
        name: 'Lean Beef Stir-fry with Mixed Vegetables',
        protein: '40g Protein',
        icon: Icons.nightlight_outlined,
      ),
    ),
    _DayMeals(
      day: 3,
      breakfast: _Meal(
        label: 'BREAKFAST',
        name: 'Protein Pancakes with Greek Yogurt Topping',
        protein: '30g Protein',
        icon: Icons.wb_sunny_outlined,
      ),
      lunch: _Meal(
        label: 'LUNCH',
        name: 'Tuna Salad with Mixed Greens and Chickpeas',
        protein: '40g Protein',
        icon: Icons.restaurant_outlined,
      ),
      snack: _Meal(
        label: 'SNACK',
        name: 'Boiled Eggs and Roasted Edamame',
        protein: '15g Protein',
        icon: Icons.local_cafe_outlined,
      ),
      dinner: _Meal(
        label: 'DINNER',
        name: 'Grilled Shrimp Skewers with Cauliflower Rice',
        protein: '35g Protein',
        icon: Icons.nightlight_outlined,
      ),
    ),
    _DayMeals(
      day: 4,
      breakfast: _Meal(
        label: 'BREAKFAST',
        name: 'Tofu Scramble with Nutritional Yeast & Peppers',
        protein: '25g Protein',
        icon: Icons.wb_sunny_outlined,
      ),
      lunch: _Meal(
        label: 'LUNCH',
        name: 'Quinoa and Black Bean Power Bowl with Chicken',
        protein: '40g Protein',
        icon: Icons.restaurant_outlined,
      ),
      snack: _Meal(
        label: 'SNACK',
        name: 'Greek Yogurt with Almond Butter',
        protein: '20g Protein',
        icon: Icons.local_cafe_outlined,
      ),
      dinner: _Meal(
        label: 'DINNER',
        name: 'Pan-Seared Cod with Asparagus and Quinoa',
        protein: '35g Protein',
        icon: Icons.nightlight_outlined,
      ),
    ),
    _DayMeals(
      day: 5,
      breakfast: _Meal(
        label: 'BREAKFAST',
        name: 'Overnight Oats with Whey Protein and Chia',
        protein: '30g Protein',
        icon: Icons.wb_sunny_outlined,
      ),
      lunch: _Meal(
        label: 'LUNCH',
        name: 'Lean Ground Turkey Taco Salad with Greek Yogurt',
        protein: '35g Protein',
        icon: Icons.restaurant_outlined,
      ),
      snack: _Meal(
        label: 'SNACK',
        name: 'Protein Bar and an Apple',
        protein: '20g Protein',
        icon: Icons.local_cafe_outlined,
      ),
      dinner: _Meal(
        label: 'DINNER',
        name: 'Roast Chicken Breast with Sweet Potato',
        protein: '40g Protein',
        icon: Icons.nightlight_outlined,
      ),
    ),
    _DayMeals(
      day: 6,
      breakfast: _Meal(
        label: 'BREAKFAST',
        name: 'Smoked Salmon and Cream Cheese on Whole Grain',
        protein: '25g Protein',
        icon: Icons.wb_sunny_outlined,
      ),
      lunch: _Meal(
        label: 'LUNCH',
        name: 'Lentil and Spinach Soup with a Chicken Breast',
        protein: '45g Protein',
        icon: Icons.restaurant_outlined,
      ),
      snack: _Meal(
        label: 'SNACK',
        name: 'Beef Jerky and Mixed Nuts',
        protein: '20g Protein',
        icon: Icons.local_cafe_outlined,
      ),
      dinner: _Meal(
        label: 'DINNER',
        name: 'Turkey Meatballs with Zucchini Noodles',
        protein: '30g Protein',
        icon: Icons.nightlight_outlined,
      ),
    ),
    _DayMeals(
      day: 7,
      breakfast: _Meal(
        label: 'BREAKFAST',
        name: 'Spinach and Mushroom Omelette',
        protein: '25g Protein',
        icon: Icons.wb_sunny_outlined,
      ),
      lunch: _Meal(
        label: 'LUNCH',
        name: 'Roast Beef and Swiss Cheese Sandwich',
        protein: '35g Protein',
        icon: Icons.restaurant_outlined,
      ),
      snack: _Meal(
        label: 'SNACK',
        name: 'Protein Smoothie with Spinach and Berries',
        protein: '20g Protein',
        icon: Icons.local_cafe_outlined,
      ),
      dinner: _Meal(
        label: 'DINNER',
        name: 'Grilled Pork Tenderloin with Roasted Carrots',
        protein: '35g Protein',
        icon: Icons.nightlight_outlined,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final currentDay = _allDays[_selectedDay - 1];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hero image with back button
                  Stack(
                    children: [
                      Image.network(
                        'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=800&auto=format&fit=crop',
                        height: 220,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Container(
                          height: 220,
                          color: const Color(0xFF1E293B),
                        ),
                      ),
                      Container(
                        height: 220,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withValues(alpha: 0.5),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.bookmark_border,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                const SizedBox(width: 14),
                                const Icon(
                                  Icons.share_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 60,
                        left: 16,
                        child: _HighProteinBadge(),
                      ),
                      const Positioned(
                        bottom: 16,
                        left: 16,
                        right: 16,
                        child: Text(
                          'The 7-Day High Protein\nReset: Expert Guide',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Plan Overview
                        const Text(
                          'PLAN OVERVIEW',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF9CA3AF),
                            letterSpacing: 0.6,
                          ),
                        ),
                        const SizedBox(height: 10),
                        _OverviewRow(
                          icon: Icons.bolt,
                          iconColor: const Color(0xFFF59E0B),
                          text: 'Target: 120g Protein/Day',
                          subText: 'Optimized for synthesis',
                        ),
                        const SizedBox(height: 6),
                        _OverviewRow(
                          icon: Icons.favorite_outline,
                          iconColor: const Color(0xFF22C55E),
                          text: 'Goal: Muscle Recovery',
                          subText: '& Sustained Energy',
                        ),

                        const SizedBox(height: 20),

                        // Day Breakdown header + Week label
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Day Breakdown',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF111827),
                              ),
                            ),
                            Text(
                              'Week 1',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3B82F6),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 12),

                        // Day Selector
                        SizedBox(
                          height: 44,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              final day = index + 1;
                              final isSelected = _selectedDay == day;
                              return GestureDetector(
                                onTap: () => setState(() => _selectedDay = day),
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 52,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? const Color(0xFF3B82F6)
                                        : const Color(0xFFF3F4F6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Day',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: isSelected
                                              ? Colors.white70
                                              : const Color(0xFF9CA3AF),
                                        ),
                                      ),
                                      Text(
                                        '$day',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: isSelected
                                              ? Colors.white
                                              : const Color(0xFF374151),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Meal rows
                        _MealRow(meal: currentDay.breakfast),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        _MealRow(meal: currentDay.lunch),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        _MealRow(meal: currentDay.snack),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        _MealRow(meal: currentDay.dinner),

                        const SizedBox(height: 20),

                        // Grocery List Button
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_cart_outlined,
                              size: 18,
                              color: Color(0xFF3B82F6),
                            ),
                            label: const Text(
                              'View Grocery List for the Week',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF3B82F6),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFF3B82F6)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HighProteinBadge extends StatelessWidget {
  const _HighProteinBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF22C55E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'HIGH PROTEIN',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _OverviewRow extends StatelessWidget {
  const _OverviewRow({
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.subText,
  });
  final IconData icon;
  final Color iconColor;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 18),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          subText,
          style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
        ),
      ],
    );
  }
}

class _MealRow extends StatelessWidget {
  const _MealRow({required this.meal});
  final _Meal meal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(meal.icon, color: const Color(0xFF9CA3AF), size: 18),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal.label,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9CA3AF),
                    letterSpacing: 0.4,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  meal.name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            meal.protein,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: Color(0xFF3B82F6),
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.chevron_right, color: Color(0xFF9CA3AF), size: 18),
        ],
      ),
    );
  }
}

class _Meal {
  const _Meal({
    required this.label,
    required this.name,
    required this.protein,
    required this.icon,
  });
  final String label;
  final String name;
  final String protein;
  final IconData icon;
}

class _DayMeals {
  const _DayMeals({
    required this.day,
    required this.breakfast,
    required this.lunch,
    required this.snack,
    required this.dinner,
  });
  final int day;
  final _Meal breakfast;
  final _Meal lunch;
  final _Meal snack;
  final _Meal dinner;
}
