import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10), // Add padding to the ListView
        children: const [
          _BotMessage(
            message: "Hi~ Hi~ I am your AI chatbot~ You can ask me anything related to health! Aha! I am your super \"healthman\"!!",
            imagePath: "assets/veggie.png",
          ),
          _UserMessage(
            message: "I ate two eggs and 80 grams of bread in the morning. What should I eat for lunch?",
            imagePath: "assets/ProfileImg.jpeg",
          ),
          _BotMessage(
            message: "Okay! Based on your body data, here are some lunch suggestions to ensure a balanced diet:\n\n"
                "Protein: Options like chicken breast, fish, tofu, or legumes. For example, 100-150 grams of chicken breast or fish.\n\n"
                "Carbohydrates: Choose whole grains like brown rice, whole wheat bread, or sweet potatoes. For instance, 150-200 grams of brown rice or a medium-sized sweet potato.\n\n"
                "Vegetables: How about broccoli, carrots, or spinach? You could prepare a large bowl of salad with olive oil and lemon juice dressing.\n\n"
                "I hope these suggestions are helpful for you! How do you think these options sound?",
            imagePath: "assets/veggie.png",
          ),
          SizedBox(height: 200), 
        ],
      ),
    );
  }
}

class _BotMessage extends StatelessWidget {
  final String message;
  final String imagePath;

  const _BotMessage({
    required this.message,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), 
            child: Image.asset(
              imagePath,
              width: 45,
              height: 45,
              semanticLabel: 'Bot avatar',
            ),
          ),
          const SizedBox(width: 14),
          SizedBox(
            width: 300, // Set the desired width here
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 20,
                    offset: const Offset(8, 8),
                  ),
                ],
              ),
              child: Text(
                message,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UserMessage extends StatelessWidget {
  final String message;
  final String imagePath;

  const _UserMessage({
    required this.message,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300, // Set the desired width here
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF40E1CE),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 20,
                    offset: const Offset(8, 8),
                  ),
                ],
              ),
              child: Text(
                message,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ),
          const SizedBox(width: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(10), 
            child: Image.asset(
              imagePath,
              width: 45,
              height: 45,
              fit: BoxFit.cover,
              semanticLabel: 'User avatar',
            ),
          ),
        ],
      ),
    );
  }
}