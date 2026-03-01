import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'article_details/sleep_quality_detail.dart';
import 'article_details/superfoods_detail.dart';
import 'article_details/mindfulness_detail.dart';
import 'article_details/exercises_detail.dart';
import 'article_details/smart_hydrasense_detail.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  static const routeName = '/news-detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    final article =
        args?['article'] as NewsArticle? ??
        const NewsArticle(
          id: '0',
          title: 'Error Loading Article',
          author: 'Unknown',
          category: 'Error',
          timeAgo: 'Just now',
          readTime: '0 min',
          imageUrl: '',
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Hero App Bar with Image
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: Color(0xFF111827),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Color(0xFF111827),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Hero Image
                  article.imageUrl.isNotEmpty
                      ? Image.network(
                          article.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) =>
                              Container(color: const Color(0xFFE5E7EB)),
                        )
                      : Container(color: const Color(0xFFE5E7EB)),

                  // Gradient overlay
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.25),
                          Colors.transparent,
                          Colors.black.withOpacity(0.25),
                        ],
                      ),
                    ),
                  ),

                  // Hero tag overlay (for articles 2, 3, 4)
                  if (_heroTag(article) != null)
                    Positioned(
                      bottom: 40,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: _heroTagColor(article),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          _heroTag(article)!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),

          // Article Content
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: const Offset(0, -24),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(24, 28, 24, 40),
                child: _buildContent(article),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? _heroTag(NewsArticle article) {
    switch (article.id) {
      case '2':
        return 'NUTRITION';
      case '3':
        return 'MENTAL HEALTH · 5 min read';
      case '4':
        return 'PHYSICAL THERAPY · 15 min';
      default:
        return null;
    }
  }

  Color _heroTagColor(NewsArticle article) {
    switch (article.id) {
      case '2':
        return const Color(0xFF10B981); // green
      case '3':
        return const Color(0xFF3B82F6); // blue
      case '4':
        return const Color(0xFF10B981); // green
      default:
        return const Color(0xFF1E63F4);
    }
  }

  Widget _buildContent(NewsArticle article) {
    switch (article.id) {
      case '1':
        return const SleepQualityDetail();
      case '2':
        return const SuperfoodsDetail();
      case '3':
        return const MindfulnessDetail();
      case '4':
        return const ExercisesDetail();
      case '5':
        return const SmartHydrasenseDetail();
      default:
        return Text(
          article.content.isNotEmpty ? article.content : 'Content coming soon.',
          style: const TextStyle(
            fontSize: 16,
            height: 1.6,
            color: Color(0xFF4B5563),
          ),
        );
    }
  }
}
