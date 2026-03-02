import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'tech_details/ai_cancer_detail.dart';
import 'tech_details/battery_life_detail.dart';
import 'tech_details/ai_precision_detail.dart';
import 'tech_details/data_privacy_detail.dart';
import 'tech_details/research_paper_detail.dart';
import 'tech_details/wearable_sensors_detail.dart';
import 'tech_details/robotic_surgery_tech_detail.dart';
import 'tech_details/telehealth_trends_detail.dart';
import 'tech_details/bioprinting_detail.dart';
import 'tech_details/tele_surgery_5g_detail.dart';

class MedicalTechnologyDetailPage extends StatelessWidget {
  const MedicalTechnologyDetailPage({super.key});

  static const routeName = '/medtech-detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final article = args?['article'] as NewsArticle?;

    switch (article?.id) {
      case 'tech1':
        return const AiCancerDetail();
      case 'tech2':
        return const BatteryLifeDetail();
      case 'tech3':
        return const AiPrecisionDetail();
      case 'tech4':
        return const DataPrivacyDetail();
      case 'tech5':
        return const ResearchPaperDetail();
      case 'tech6':
        return const WearableSensorsDetail();
      case 'tech7':
        return const RoboticSurgeryTechDetail();
      case 'tech8':
        return const TelehealthTrendsDetail();
      case 'tech9':
        return const BioprintingDetail();
      case 'tech10':
        return const TeleSurgery5gDetail();
      default:
        return const AiCancerDetail();
    }
  }
}
