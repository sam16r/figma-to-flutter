import 'package:flutter/material.dart';
import '../models/news_article.dart';
import 'diseases_details/breast_cancer_detail.dart';
import 'diseases_details/diabetes_detail.dart';
import 'diseases_details/heart_health_detail.dart';
import 'diseases_details/allergy_prep_detail.dart';
import 'diseases_details/alzheimers_study_detail.dart';
import 'diseases_details/gene_therapy_detail.dart';
import 'diseases_details/skin_mole_check_detail.dart';
import 'diseases_details/breast_self_exam_detail.dart';
import 'diseases_details/chronic_pain_detail.dart';

class DiseasesAwarenessDetailPage extends StatelessWidget {
  const DiseasesAwarenessDetailPage({super.key});

  static const routeName = '/diseases-detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final article = args?['article'] as NewsArticle?;

    Widget content;
    switch (article?.id) {
      case 'da1':
        content = const BreastCancerDetail();
        break;
      case 'da2':
        content = const DiabetesDetail();
        break;
      case 'da3':
        content = const HeartHealthDetail();
        break;
      case 'da4':
        content = const AllergyPrepDetail();
        break;
      case 'da5':
        content = const AlzheimersStudyDetail();
        break;
      case 'da6':
        content = const GeneTherapyDetail();
        break;
      case 'da7':
        content = const SkinMoleCheckDetail();
        break;
      case 'da8':
        content = const BreastSelfExamDetail();
        break;
      case 'da9':
        content = const ChronicPainDetail();
        break;
      default:
        content = const Center(child: Text('Article not found'));
    }

    return content;
  }
}
