import 'package:flutter/material.dart';

class InsuranceUploadDocPage extends StatefulWidget {
  const InsuranceUploadDocPage({super.key});

  @override
  State<InsuranceUploadDocPage> createState() => _InsuranceUploadDocPageState();
}

class _InsuranceUploadDocPageState extends State<InsuranceUploadDocPage> {
  String _selectedDocType = 'Claim Form';
  bool _uploading = false;
  bool _uploaded = false;

  final List<String> _docTypes = [
    'Claim Form',
    'Medical Report',
    'Prescription',
    'Policy Document',
    'Discharge Summary',
    'Lab Report',
  ];

  void _simulateUpload() async {
    setState(() {
      _uploading = true;
      _uploaded = false;
    });
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _uploading = false;
        _uploaded = true;
      });
    }
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
          'Upload Document',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Document type selector
            const Text(
              'Document Type',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedDocType,
                  isExpanded: true,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF3B82F6),
                  ),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111827),
                  ),
                  items: _docTypes
                      .map(
                        (type) =>
                            DropdownMenuItem(value: type, child: Text(type)),
                      )
                      .toList(),
                  onChanged: (val) {
                    if (val != null) {
                      setState(() {
                        _selectedDocType = val;
                        _uploaded = false;
                      });
                    }
                  },
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Upload area
            const Text(
              'Upload File',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: _uploading ? null : _simulateUpload,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 36),
                decoration: BoxDecoration(
                  color: _uploaded
                      ? const Color(0xFFDCFCE7)
                      : const Color(0xFFEFF6FF),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: _uploaded
                        ? const Color(0xFF22C55E)
                        : const Color(0xFF3B82F6).withValues(alpha: 0.4),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_uploading)
                      const SizedBox(
                        width: 48,
                        height: 48,
                        child: CircularProgressIndicator(
                          color: Color(0xFF3B82F6),
                          strokeWidth: 3,
                        ),
                      )
                    else if (_uploaded)
                      const Icon(
                        Icons.check_circle_rounded,
                        color: Color(0xFF22C55E),
                        size: 52,
                      )
                    else
                      const Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xFF3B82F6),
                        size: 52,
                      ),
                    const SizedBox(height: 12),
                    Text(
                      _uploading
                          ? 'Uploading...'
                          : _uploaded
                          ? 'Upload Successful!'
                          : 'Tap to select file',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: _uploaded
                            ? const Color(0xFF16A34A)
                            : const Color(0xFF3B82F6),
                      ),
                    ),
                    const SizedBox(height: 4),
                    if (!_uploading && !_uploaded)
                      Text(
                        'Supported: PDF, JPG, PNG  •  Max 10 MB',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Supported formats info
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFBEB),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFFFBBF24).withValues(alpha: 0.4),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.warning_amber_rounded,
                    color: Color(0xFFD97706),
                    size: 18,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Ensure the document is clear, legible, and not password-protected.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // Recently uploaded
            const Text(
              'Recently Uploaded',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 12),

            _UploadedDocTile(
              name: 'Claim_Form_CLM-89201.pdf',
              type: 'Claim Form',
              date: 'Oct 24, 2023',
              size: '1.1 MB',
              status: 'Verified',
              statusColor: const Color(0xFF22C55E),
              statusBg: const Color(0xFFDCFCE7),
            ),
            const SizedBox(height: 10),
            _UploadedDocTile(
              name: 'Medical_Report_Oct23.pdf',
              type: 'Medical Report',
              date: 'Oct 20, 2023',
              size: '3.7 MB',
              status: 'Verified',
              statusColor: const Color(0xFF22C55E),
              statusBg: const Color(0xFFDCFCE7),
            ),
            const SizedBox(height: 10),
            _UploadedDocTile(
              name: 'Policy_Doc_2023.pdf',
              type: 'Policy Document',
              date: 'Oct 12, 2023',
              size: '2.4 MB',
              status: 'On File',
              statusColor: const Color(0xFF6B7280),
              statusBg: const Color(0xFFF3F4F6),
            ),

            const SizedBox(height: 24),

            // Submit button
            if (_uploaded)
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Document submitted successfully.'),
                        backgroundColor: Color(0xFF22C55E),
                      ),
                    );
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3B82F6),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Submit Document  →',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _UploadedDocTile extends StatelessWidget {
  const _UploadedDocTile({
    required this.name,
    required this.type,
    required this.date,
    required this.size,
    required this.status,
    required this.statusColor,
    required this.statusBg,
  });

  final String name;
  final String type;
  final String date;
  final String size;
  final String status;
  final Color statusColor;
  final Color statusBg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFFEE2E2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.picture_as_pdf_outlined,
              color: Color(0xFFEF4444),
              size: 22,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111827),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  '$type  •  $size  •  $date',
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: statusBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: statusColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
