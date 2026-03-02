import 'package:flutter/material.dart';

class WearableSensorsDetail extends StatelessWidget {
  const WearableSensorsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            pinned: true,
            backgroundColor: const Color(0xFF1E293B),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.black26,
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
                  backgroundColor: Colors.black26,
                  child: Icon(Icons.share, color: Colors.white, size: 20),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFF1E293B)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.75),
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
                            _FitnessPill(),
                            SizedBox(width: 8),
                            Text(
                              '5 min read',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Wearable Sensors:\nThe Next Frontier',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            height: 1.2,
                          ),
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
                  // Author row
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xFF0D9488),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Dr. Aris Thorne',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF111827),
                            ),
                          ),
                          Text(
                            'Bio-Electronics Specialist',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Beyond the Smartwatch
                  const _BulletSection(title: 'Beyond the Smartwatch'),
                  const SizedBox(height: 10),
                  const Text(
                    'The era of bulky wrist-worn devices is rapidly evolving into something far more intimate. We are witnessing a transition to "smart patches"—ultra-thin, flexible electronics that adhere directly to the epidermis. These devices offer continuous multi-vital monitoring without the friction of daily removal for charging.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Sensor Placement Ecosystem
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'SENSOR PLACEMENT ECOSYSTEM',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF9CA3AF),
                            letterSpacing: 0.6,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _SensorDiagram(),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Clinical Accuracy
                  const _BulletSection(title: 'Clinical Accuracy'),
                  const SizedBox(height: 10),
                  const Text(
                    'Historically, consumer wearables acted as general wellness indicators. Today, medical-grade sensors are closing the gap with hospital equipment.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Blockquote
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFBFDBFE)),
                    ),
                    child: const Text(
                      '"We are seeing a correlation coefficient of 0.98 between these new patches and stationary ICU monitors."',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF1D4ED8),
                        fontStyle: FontStyle.italic,
                        height: 1.6,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // The Ecosystem
                  const _BulletSection(title: 'The Ecosystem'),
                  const SizedBox(height: 10),
                  const Text(
                    'The true power lies in integration. These sensors don\'t just collect data; they feed it directly into the CareTag medical ID in real-time. This creates a living bio-profile that can alert emergency responders to anomalies before a patient even realizes something is wrong.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // CTA button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/caretag-pro'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3B82F6),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View Compatible Devices',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Center(
                    child: Text(
                      'Compatible with CareTag Pro & Select Partners',
                      style: TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
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

class _FitnessPill extends StatelessWidget {
  const _FitnessPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFF3B82F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'FITNESS',
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _BulletSection extends StatelessWidget {
  const _BulletSection({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Color(0xFF3B82F6),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
      ],
    );
  }
}

class _SensorDiagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        children: [
          // Body silhouette
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Simple body outline
                CustomPaint(
                  painter: _BodySilhouettePainter(),
                  size: const Size(100, 160),
                ),
                // Placement dots
                Positioned(
                  top: 10,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: _SensorDot(color: const Color(0xFF3B82F6)),
                  ),
                ),
                Positioned(
                  top: 55,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: _SensorDot(color: const Color(0xFF3B82F6)),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  child: _SensorDot(color: const Color(0xFF3B82F6)),
                ),
              ],
            ),
          ),
          // Labels
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SensorLabel(label: 'Temple', subLabel: 'Neural Signals'),
              _SensorLabel(label: 'Chest', subLabel: 'Cardiac + Resp.'),
              _SensorLabel(label: 'Wrist', subLabel: 'Pulse Ox'),
            ],
          ),
        ],
      ),
    );
  }
}

class _SensorDot extends StatelessWidget {
  const _SensorDot({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.4),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }
}

class _SensorLabel extends StatelessWidget {
  const _SensorLabel({required this.label, required this.subLabel});
  final String label;
  final String subLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        Text(
          subLabel,
          style: const TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
        ),
      ],
    );
  }
}

class _BodySilhouettePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFE5E7EB)
      ..style = PaintingStyle.fill;

    final cx = size.width / 2;

    // Head
    canvas.drawCircle(Offset(cx, 16), 14, paint);
    // Body
    final bodyPath = Path()
      ..moveTo(cx - 18, 32)
      ..lineTo(cx - 22, 80)
      ..lineTo(cx - 14, 80)
      ..lineTo(cx - 10, 130)
      ..lineTo(cx - 4, 130)
      ..lineTo(cx, 80)
      ..lineTo(cx + 4, 130)
      ..lineTo(cx + 10, 130)
      ..lineTo(cx + 14, 80)
      ..lineTo(cx + 22, 80)
      ..lineTo(cx + 18, 32)
      ..close();
    canvas.drawPath(bodyPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
