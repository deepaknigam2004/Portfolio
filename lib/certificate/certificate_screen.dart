


import 'package:flutter/material.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width for responsive adjustments
    final screenWidth = MediaQuery.of(context).size.width;

    // Define responsive padding values
    final double screenHorizontalPadding = screenWidth > 800 ? 60.0 : 20.0;
    final double titleHorizontalPadding = screenWidth > 800 ? 36.0 : 20.0;

    // Define responsive font sizes
    final double titleFontSize = screenWidth > 800 ? 32 : 24;
    final double itemTitleFontSize = screenWidth > 800 ? 16 : 14;
    final double itemSubtitleFontSize = screenWidth > 800 ? 14 : 12;

    // Define responsive item dimensions for the horizontal list
    final double itemHeight = screenWidth > 800 ? 300 : 200;
    final double itemWidth = screenWidth > 800 ? 400 : 300;
    final double itemTitleWidth = screenWidth > 800 ? 200 : 150; // Width for the title text
    final double listViewHeight = screenWidth > 800 ? 500 : 350; // Overall height of the ListView

    // ── sample data ─────────────────────────────────────────────────────────
    const items = [
      {
        "title": "Core Java Programming",
        "subtitle": "Infosys Springboard",
        "image": "assets/assets/certificate_image/Core_Java_Programming.png"
      },
      {
        "title": "Deloitte Australia Data Analytics Certificate",
        "subtitle": "Forage",
        "image": "assets/assets/certificate_image/Deloitte_Australia_Data_Analytics_Certificate.png"
      },
      {
        "title": "Flipkart GRID 5.0",
        "subtitle": "Flipkart",
        "image": "assets/assets/certificate_image/Flipkart_GRID_5.0.png"
      },
      {
        "title": "Python Programming Certificate",
        "subtitle": "GUVI",
        "image": "assets/assets/certificate_image/Python_Programming_Certificate.png"
      },
      {
        "title": "Hack4Change @charcha",
        "subtitle": "The Nude Institute, Google",
        "image": "assets/assets/certificate_image/Hack4Change_@charcha.png"
      },
      {
        "title": "Project Management Fundamentals",
        "subtitle": "IBM",
        "image": "assets/assets/certificate_image/Project_Management_Fundamentals.png"
      },
      {
        "title": "Google Data Analytics Professional Certificate",
        "subtitle": "Coursera",
        "image": "assets/assets/certificate_image/Google_Data_Analytics_Professional_Certificate.png"
      },
    ];

    /// Shows a full-screen preview of the tapped image.
    Future<void> _showImage(BuildContext context, String url) async {
      await showDialog(
        context: context,
        barrierColor: Colors.black87,
        builder: (_) => GestureDetector(
          onTap: Navigator.of(context).pop,
          child: Stack(
            children: [
              Center(
                child: Container(
                  // Use a flexible width for the dialog image
                  width: screenWidth * 0.8, // 80% of screen width
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.8, // Max 80% of screen height
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      url,
                      fit: BoxFit.contain, // Changed to contain for better fit in dialog
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported_outlined, size: 100, color: Colors.white54),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 32,
                right: 24,
                child: Icon(Icons.close, color: Colors.white, size: 28),
              ),
            ],
          ),
        ),
      );
    }

    // ── UI ──────────────────────────────────────────────────────────────────
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: titleHorizontalPadding, right: titleHorizontalPadding),
          child: Text(
            "Certification",
            style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        const SizedBox(height: 15), // Increased spacing
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(screenHorizontalPadding, 20, screenHorizontalPadding, 0),
          child: SizedBox(
            height: listViewHeight, // Apply responsive height
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 0), // Removed horizontal padding from here as it's in parent
              itemCount: items.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final item = items[index];
                final imageUrl = item['image']!;
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => _showImage(context, imageUrl),
                      child: Container(
                        height: itemHeight, // Apply responsive height
                        width: itemWidth,   // Apply responsive width
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                          image: DecorationImage(
                            image: NetworkImage(imageUrl),
                            fit: BoxFit.contain, // Keep contain to show full certificate
                            onError: (exception, stackTrace) => debugPrint('Error loading image: $exception'),
                          ),
                        ),
                        child: Image.network( // Added explicit Image.network for errorBuilder
                          imageUrl,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.image_not_supported_outlined, size: 50, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: itemTitleWidth, // Apply responsive width for title
                      child: Text(
                        item['title']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: itemTitleFontSize, color: Colors.white), // Apply responsive font size and color
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      item['subtitle']!,
                      style: TextStyle(
                        fontSize: itemSubtitleFontSize, // Apply responsive font size
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
