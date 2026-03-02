import 'package:flutter/material.dart';

class PharmacistQaPage extends StatelessWidget {
  const PharmacistQaPage({super.key});

  static const routeName = '/pharmacist-qa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Column(
        children: [
          // Simple top bar
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 8,
              left: 16,
              right: 16,
              bottom: 12,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF374151),
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Ask a Pharmacist',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.share_outlined,
                  color: Color(0xFF6B7280),
                  size: 20,
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Question title
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFF6FF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'Medication Safety',
                                style: TextStyle(
                                  color: Color(0xFF3B82F6),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Asked by Sarah K.',
                              style: TextStyle(
                                color: Color(0xFF9CA3AF),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Why is hydration important when taking new medication?',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF111827),
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Author card
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xFF3B82F6),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Amara Gupta, PharmD',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF111827),
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Clinical Pharmacist · 12 years experience',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0FDF4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.verified,
                                color: Color(0xFF22C55E),
                                size: 12,
                              ),
                              SizedBox(width: 3),
                              Text(
                                'Verified Specialist',
                                style: TextStyle(
                                  color: Color(0xFF22C55E),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Answer sections
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _AnswerSection(
                          number: 1,
                          title: 'Absorption & Distribution',
                          body:
                              'Water is the medium through which most medications dissolve and are absorbed into the bloodstream. Dehydration slows gastric emptying, reducing how quickly and effectively your medication reaches therapeutic blood levels. For many drugs, this can mean delayed or diminished effect.',
                        ),
                        SizedBox(height: 16),
                        _AnswerSection(
                          number: 2,
                          title: 'Kidney Function & Elimination',
                          body:
                              'Your kidneys are the primary route for eliminating most medications and their metabolites. Adequate hydration ensures your kidneys can filter and excrete these compounds efficiently. Poor hydration can cause drug accumulation, increasing the risk of toxicity — especially with NSAIDs, lithium, and aminoglycosides.',
                        ),
                        SizedBox(height: 16),
                        _AnswerSection(
                          number: 3,
                          title: 'Protecting Your Digestive System',
                          body:
                              'Some medications, like certain antibiotics and NSAIDs, can irritate the esophagus or stomach lining. Taking them with a full glass of water (200–250 mL) helps the tablet move quickly into the stomach and dilutes concentration at contact points, significantly reducing the risk of ulcers and irritation.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Top 3 Pro-Tips card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFBFDBFE)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.lightbulb_outline,
                              color: Color(0xFF3B82F6),
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Top 3 Pro-Tips',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF1D4ED8),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        _ProTip(
                          number: '1',
                          text:
                              'Always take oral medications with at least 200 mL (about 8 oz) of water unless specified otherwise.',
                        ),
                        const SizedBox(height: 8),
                        _ProTip(
                          number: '2',
                          text:
                              'Aim for 2–3 liters of water per day while on a new medication course, unless you have fluid restrictions.',
                        ),
                        const SizedBox(height: 8),
                        _ProTip(
                          number: '3',
                          text:
                              'Avoid grapefruit juice — it inhibits enzymes that metabolize many common drugs, potentially causing dangerous drug accumulation.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Was this helpful row
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Was this answer helpful?',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF374151),
                            ),
                          ),
                        ),
                        _HelpfulButton(icon: '👍', count: '245'),
                        const SizedBox(width: 10),
                        _HelpfulButton(icon: '👎', count: '12'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AnswerSection extends StatelessWidget {
  const _AnswerSection({
    required this.number,
    required this.title,
    required this.body,
  });
  final int number;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                color: Color(0xFF3B82F6),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '$number',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 34),
          child: Text(
            body,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF374151),
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }
}

class _ProTip extends StatelessWidget {
  const _ProTip({required this.number, required this.text});
  final String number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
            color: Color(0xFF3B82F6),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF1E40AF),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _HelpfulButton extends StatelessWidget {
  const _HelpfulButton({required this.icon, required this.count});
  final String icon;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 14)),
          const SizedBox(width: 4),
          Text(
            count,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF374151),
            ),
          ),
        ],
      ),
    );
  }
}
