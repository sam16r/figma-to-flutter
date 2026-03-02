import 'package:flutter/material.dart';
import '../models/news_article.dart';

class DiseasesAwarenessContent extends StatelessWidget {
  const DiseasesAwarenessContent({super.key});

  void _goToDetail(BuildContext context, NewsArticle article) {
    Navigator.pushNamed(
      context,
      '/diseases-detail',
      arguments: {'article': article},
    );
  }

  @override
  Widget build(BuildContext context) {
    final featured = diseasesArticles.firstWhere((a) => a.id == 'da1');
    final conditionLibrary = diseasesArticles
        .where((a) => ['da2', 'da3', 'da4'].contains(a.id))
        .toList();
    final latestResearch = diseasesArticles
        .where((a) => ['da5', 'da6'].contains(a.id))
        .toList();
    final selfScreening = diseasesArticles
        .where((a) => ['da7', 'da8'].contains(a.id))
        .toList();
    final expertInsight = diseasesArticles.firstWhere((a) => a.id == 'da9');

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Featured Banner
          _FeaturedBanner(
            article: featured,
            onTap: () => _goToDetail(context, featured),
          ),

          const SizedBox(height: 24),

          // Condition Library
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Condition Library',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(height: 12),
          ...conditionLibrary.map(
            (article) => _ConditionCard(
              article: article,
              onTap: () => _goToDetail(context, article),
            ),
          ),

          const SizedBox(height: 24),

          // Latest Research
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Latest Research',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: latestResearch
                  .map(
                    (article) => Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: article.id == 'da5' ? 8 : 0,
                          left: article.id == 'da6' ? 8 : 0,
                        ),
                        child: _ResearchCard(
                          article: article,
                          onTap: () => _goToDetail(context, article),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),

          const SizedBox(height: 24),

          // Self-Screening Guides
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Self-Screening Guides',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: selfScreening.length,
              itemBuilder: (context, index) {
                final article = selfScreening[index];
                return _ScreeningCard(
                  article: article,
                  onTap: () => _goToDetail(context, article),
                );
              },
            ),
          ),

          const SizedBox(height: 24),

          // Expert Insights Video Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _ExpertInsightCard(
              article: expertInsight,
              onTap: () => _goToDetail(context, expertInsight),
            ),
          ),

          const SizedBox(height: 24),

          // Global Health Calendar
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'GLOBAL HEALTH CALENDAR',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Color(0xFF9CA3AF),
                letterSpacing: 1.0,
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 72,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                _CalendarCard(
                  month: 'OCT',
                  day: '10',
                  title: 'Mental Health',
                  subtitle: 'World Day',
                ),
                SizedBox(width: 10),
                _CalendarCard(
                  month: 'NOV',
                  day: '14',
                  title: 'Diabetes Day',
                  subtitle: 'Global Event',
                ),
                SizedBox(width: 10),
                _CalendarCard(
                  month: 'DEC',
                  day: '01',
                  title: 'AIDS Day',
                  subtitle: 'World Awareness',
                ),
                SizedBox(width: 10),
                _CalendarCard(
                  month: 'FEB',
                  day: '04',
                  title: 'Cancer Day',
                  subtitle: 'World Event',
                ),
                SizedBox(width: 10),
                _CalendarCard(
                  month: 'APR',
                  day: '07',
                  title: 'Health Day',
                  subtitle: 'World Event',
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

// ─── Featured Banner ───────────────────────────────────────────────────────────

class _FeaturedBanner extends StatelessWidget {
  const _FeaturedBanner({required this.article, required this.onTap});
  final NewsArticle article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [Color(0xFFE91E8C), Color(0xFFAD1457)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            // Decorative ribbon silhouette
            Positioned(
              right: -10,
              top: -10,
              child: Opacity(
                opacity: 0.15,
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 40),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.25),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                    child: const Text(
                      'Awareness Month',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Breast Cancer\nAwareness',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Early detection saves lives. Learn about self-examination and screening schedules...',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Read Guide',
                      style: TextStyle(
                        color: Color(0xFFE91E8C),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
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

// ─── Condition Library Card ────────────────────────────────────────────────────

class _ConditionCard extends StatelessWidget {
  const _ConditionCard({required this.article, required this.onTap});
  final NewsArticle article;
  final VoidCallback onTap;

  IconData get _icon {
    switch (article.id) {
      case 'da2':
        return Icons.water_drop_outlined;
      case 'da3':
        return Icons.favorite_outlined;
      case 'da4':
        return Icons.eco_outlined;
      default:
        return Icons.article_outlined;
    }
  }

  Color get _iconBgColor {
    switch (article.id) {
      case 'da2':
        return const Color(0xFFDBEAFE);
      case 'da3':
        return const Color(0xFFFEE2E2);
      case 'da4':
        return const Color(0xFFDCFCE7);
      default:
        return const Color(0xFFF3F4F6);
    }
  }

  Color get _iconColor {
    switch (article.id) {
      case 'da2':
        return const Color(0xFF3B82F6);
      case 'da3':
        return const Color(0xFFEF4444);
      case 'da4':
        return const Color(0xFF22C55E);
      default:
        return const Color(0xFF6B7280);
    }
  }

  Color get _categoryColor {
    switch (article.id) {
      case 'da2':
        return const Color(0xFF3B82F6);
      case 'da3':
        return const Color(0xFFEF4444);
      case 'da4':
        return const Color(0xFF22C55E);
      default:
        return const Color(0xFF6B7280);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: _iconBgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(_icon, color: _iconColor, size: 24),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.category,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: _categoryColor,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    article.title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    article.subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.bookmark_border,
              color: Color(0xFFD1D5DB),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Latest Research Card ──────────────────────────────────────────────────────

class _ResearchCard extends StatelessWidget {
  const _ResearchCard({required this.article, required this.onTap});
  final NewsArticle article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  article.imageUrl,
                  height: 110,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    height: 110,
                    color: const Color(0xFFE5E7EB),
                    child: const Icon(
                      Icons.image_outlined,
                      color: Color(0xFF9CA3AF),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.65),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    article.readTime,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            article.title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 2),
          Text(
            article.subtitle,
            style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

// ─── Self-Screening Card ───────────────────────────────────────────────────────

class _ScreeningCard extends StatelessWidget {
  const _ScreeningCard({required this.article, required this.onTap});
  final NewsArticle article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isMole = article.id == 'da7';
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: isMole ? const Color(0xFFFFF7ED) : const Color(0xFFFFF0F6),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isMole ? const Color(0xFFFED7AA) : const Color(0xFFFCE7F3),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isMole ? Icons.person_search_outlined : Icons.female,
              size: 36,
              color: isMole ? const Color(0xFFF97316) : const Color(0xFFEC4899),
            ),
            const SizedBox(height: 10),
            Text(
              article.title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              article.subtitle,
              style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Expert Insight Card ───────────────────────────────────────────────────────

class _ExpertInsightCard extends StatelessWidget {
  const _ExpertInsightCard({required this.article, required this.onTap});
  final NewsArticle article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 180,
          decoration: const BoxDecoration(color: Color(0xFF1E3A5F)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image
              Image.network(
                article.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => const SizedBox(),
              ),
              // Dark overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withValues(alpha: 0.3),
                      Colors.black.withValues(alpha: 0.7),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              // Content
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B82F6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'EXPERT INSIGHTS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Managing Chronic\nPain',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Dr. Emily Chen explains new holistic approaches.',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.4),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Watch Video',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Global Health Calendar Card ──────────────────────────────────────────────

class _CalendarCard extends StatelessWidget {
  const _CalendarCard({
    super.key,
    required this.month,
    required this.day,
    required this.title,
    required this.subtitle,
  });
  final String month;
  final String day;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF3B82F6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  month,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  day,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
