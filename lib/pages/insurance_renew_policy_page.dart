import 'package:flutter/material.dart';

class InsuranceRenewPolicyPage extends StatefulWidget {
  const InsuranceRenewPolicyPage({super.key});

  @override
  State<InsuranceRenewPolicyPage> createState() =>
      _InsuranceRenewPolicyPageState();
}

class _InsuranceRenewPolicyPageState extends State<InsuranceRenewPolicyPage> {
  int _selectedDuration = 1; // 1, 2, or 3 years
  bool _criticalIllness = false;
  bool _personalAccident = false;

  double get _basePremium => _selectedDuration == 1
      ? 12000
      : _selectedDuration == 2
      ? 22000
      : 30000;

  double get _addOnTotal =>
      (_criticalIllness ? 2400 : 0) + (_personalAccident ? 1800 : 0);

  double get _gst => (_basePremium + _addOnTotal) * 0.18;

  double get _total => _basePremium + _addOnTotal + _gst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Renew Policy',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Current policy summary
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF2563EB), Color(0xFF1E40AF)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.shield_outlined,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'CarePlus Health',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Coverage: ₹5,00,000  •  Expires in 45 days',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white.withValues(alpha: 0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Renewal duration
                  const Text(
                    'Select Renewal Duration',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...[1, 2, 3].map((years) {
                    final price = years == 1
                        ? '₹12,000'
                        : years == 2
                        ? '₹22,000'
                        : '₹30,000';
                    final saving = years == 2
                        ? 'Save ₹2,000'
                        : years == 3
                        ? 'Save ₹6,000'
                        : null;
                    return GestureDetector(
                      onTap: () => setState(() => _selectedDuration = years),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: _selectedDuration == years
                              ? const Color(0xFFEFF6FF)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: _selectedDuration == years
                                ? const Color(0xFF3B82F6)
                                : const Color(0xFFE5E7EB),
                            width: _selectedDuration == years ? 1.5 : 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: _selectedDuration == years
                                      ? const Color(0xFF3B82F6)
                                      : const Color(0xFFD1D5DB),
                                  width: 2,
                                ),
                              ),
                              child: _selectedDuration == years
                                  ? Center(
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF3B82F6),
                                        ),
                                      ),
                                    )
                                  : null,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                '$years Year${years > 1 ? 's' : ''}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ),
                            if (saving != null)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDCFCE7),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  saving,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF16A34A),
                                  ),
                                ),
                              ),
                            const SizedBox(width: 8),
                            Text(
                              price,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF111827),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),

                  const SizedBox(height: 20),

                  // Add-on covers
                  const Text(
                    'Add-on Covers',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _AddOnTile(
                    icon: Icons.favorite_border,
                    iconColor: const Color(0xFFEF4444),
                    iconBg: const Color(0xFFFEE2E2),
                    title: 'Critical Illness Cover',
                    price: '₹2,400/yr',
                    value: _criticalIllness,
                    onChanged: (v) => setState(() => _criticalIllness = v),
                  ),
                  const SizedBox(height: 10),
                  _AddOnTile(
                    icon: Icons.person_outlined,
                    iconColor: const Color(0xFF8B5CF6),
                    iconBg: const Color(0xFFF5F3FF),
                    title: 'Personal Accident Cover',
                    price: '₹1,800/yr',
                    value: _personalAccident,
                    onChanged: (v) => setState(() => _personalAccident = v),
                  ),

                  const SizedBox(height: 24),

                  // Premium breakdown
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFF3F4F6)),
                    ),
                    child: Column(
                      children: [
                        _PremiumRow(
                          label: 'Base Premium ($_selectedDuration yr)',
                          value: '₹${_basePremium.toStringAsFixed(0)}',
                        ),
                        if (_criticalIllness)
                          _PremiumRow(
                            label: 'Critical Illness',
                            value: '₹2,400',
                          ),
                        if (_personalAccident)
                          _PremiumRow(
                            label: 'Personal Accident',
                            value: '₹1,800',
                          ),
                        _PremiumRow(
                          label: 'GST (18%)',
                          value: '₹${_gst.toStringAsFixed(0)}',
                        ),
                        const Divider(height: 20, color: Color(0xFFF3F4F6)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total Payable',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF111827),
                              ),
                            ),
                            Text(
                              '₹${_total.toStringAsFixed(0)}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: Color(0xFF3B82F6),
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

          // Proceed button
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
            child: SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Proceeding to payment...'),
                      backgroundColor: Color(0xFF3B82F6),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B82F6),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Proceed to Renew  →',
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
    );
  }
}

class _AddOnTile extends StatelessWidget {
  const _AddOnTile({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.price,
    required this.value,
    required this.onChanged,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String price;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: value ? const Color(0xFFEFF6FF) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: value ? const Color(0xFF3B82F6) : const Color(0xFFE5E7EB),
            width: value ? 1.5 : 1,
          ),
        ),
        child: Row(
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
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(width: 8),
            Checkbox(
              value: value,
              onChanged: (v) => onChanged(v!),
              activeColor: const Color(0xFF3B82F6),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}

class _PremiumRow extends StatelessWidget {
  const _PremiumRow({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF111827),
            ),
          ),
        ],
      ),
    );
  }
}
