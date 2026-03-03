import 'package:flutter/material.dart';
import 'my_care_home_content.dart';
import 'my_care_caretag_content.dart';

class MyCarePage extends StatefulWidget {
  const MyCarePage({super.key});

  static const routeName = '/my-care';

  @override
  State<MyCarePage> createState() => _MyCarePageState();
}

class _MyCarePageState extends State<MyCarePage> {
  int _selectedTabIndex = 0;

  final List<String> _tabs = [
    'Home',
    'CareTag',
    'Doctors',
    'Care\nServices',
    'Insurance',
    'Timeline',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Column(
        children: [
          // Blue curved header + search bar
          SizedBox(
            height: 180,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF3B82F6),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(280, 100),
                      bottomRight: Radius.elliptical(280, 100),
                    ),
                  ),
                  child: SafeArea(
                    bottom: false,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: const Text(
                          'My Care',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Search bar overlay
                Positioned(
                  bottom: 10,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: const Color(0xFF3B82F6),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF111827),
                        ),
                        suffixIcon: Icon(Icons.tune, color: Color(0xFF3B82F6)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Horizontal scrollable nav bar
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _tabs.length,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                final isSelected = _selectedTabIndex == index;
                final isHome = index == 0;

                return GestureDetector(
                  onTap: () => setState(() => _selectedTabIndex = index),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: isHome ? 12 : 24),
                        alignment: Alignment.center,
                        child: Text(
                          _tabs[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isHome ? 16 : 13,
                            height: 1.2,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w500,
                            color: isSelected
                                ? const Color(0xFF1E63F4)
                                : const Color(0xFF111827),
                          ),
                        ),
                      ),
                      if (isHome)
                        Container(
                          height: 20,
                          width: 1,
                          margin: const EdgeInsets.only(right: 24),
                          color: const Color(0xFFD1D5DB),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),

          const Divider(height: 1, color: Color(0xFFE5E7EB)),

          // Content area
          Expanded(
            child: _selectedTabIndex == 0
                ? const MyCareHomeContent()
                : _selectedTabIndex == 1
                    ? const MyCareCareTgContent()
                    : Center(
                    child: Text(
                      '${_tabs[_selectedTabIndex].replaceAll('\n', ' ')} Content Here',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ),
          ),

          // Bottom nav bar
          const _MyCareBottomNav(),
        ],
      ),
    );
  }
}

class _MyCareBottomNav extends StatelessWidget {
  const _MyCareBottomNav();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 14),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFF1F5F9))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.home_outlined,
            label: 'Home',
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          const _NavItem(icon: Icons.assignment_outlined, label: 'Records'),
          const _NavItem(
            icon: Icons.account_balance_outlined,
            label: 'My Care',
            active: true,
          ),
          _NavItem(
            icon: Icons.description,
            label: 'News',
            onTap: () => Navigator.pushReplacementNamed(context, '/news'),
          ),
          _NavItem(
            icon: Icons.person_outline,
            label: 'Profile',
            onTap: () => Navigator.pushReplacementNamed(context, '/profile'),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    this.active = false,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? const Color(0xFF1E63F4) : const Color(0xFF6B7280);
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (active)
            Container(
              width: 26,
              height: 3,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF1E63F4),
                borderRadius: BorderRadius.circular(12),
              ),
            )
          else
            const SizedBox(height: 11),
          Icon(icon, color: color, size: 22),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: active ? FontWeight.w700 : FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
