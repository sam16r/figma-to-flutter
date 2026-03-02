import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'fitness_nutrition_detail_page.dart';
import 'seven_day_meal_plan_page.dart';

class FitnessNutritionContent extends StatelessWidget {
  const FitnessNutritionContent({super.key});

  void _goToDetail(BuildContext context, NewsArticle article) {
    Navigator.pushNamed(
      context,
      FitnessNutritionDetailPage.routeName,
      arguments: {'article': article},
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Featured Hero Card
          GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, SevenDayMealPlanPage.routeName),
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=800&auto=format&fit=crop',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withValues(alpha: 0.55),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            'GET PLAN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.25),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            'FITNESS • 7 DAY PLAN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'The 7-Day High Protein\nReset: Expert Guide',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Unlock sustainable energy and muscle recovery with this science-backed meal pla...',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Read Plan →',
                        style: TextStyle(
                          color: Color(0xFF111827),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Latest Insights
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Latest Insights',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3B82F6),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          _LatestInsightRow(
            article: fitArticles.firstWhere((a) => a.id == 'fit1'),
            onTap: () => _goToDetail(
              context,
              fitArticles.firstWhere((a) => a.id == 'fit1'),
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF3F4F6)),
          _LatestInsightRow(
            article: fitArticles.firstWhere((a) => a.id == 'fit10'),
            onTap: () => _goToDetail(
              context,
              fitArticles.firstWhere((a) => a.id == 'fit10'),
            ),
          ),

          const SizedBox(height: 20),

          // Nutrition Guide Banner
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: const Color(0xFFD1FAE5),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NUTRITION GUIDE',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF059669),
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Superfoods for Heart Health',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF111827),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    _AvatarCircle(
                      color: const Color(0xFF3B82F6),
                      icon: Icons.person,
                    ),
                    Transform.translate(
                      offset: const Offset(-8, 0),
                      child: _AvatarCircle(
                        color: const Color(0xFF22C55E),
                        icon: Icons.person,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-16, 0),
                      child: _AvatarCircle(
                        color: const Color(0xFFF59E0B),
                        icon: Icons.person,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Daily Wellness Bites
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Daily Wellness Bites',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _goToDetail(
                      context,
                      fitArticles.firstWhere((a) => a.id == 'fit2'),
                    ),
                    child: _WellnessBiteCard(
                      title: 'Posture Check',
                      subtitle: 'Align your spine. Shoulders back, chin up.',
                      icon: Icons.accessibility_new_outlined,
                      iconColor: const Color(0xFF3B82F6),
                      bgColor: const Color(0xFFEFF6FF),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _goToDetail(
                      context,
                      fitArticles.firstWhere((a) => a.id == 'fit3'),
                    ),
                    child: _WellnessBiteCard(
                      title: 'Fiber Facts',
                      subtitle: 'Boost digestion with 30g daily fiber.',
                      icon: Icons.grass_outlined,
                      iconColor: const Color(0xFF8B5CF6),
                      bgColor: const Color(0xFFF5F3FF),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Trending Super-Ingredients
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Trending Super-Ingredients',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                _IngredientCircle(
                  imageUrl:
                      'https://images.unsplash.com/photo-1587830823734-4c3e3476c9c3?w=200&auto=format&fit=crop',
                  label: 'Avocado',
                ),
                _IngredientCircle(
                  imageUrl:
                      'https://images.unsplash.com/photo-1498557850523-fd3d118b962e?w=200&auto=format&fit=crop',
                  label: 'Blueberries',
                ),
                _IngredientCircle(
                  imageUrl:
                      'https://images.unsplash.com/photo-1586201375761-83865001e31c?w=200&auto=format&fit=crop',
                  label: 'Quinoa',
                ),
                _IngredientCircle(
                  imageUrl:
                      'https://images.unsplash.com/photo-1602780084728-e7bbd1d7a1f0?w=200&auto=format&fit=crop',
                  label: 'Chia Seeds',
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Healthy Recipes
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Healthy Recipes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3B82F6),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                GestureDetector(
                  onTap: () => _goToDetail(
                    context,
                    fitArticles.firstWhere((a) => a.id == 'fit6'),
                  ),
                  child: const _RecipeCard(
                    imageUrl:
                        'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?w=400&auto=format&fit=crop',
                    title: 'Green Smoothie Bowl',
                    kcal: '320 kcal',
                    difficulty: 'Easy',
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: () => _goToDetail(
                    context,
                    fitArticles.firstWhere((a) => a.id == 'fit5'),
                  ),
                  child: const _RecipeCard(
                    imageUrl:
                        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400&auto=format&fit=crop',
                    title: 'Quinoa & Avocado Salad',
                    kcal: '420 kcal',
                    difficulty: 'Easy',
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Expert Spotlight
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF9FAFB),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE5E7EB)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'EXPERT SPOTLIGHT',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF6B7280),
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFF6366F1),
                      child: Icon(Icons.person, color: Colors.white, size: 22),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Dr. Lisa Wong, RD',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          Text(
                            'Specialized in Digestive Health',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, color: Color(0xFFF59E0B), size: 14),
                    const SizedBox(width: 4),
                    const Text(
                      '4.0',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const Text(
                      ' (700+ reviews)',
                      style: TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3B82F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                        ),
                        child: const Text(
                          'Book 1:1 Consult',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.bookmark_border,
                        size: 18,
                        color: Color(0xFF374151),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Article List
          _ArticleListItem(
            article: fitArticles.firstWhere((a) => a.id == 'fit7'),
            onTap: () => _goToDetail(
              context,
              fitArticles.firstWhere((a) => a.id == 'fit7'),
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF3F4F6)),
          _ArticleListItem(
            article: fitArticles.firstWhere((a) => a.id == 'fit4'),
            onTap: () => _goToDetail(
              context,
              fitArticles.firstWhere((a) => a.id == 'fit4'),
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF3F4F6)),
          _ArticleListItem(
            article: fitArticles.firstWhere((a) => a.id == 'fit8'),
            onTap: () => _goToDetail(
              context,
              fitArticles.firstWhere((a) => a.id == 'fit8'),
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF3F4F6)),
          _ArticleListItem(
            article: fitArticles.firstWhere((a) => a.id == 'fit9'),
            onTap: () => _goToDetail(
              context,
              fitArticles.firstWhere((a) => a.id == 'fit9'),
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _AvatarCircle extends StatelessWidget {
  const _AvatarCircle({required this.color, required this.icon});
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: color,
      child: Icon(icon, color: Colors.white, size: 14),
    );
  }
}

class _LatestInsightRow extends StatelessWidget {
  const _LatestInsightRow({required this.article, required this.onTap});
  final NewsArticle article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      article.category,
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3B82F6),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    article.title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xFF6366F1),
                        child: Icon(
                          Icons.person,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        article.author,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        article.timeAgo,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                article.imageUrl,
                width: 72,
                height: 72,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 72,
                  height: 72,
                  color: const Color(0xFFE5E7EB),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WellnessBiteCard extends StatelessWidget {
  const _WellnessBiteCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.bgColor,
  });
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 24),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF6B7280),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _IngredientCircle extends StatelessWidget {
  const _IngredientCircle({required this.imageUrl, required this.label});
  final String imageUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              imageUrl,
              width: 58,
              height: 58,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 58,
                height: 58,
                color: const Color(0xFFE5E7EB),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF374151),
            ),
          ),
        ],
      ),
    );
  }
}

class _RecipeCard extends StatelessWidget {
  const _RecipeCard({
    required this.imageUrl,
    required this.title,
    required this.kcal,
    required this.difficulty,
  });
  final String imageUrl;
  final String title;
  final String kcal;
  final String difficulty;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Image.network(
                  imageUrl,
                  width: 160,
                  height: 120,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: 160,
                    height: 120,
                    color: const Color(0xFFE5E7EB),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      kcal,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
              height: 1.3,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            difficulty,
            style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
          ),
        ],
      ),
    );
  }
}

class _ArticleListItem extends StatelessWidget {
  const _ArticleListItem({required this.article, required this.onTap});
  final NewsArticle article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                article.imageUrl,
                width: 80,
                height: 70,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 80,
                  height: 70,
                  color: const Color(0xFFE5E7EB),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.category,
                    style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3B82F6),
                      letterSpacing: 0.4,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    article.title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    article.readTime,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF9CA3AF),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
