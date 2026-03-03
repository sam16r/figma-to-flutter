import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CareTagScanSuccessPage extends StatefulWidget {
  const CareTagScanSuccessPage({super.key});

  @override
  State<CareTagScanSuccessPage> createState() => _CareTagScanSuccessPageState();
}

class _CareTagScanSuccessPageState extends State<CareTagScanSuccessPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _cardController;
  late Animation<double> _cardSlide;
  late Animation<double> _cardFade;

  @override
  void initState() {
    super.initState();

    _cardController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _cardSlide = Tween<double>(begin: 40, end: 0).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOutCubic),
    );
    _cardFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOut),
    );

    // Delay card until lottie has had a moment to start
    Future.delayed(const Duration(milliseconds: 600), () {
      if (mounted) _cardController.forward();
    });
  }

  @override
  void dispose() {
    _cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // Lottie animation + title
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Lottie.asset(
                        'assets/lottie/success.json',
                        width: 240,
                        height: 220,
                        repeat: false,
                        fit: BoxFit.contain,
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        'Scan Successful',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF111827),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Your medical ID has been securely\ntransmitted.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6B7280),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Transfer details card — slides up after lottie starts
              AnimatedBuilder(
                animation: _cardController,
                builder: (context, child) => Transform.translate(
                  offset: Offset(0, _cardSlide.value),
                  child: Opacity(opacity: _cardFade.value, child: child),
                ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.07),
                        blurRadius: 16,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    border: Border.all(color: const Color(0xFFF3F4F6)),
                  ),
                  child: Column(
                    children: [
                      // VERIFIED TRANSFER badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDCFCE7),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: const Color(0xFF22C55E)
                                .withValues(alpha: 0.3),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Color(0xFF16A34A),
                              size: 14,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'VERIFIED TRANSFER',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF16A34A),
                                letterSpacing: 0.6,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 14),
                      const Divider(height: 1, color: Color(0xFFF3F4F6)),
                      const SizedBox(height: 14),

                      _TransferRow(
                        icon: Icons.business_outlined,
                        iconColor: const Color(0xFF3B82F6),
                        iconBg: const Color(0xFFEFF6FF),
                        label: 'DATA SHARED WITH',
                        value: 'City General Hospital',
                      ),
                      const SizedBox(height: 14),
                      _TransferRow(
                        icon: Icons.timer_outlined,
                        iconColor: const Color(0xFFF97316),
                        iconBg: const Color(0xFFFFF7ED),
                        label: 'ACCESS DURATION',
                        value: '24 Hours',
                      ),
                      const SizedBox(height: 14),
                      _TransferRow(
                        icon: Icons.badge_outlined,
                        iconColor: const Color(0xFF8B5CF6),
                        iconBg: const Color(0xFFF5F3FF),
                        label: 'RECORDS INCLUDED',
                        value: 'Emergency Profile, Allergies',
                      ),
                    ],
                  ),
                ),
              ),

              // Back to My Care button
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B82F6),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Back to My Care  →',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Transfer detail row ───────────────────────────────────────────────────────
class _TransferRow extends StatelessWidget {
  const _TransferRow({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9CA3AF),
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
