import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'medicines_details/heart_valve_detail.dart';
import 'medicines_details/oral_insulin_detail.dart';
import 'medicines_details/physical_therapy_detail.dart';
import 'medicines_details/antibiotic_safety_detail.dart';
import 'medicines_details/robotic_surgery_detail.dart';
import 'medicines_details/gene_therapy_detail.dart';
import 'medicines_details/smart_implants_detail.dart';

class MedicinesTreatmentsDetailPage extends StatelessWidget {
  const MedicinesTreatmentsDetailPage({super.key});

  static const routeName = '/medicines-detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final article = args?['article'] as NewsArticle?;

    Widget content;
    switch (article?.id) {
      case 'mt1':
        content = const HeartValveDetail();
        break;
      case 'mt2':
        content = const OralInsulinDetail();
        break;
      case 'mt3':
        content = const PhysicalTherapyDetail();
        break;
      case 'mt4':
        content = const AntibioticSafetyDetail();
        break;
      case 'mt5':
        content = const RoboticSurgeryDetail();
        break;
      case 'mt6':
        content = const GeneTherapyDetail();
        break;
      case 'mt7':
        content = const SmartImplantsDetail();
        break;
      default:
        content = const Center(child: Text('Article not found'));
    }

    return content;
  }
}
