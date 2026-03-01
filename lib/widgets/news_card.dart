import 'package:flutter/material.dart';
import '../models/news_article.dart';

class NewsCard extends StatelessWidget {
  final NewsArticle article;
  final VoidCallback onTap;

  const NewsCard({
    super.key,
    required this.article,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Generate a placeholder color based on the category for the right image
    Color placeholderColor;
    if (article.category == 'NUTRITION') {
      placeholderColor = const Color(0xFFE5F1EB); // Light green
    } else if (article.category == 'MENTAL HEALTH') {
      placeholderColor = const Color(0xFFFFF7E6); // Light orange
    } else if (article.category == 'FITNESS') {
      placeholderColor = const Color(0xFFE6F3EE); // Light mint
    } else {
      placeholderColor = const Color(0xFFF1F5F9); // Light gray
    }

    // Determine category color
    Color categoryColor;
    if (article.category == 'NUTRITION') {
      categoryColor = const Color(0xFF10B981); // Green
    } else if (article.category == 'MENTAL HEALTH') {
      categoryColor = const Color(0xFF3B82F6); // Blue
    } else if (article.category == 'FITNESS') {
      categoryColor = const Color(0xFFF97316); // Orange
    } else {
      categoryColor = const Color(0xFF8B5CF6); // Purple
    }

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFF1F5F9), // Light separator line
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.category,
                    style: TextStyle(
                      color: categoryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    article.title,
                    style: const TextStyle(
                      color: Color(0xFF111827),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        article.author,
                        style: const TextStyle(
                          color: Color(0xFF6B7280),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.circle, color: Color(0xFFD1D5DB), size: 3),
                      const SizedBox(width: 8),
                      Text(
                        article.timeAgo,
                        style: const TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            const SizedBox(width: 16),
            
            // Right image thumbnail
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: placeholderColor,
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAlias,
              // Replace with actual asset image once available
              // child: Image.asset(article.imageUrl, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
