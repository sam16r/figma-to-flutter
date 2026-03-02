import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'mental_wellness_details/mindfulness_detail.dart';
import 'mental_wellness_details/burnout_detail.dart';

class MentalWellnessDetailPage extends StatelessWidget {
  const MentalWellnessDetailPage({super.key});

  static const routeName = '/mental-wellness-detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final article = args?['article'] as NewsArticle?;

    Widget content;
    switch (article?.id) {
      case 'mw1':
        content = const MindfulnessDetail();
        break;
      case 'mw2':
        content = const BurnoutDetail();
        break;
      default:
        content = const Center(child: Text('Article not found'));
    }

    return content;
  }
}
