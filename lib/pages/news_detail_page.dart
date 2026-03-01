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
    // Extract the arguments from the current ModalRoute
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    
    // Default or empty article if arguments are missing
    final article = args?['article'] as NewsArticle? ?? 
      NewsArticle(
        id: '0', 
        title: 'Error Loading Article', 
        author: 'Unknown', 
        category: 'Error', 
        timeAgo: 'Just now', 
        readTime: '0 min', 
        imageUrl: 'https://via.placeholder.com/400x300', 
        isFeatured: false, 
        content: 'Could not load article content.'
      );

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Custom App Bar with Image
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
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
                    icon: const Icon(Icons.bookmark_border, color: Color(0xFF111827)),
                    onPressed: () {
                      // Save article function
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, top: 8.0, bottom: 8.0),
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
                    icon: const Icon(Icons.share_outlined, color: Color(0xFF111827)),
                    onPressed: () {
                      // Share function
                    },
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    article.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  // Gradient overlay for better text/icon visibility if needed
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Article Content Body
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: const Offset(0, -24), // Pull up over the image
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Category tag
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF6FF), // Light blue
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          article.category.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                            color: Color(0xFF3B82F6), // Blue
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // Title
                      Text(
                        article.title,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF111827),
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // Author and Meta Info
                      Row(
                        children: [
                          // Author Avatar
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF3E8FF), // Light purple
                              shape: BoxShape.circle,
                              border: Border.all(color: const Color(0xFFE9D5FF), width: 2),
                            ),
                            child: const Center(
                              child: Text(
                                'CT',
                                style: TextStyle(
                                  color: Color(0xFF9333EA),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          // Author Details
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                article.author,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF111827),
                                ),
                              ),
                              Text(
                                '${article.timeAgo} • ${article.readTime}',
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Divider(color: Color(0xFFF3F4F6)),
                      const SizedBox(height: 24),
                      
                      // Specific Article Content
                      _buildArticleContent(article),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArticleContent(NewsArticle article) {
    if (article.title.contains('Sleep Quality')) {
      return const SleepQualityDetail();
    } else if (article.title.contains('Superfoods')) {
      return const SuperfoodsDetail();
    } else if (article.title.contains('Find Your Center')) {
      return const MindfulnessDetail();
    } else if (article.title.contains('5 Simple Exercises')) {
      return const ExercisesDetail();
    } else if (article.title.contains('Smart HydraSense')) {
      return const SmartHydrasenseDetail();
    } else {
      // Fallback
      return Text(
        article.content,
        style: const TextStyle(
          fontSize: 16,
          height: 1.6,
          color: Color(0xFF4B5563),
        ),
      );
    }
  }
}
