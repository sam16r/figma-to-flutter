import 'package:flutter/material.dart';
import 'my_care_doctors_content.dart';
import 'doctors_specialty_results_page.dart';

class DoctorsAllSpecialtiesPage extends StatefulWidget {
  const DoctorsAllSpecialtiesPage({super.key});

  @override
  State<DoctorsAllSpecialtiesPage> createState() =>
      _DoctorsAllSpecialtiesPageState();
}

class _DoctorsAllSpecialtiesPageState extends State<DoctorsAllSpecialtiesPage> {
  String _query = '';

  List<SpecialtyModel> get _filtered {
    if (_query.isEmpty) return allSpecialties;
    return allSpecialties
        .where((s) => s.name.toLowerCase().contains(_query.toLowerCase()))
        .toList();
  }

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
          'All Specialties',
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
          // Search
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 20, 12),
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(22),
              ),
              child: TextField(
                onChanged: (v) => setState(() => _query = v),
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  hintText: 'Search specialties...',
                  hintStyle: TextStyle(color: Color(0xFF9CA3AF), fontSize: 13),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF9CA3AF),
                    size: 20,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  '${_filtered.length} specialties',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Expanded(
            child: _filtered.isEmpty
                ? const Center(
                    child: Text(
                      'No specialties found.',
                      style: TextStyle(fontSize: 14, color: Color(0xFF9CA3AF)),
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 18,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.85,
                        ),
                    itemCount: _filtered.length,
                    itemBuilder: (context, index) {
                      final spec = _filtered[index];
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DoctorsSpecialtyResultsPage(
                              specialtyName: spec.name,
                              doctors: allDoctors,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                color: spec.bg,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                spec.icon,
                                color: spec.color,
                                size: 28,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              spec.name,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF374151),
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
