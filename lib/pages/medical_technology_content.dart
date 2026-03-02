import 'package:flutter/material.dart';
import '../models/news_article.dart';

class MedicalTechnologyContent extends StatelessWidget {
  const MedicalTechnologyContent({super.key});

  @override
  Widget build(BuildContext context) {
    final tech1 = techArticles.firstWhere((a) => a.id == 'tech1');
    final tech2 = techArticles.firstWhere((a) => a.id == 'tech2');
    final tech3 = techArticles.firstWhere((a) => a.id == 'tech3');
    final tech4 = techArticles.firstWhere((a) => a.id == 'tech4');
    final tech5 = techArticles.firstWhere((a) => a.id == 'tech5');
    final tech6 = techArticles.firstWhere((a) => a.id == 'tech6');
    final tech7 = techArticles.firstWhere((a) => a.id == 'tech7');
    final tech8 = techArticles.firstWhere((a) => a.id == 'tech8');
    final tech9 = techArticles.firstWhere((a) => a.id == 'tech9');
    final tech10 = techArticles.firstWhere((a) => a.id == 'tech10');

    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Featured article
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/medtech-detail',
              arguments: {'article': tech1},
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    Image.network(
                      tech1.imageUrl,
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
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 12,
                      left: 12,
                      child: _TrendingNowPill(),
                    ),
                    Positioned(
                      bottom: 14,
                      left: 14,
                      right: 14,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tech1.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            tech1.subtitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              height: 1.4,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Colors.white54,
                                size: 12,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                tech1.timeAgo,
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '• ${tech1.author}',
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // 2. Tech Bites — horizontal scroll
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              'TECH BITES',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Color(0xFF6B7280),
                letterSpacing: 0.8,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _TechBiteCard(
                  icon: Icons.battery_charging_full_outlined,
                  iconColor: const Color(0xFF3B82F6),
                  iconBg: const Color(0xFFEFF6FF),
                  label: 'WEARABLES',
                  title: 'Battery Life',
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/medtech-detail',
                    arguments: {'article': tech2},
                  ),
                ),
                const SizedBox(width: 10),
                _TechBiteCard(
                  icon: Icons.analytics_outlined,
                  iconColor: const Color(0xFF22C55E),
                  iconBg: const Color(0xFFF0FDF4),
                  label: '95.2%',
                  title: 'AI Precision',
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/medtech-detail',
                    arguments: {'article': tech3},
                  ),
                ),
                const SizedBox(width: 10),
                _TechBiteCard(
                  icon: Icons.lock_outlined,
                  iconColor: const Color(0xFF8B5CF6),
                  iconBg: const Color(0xFFF5F3FF),
                  label: 'AES-256',
                  title: 'Data Privacy',
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/medtech-detail',
                    arguments: {'article': tech4},
                  ),
                ),
              ],
            ),
          ),

          // 3. Device Spotlight
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              'Device Spotlight',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _DeviceSpotlightCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=400&auto=format&fit=crop',
                  badge: 'NEW RELEASE',
                  badgeColor: const Color(0xFF0D9488),
                  title: 'CareTag Pro\nSmart Ring',
                  subtitle:
                      'Advanced biometrics in a\nsleek titanium form factor.',
                  onTap: () => Navigator.pushNamed(context, '/caretag-pro'),
                ),
                const SizedBox(width: 12),
                _DeviceSpotlightCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=400&auto=format&fit=crop',
                  badge: 'TRENDING',
                  badgeColor: const Color(0xFF3B82F6),
                  title: 'Continuous\nMonitor',
                  subtitle:
                      'Real-time glucose tracking\nfor diabetic management.',
                  onTap: () => Navigator.pushNamed(context, '/cgm-device'),
                ),
              ],
            ),
          ),

          // 4. Expert Voice card
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/medtech-detail',
              arguments: {'article': tech5},
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Text(
                      '99',
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w900,
                        color: Colors.white.withValues(alpha: 0.07),
                        height: 1,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFF3B82F6,
                          ).withValues(alpha: 0.25),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'EXPERT VOICE',
                          style: TextStyle(
                            color: Color(0xFF93C5FD),
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Color(0xFF6366F1),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Sarah Jenning',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Lead AI Researcher, MedTech Institute',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        '"Early detection isn\'t just about saving lives; it\'s about preserving quality of life through less invasive interventions."',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Read Paper: AI in Early Detection →',
                        style: TextStyle(
                          color: Color(0xFF60A5FA),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // 5. Latest Innovations
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Latest Innovations',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF3B82F6),
                  ),
                ),
              ],
            ),
          ),

          _InnovationRow(
            article: tech6,
            categoryColor: const Color(0xFF3B82F6),
            onTap: () => Navigator.pushNamed(
              context,
              '/medtech-detail',
              arguments: {'article': tech6},
            ),
          ),
          _InnovationRow(
            article: tech7,
            categoryColor: const Color(0xFF22C55E),
            onTap: () => Navigator.pushNamed(
              context,
              '/medtech-detail',
              arguments: {'article': tech7},
            ),
          ),
          _InnovationRow(
            article: tech8,
            categoryColor: const Color(0xFF0D9488),
            onTap: () => Navigator.pushNamed(
              context,
              '/medtech-detail',
              arguments: {'article': tech8},
            ),
          ),
          _InnovationRow(
            article: tech9,
            categoryColor: const Color(0xFF8B5CF6),
            onTap: () => Navigator.pushNamed(
              context,
              '/medtech-detail',
              arguments: {'article': tech9},
            ),
          ),
          _InnovationRow(
            article: tech10,
            categoryColor: const Color(0xFFDB2777),
            onTap: () => Navigator.pushNamed(
              context,
              '/medtech-detail',
              arguments: {'article': tech10},
            ),
          ),

          // 6. Beta Lab card
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/beta-lab'),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.science_outlined,
                        color: Color(0xFF60A5FA),
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Beta Lab',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Help us shape the future of CareTag. Apply to test new AI features before anyone else.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B82F6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Apply Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 7. Load More
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'Load More News',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF6B7280),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TrendingNowPill extends StatelessWidget {
  const _TrendingNowPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF3B82F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.trending_up, color: Colors.white, size: 11),
          SizedBox(width: 4),
          Text(
            'TRENDING NOW',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _TechBiteCard extends StatelessWidget {
  const _TechBiteCard({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.label,
    required this.title,
    required this.onTap,
  });
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String label;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: iconColor, size: 16),
            ),
            const SizedBox(height: 6),
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
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeviceSpotlightCard extends StatelessWidget {
  const _DeviceSpotlightCard({
    required this.imageUrl,
    required this.badge,
    required this.badgeColor,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String imageUrl;
  final String badge;
  final Color badgeColor;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 180,
                height: 180,
                color: const Color(0xFF1E293B),
              ),
            ),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.75),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  color: badgeColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  badge,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      height: 1.3,
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

class _InnovationRow extends StatelessWidget {
  const _InnovationRow({
    required this.article,
    required this.categoryColor,
    required this.onTap,
  });
  final NewsArticle article;
  final Color categoryColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                article.imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 70,
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
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: categoryColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      article.category,
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: categoryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    article.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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
            const SizedBox(width: 8),
            const Icon(
              Icons.bookmark_border,
              color: Color(0xFF9CA3AF),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
