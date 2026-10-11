import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String userName;
  final String avatarUrl;
  final String imageUrl;
  final String description;

  const PostCard({
    super.key,
    required this.userName,
    required this.avatarUrl,
    required this.imageUrl,
    required this.description,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false; // estado del botón "Me gusta"

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado: avatar + nombre
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0xff2d5fe7),
                  foregroundImage: NetworkImage(widget.avatarUrl),
                  child: Text(
                    widget.userName[0],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  widget.userName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          // Imagen principal
          Image.network(
            widget.imageUrl,
            width: double.infinity,
            height: 320,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 200,
                color: Colors.grey.shade300,
                child: const Center(child: Icon(Icons.image, size: 48)),
              );
            },
          ),
          // Botones
          Row(
            children: [
              IconButton(
                icon: Icon(
                  _liked ? Icons.favorite : Icons.favorite_border,
                  color: _liked ? Colors.blue : Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline),
                onPressed: () {},
              ),
            ],
          ),
          // Descripción
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(widget.description),
          ),
        ],
      ),
    );
  }
}
