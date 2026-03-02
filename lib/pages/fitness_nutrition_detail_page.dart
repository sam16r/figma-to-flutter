import 'package:flutter/material.dart';
import 'fit_details/home_cardio_detail.dart';
import 'fit_details/office_posture_detail.dart';
import 'fit_details/fiber_facts_detail.dart';
import 'fit_details/vegan_protein_detail.dart';
import 'fit_details/quinoa_salad_recipe.dart';
import 'fit_details/green_smoothie_recipe.dart';
import 'fit_details/hiit_cardio_detail.dart';
import 'fit_details/muscle_budget_detail.dart';
import 'fit_details/gut_brain_detail.dart';
import 'fit_details/intermittent_fasting_detail.dart';

class FitnessNutritionDetailPage extends StatelessWidget {
  const FitnessNutritionDetailPage({super.key});

  static const routeName = '/fit-detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final articleId = args?['articleId'] as String? ?? '';

    switch (articleId) {
      case 'fit1':
        return const HomeCardioDetail();
      case 'fit2':
        return const OfficePostureDetail();
      case 'fit3':
        return const FiberFactsDetail();
      case 'fit4':
        return const VeganProteinDetail();
      case 'fit5':
        return const QuinoaSaladRecipe();
      case 'fit6':
        return const GreenSmoothieRecipe();
      case 'fit7':
        return const HiitCardioDetail();
      case 'fit8':
        return const MuscleBudgetDetail();
      case 'fit9':
        return const GutBrainDetail();
      case 'fit10':
        return const IntermittentFastingDetail();
      default:
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(onPressed: () => Navigator.pop(context)),
          ),
          body: const Center(child: Text('Article not found')),
        );
    }
  }
}
