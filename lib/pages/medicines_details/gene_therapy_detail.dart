import 'package:flutter/material.dart';

class GeneTherapyDetail extends StatelessWidget {
  const GeneTherapyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: const Color(0xFF1E293B),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: Icon(Icons.share, color: Colors.white, size: 20),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1532187863486-abf9dbad1b69?w=800&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFF1E293B)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _BreakthroughSciencePill(),
                        SizedBox(height: 8),
                        Text(
                          'Gene Therapy:\nRewriting the Code of Life',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white70,
                              size: 13,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '7 min read',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.verified_outlined,
                              color: Colors.white70,
                              size: 13,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Medically Reviewed',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Correcting the Blueprint section
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Color(0xFF8B5CF6), width: 3),
                      ),
                    ),
                    child: const Text(
                      'CORRECTING THE BLUEPRINT',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF8B5CF6),
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF374151),
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(
                          text: 'Gene therapy',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              ' works by introducing, altering, or replacing genetic material within a person\'s cells. Using viral vectors or CRISPR-Cas9, scientists can now target the root cause of hereditary diseases rather than just treating symptoms.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Unlike traditional drugs that require ongoing doses, a single successful gene therapy treatment can provide permanent correction — or even a complete cure — for conditions that were once considered untreatable.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Success Stories
                  const Text(
                    'Success Stories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _SuccessCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1576319155264-99536e0be1ee?w=400&auto=format&fit=crop',
                          condition: 'Sickle Cell Disease',
                          outcome:
                              'FDA-approved therapy achieves functional cure in 89% of patients.',
                          color: const Color(0xFF8B5CF6),
                        ),
                        const SizedBox(width: 12),
                        _SuccessCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1530026405186-ed1f139313f3?w=400&auto=format&fit=crop',
                          condition: 'Inherited Blindness',
                          outcome:
                              'Luxturna restores functional vision in patients with RPE65 mutations.',
                          color: const Color(0xFF3B82F6),
                        ),
                        const SizedBox(width: 12),
                        _SuccessCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1559757148-5c350d0d3c56?w=400&auto=format&fit=crop',
                          condition: 'Hemophilia A',
                          outcome:
                              'Single infusion reduces bleeding episodes by over 90% for years.',
                          color: const Color(0xFF0D9488),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Safety & Ethics card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F3FF),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFDDD6FE)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xFF8B5CF6),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.shield_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Safety & Ethics',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF1E1B4B),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const _EthicsPoint(
                          text:
                              'Somatic gene therapy (modifying non-reproductive cells) is widely accepted. Germline editing affecting future generations remains controversial.',
                        ),
                        const SizedBox(height: 8),
                        const _EthicsPoint(
                          text:
                              'Off-target edits remain a key safety challenge. Rigorous long-term follow-up studies are required for all approved therapies.',
                        ),
                        const SizedBox(height: 8),
                        const _EthicsPoint(
                          text:
                              'High treatment costs (currently \$1–3M per patient) create equity concerns that the field is actively working to address.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Stay on the Cutting Edge — dark card with email field
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Stay on the Cutting Edge',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Get the latest breakthroughs in gene therapy directly to your inbox.',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 13,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Colors.white38,
                                size: 18,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Enter your email',
                                style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0D9488),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'Subscribe to Research Updates',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BreakthroughSciencePill extends StatelessWidget {
  const _BreakthroughSciencePill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF8B5CF6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.auto_awesome, color: Colors.white, size: 12),
          SizedBox(width: 4),
          Text(
            'BREAKTHROUGH SCIENCE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _SuccessCard extends StatelessWidget {
  const _SuccessCard({
    required this.imageUrl,
    required this.condition,
    required this.outcome,
    required this.color,
  });
  final String imageUrl;
  final String condition;
  final String outcome;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: 200,
            height: 160,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              width: 200,
              height: 160,
              color: const Color(0xFF1E293B),
            ),
          ),
          Container(
            width: 200,
            height: 160,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                condition,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Text(
              outcome,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EthicsPoint extends StatelessWidget {
  const _EthicsPoint({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Icon(Icons.circle, size: 6, color: Color(0xFF8B5CF6)),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF374151),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
