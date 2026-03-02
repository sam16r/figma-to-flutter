import 'package:flutter/material.dart';

class RoboticSurgeryDetail extends StatelessWidget {
  const RoboticSurgeryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: const Color(0xFF0F172A),
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
                    'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=800&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFF0F172A)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.85),
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
                        Row(
                          children: [
                            _FutureTechPill(),
                            SizedBox(width: 8),
                            _MinimallyInvasivePill(),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Robotic Surgery:\nThe Future is Now',
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
                              '5 min read',
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
                  // Label
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Color(0xFF22C55E), width: 3),
                      ),
                    ),
                    child: const Text(
                      'THE TECHNOLOGY',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF22C55E),
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Robotic surgical systems extend the capabilities of surgeons by translating their hand movements into precise micro-movements of miniaturized instruments inside the patient\'s body. The result is dramatically less trauma for the patient.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Precision Factor card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F172A),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Precision Factor',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: _PrecisionStat(
                                value: 'Sub-mm',
                                label: 'Accuracy',
                                icon: Icons.precision_manufacturing_outlined,
                                color: const Color(0xFF22C55E),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _PrecisionStat(
                                value: 'Tremor-\nfree',
                                label: 'Motion Filter',
                                icon: Icons.waving_hand_outlined,
                                color: const Color(0xFF3B82F6),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _PrecisionStat(
                                value: '10×',
                                label: 'Magnification',
                                icon: Icons.zoom_in,
                                color: const Color(0xFF8B5CF6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Comparison table
                  const Text(
                    'Standard vs. Robotic',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Column(
                      children: [
                        // header row
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFFF9FAFB),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(11),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Metric',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF6B7280),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Traditional',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Robotic',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF22C55E),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(height: 1),
                        const _CompareRow(
                          metric: 'Incision size',
                          traditional: '10–20 cm',
                          robotic: '1–2 cm',
                          roboticColor: Color(0xFF22C55E),
                        ),
                        const Divider(height: 1),
                        const _CompareRow(
                          metric: 'Hospital stay',
                          traditional: '5–7 days',
                          robotic: '1–2 days',
                          roboticColor: Color(0xFF22C55E),
                        ),
                        const Divider(height: 1),
                        const _CompareRow(
                          metric: 'Blood loss',
                          traditional: '500+ mL',
                          robotic: '<100 mL',
                          roboticColor: Color(0xFF22C55E),
                        ),
                        const Divider(height: 1),
                        const _CompareRow(
                          metric: 'Recovery',
                          traditional: '6–8 weeks',
                          robotic: '2–3 weeks',
                          roboticColor: Color(0xFF22C55E),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Typical Procedures
                  const Text(
                    'Typical Procedures',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      _ProcedurePill(label: 'Prostatectomy'),
                      _ProcedurePill(label: 'Hysterectomy'),
                      _ProcedurePill(label: 'Cardiac Repair'),
                      _ProcedurePill(label: 'Colorectal'),
                      _ProcedurePill(label: 'Kidney Surgery'),
                      _ProcedurePill(label: 'Spinal Fusion'),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Find a Center card
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F172A),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 14),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Find a Robotic Surgery Center',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Locate certified centers near you',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white54,
                          size: 16,
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

class _FutureTechPill extends StatelessWidget {
  const _FutureTechPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF22C55E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'FUTURE TECH',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _MinimallyInvasivePill extends StatelessWidget {
  const _MinimallyInvasivePill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'Minimally Invasive',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _PrecisionStat extends StatelessWidget {
  const _PrecisionStat({
    required this.value,
    required this.label,
    required this.icon,
    required this.color,
  });
  final String value;
  final String label;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 6),
        Text(
          value,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: color,
            fontSize: 15,
            fontWeight: FontWeight.w800,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white54, fontSize: 11),
        ),
      ],
    );
  }
}

class _CompareRow extends StatelessWidget {
  const _CompareRow({
    required this.metric,
    required this.traditional,
    required this.robotic,
    required this.roboticColor,
  });
  final String metric;
  final String traditional;
  final String robotic;
  final Color roboticColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              metric,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF374151),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                traditional,
                style: const TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                robotic,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: roboticColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProcedurePill extends StatelessWidget {
  const _ProcedurePill({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Color(0xFF374151),
        ),
      ),
    );
  }
}
