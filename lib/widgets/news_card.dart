import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String? author;
  final String? title;
  final String? description;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const NewsCard({
    super.key,
    required this.title,
    this.author,
    this.description,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const .only(bottom: 24),
      padding: const .all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FBFA),
        borderRadius: .circular(16),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: .circular(8),
                ),
                child: Center(
                  child: Text(
                    author != null && author!.isNotEmpty
                        ? author![0].toUpperCase()
                        : "N",
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      author ?? "Unknown Author",
                      style: const TextStyle(fontWeight: .bold, fontSize: 16),
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                    Text(
                      publishedAt ?? "Unknown Date",
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 12),

              Row(
                mainAxisSize: .min,
                children: [
                  Container(
                    padding: const .symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: .circular(8),
                    ),
                    child: const Text(
                      "Follow",
                      style: TextStyle(fontWeight: .bold),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.more_vert),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),

          Text(
            title ?? "No Title",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: .w800,
              height: 1.3,
            ),
            maxLines: 2,
            overflow: .ellipsis,
          ),
          const SizedBox(height: 12),

          Container(
            padding: const .symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: .all(color: Colors.blue[200]!),
              borderRadius: .circular(6),
            ),
            child: Text(
              "Business",
              style: TextStyle(
                color: Colors.blue[400],
                fontSize: 12,
                fontWeight: .bold,
              ),
            ),
          ),
          const SizedBox(height: 16),

          if (urlToImage != null && urlToImage!.isNotEmpty)
            ClipRRect(
              borderRadius: .circular(12),
              child: Image.network(
                urlToImage!,
                height: 180,
                width: .infinity,
                fit: .cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 180,
                  color: Colors.grey[300],
                  child: const Icon(Icons.broken_image, color: Colors.grey),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
