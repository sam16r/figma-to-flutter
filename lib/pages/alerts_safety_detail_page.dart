import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'alerts_details/seasonal_flu_detail.dart';
import 'alerts_details/product_recall_detail.dart';
import 'alerts_details/food_safety_detail.dart';
import 'alerts_details/vaccination_protocol_detail.dart';
import 'alerts_details/heatstroke_detail.dart';
import 'alerts_details/home_safety_detail.dart';

class AlertsSafetyDetailPage extends StatelessWidget {
  const AlertsSafetyDetailPage({super.key});

  static const routeName = '/alerts-detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final article = args?['article'] as NewsArticle?;

    Widget content;
    switch (article?.id) {
      case 'as1':
        content = const SeasonalFluDetail();
        break;
      case 'as2':
        content = const ProductRecallDetail();
        break;
      case 'as3':
        content = const FoodSafetyDetail();
        break;
      case 'as4':
        content = const VaccinationProtocolDetail();
        break;
      case 'as5':
        content = const HeatstrokeDetail();
        break;
      case 'as6':
        content = const HomeSafetyDetail();
        break;
      default:
        content = const Center(child: Text('Alert not found'));
    }

    return content;
  }
}
