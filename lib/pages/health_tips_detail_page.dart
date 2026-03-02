import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'health_tips_details/high_protein_meal_plan_detail.dart';
import 'health_tips_details/home_cardio_detail.dart';
import 'health_tips_details/superfoods_immunity_detail.dart';
import 'health_tips_details/hydration_detail.dart';
import 'health_tips_details/hiit_detail.dart';
import 'health_tips_details/sugar_detox_detail.dart';

class HealthTipsDetailPage extends StatelessWidget {
  static const routeName = '/health-tips-detail';

  const HealthTipsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final article = args?['article'] as NewsArticle?;

    Widget content;
    switch (article?.id) {
      case 'ht1':
        content = const HighProteinMealPlanDetail();
        break;
      case 'ht2':
        content = const HomeCardioDetail();
        break;
      case 'ht3':
        content = const SuperfoodsImmunityDetail();
        break;
      case 'ht4':
        content = const HydrationDetail();
        break;
      case 'ht5':
        content = const HiitDetail();
        break;
      case 'ht6':
        content = const SugarDetoxDetail();
        break;
      default:
        content = const Center(child: Text('Article not found'));
    }

    return Scaffold(backgroundColor: Colors.white, body: content);
  }
}
