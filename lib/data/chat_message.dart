import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          _BotMessage(
            message: "Hi~ Hi~ I am your AI chatbot~ You can ask me anything related to health! Aha! I am your super \"healthman\"!!",
            imagePath: "assets/bot_avatar.png",
          ),
          _UserMessage(
            message: "I ate two eggs and 80 grams of bread in the morning. What should I eat for lunch?",
            imagePath: "assets/user_avatar.png",
          ),
          _BotMessage(
            message: "Okay! Based on your body data, here are some lunch suggestions to ensure a balanced diet:\n\n"
                "Protein: Options like chicken breast, fish, tofu, or legumes. For example, 100-150 grams of chicken breast or fish.\n\n"
                "Carbohydrates: Choose whole grains like brown rice, whole wheat bread, or sweet potatoes. For instance, 150-200 grams of brown rice or a medium-sized sweet potato.\n\n"
                "Vegetables: How about broccoli, carrots, or spinach? You could prepare a large bowl of salad with olive oil and lemon juice dressing.\n\n"
                "I hope these suggestions are helpful for you! How do you think these options sound?",
            imagePath: "assets/bot_avatar.png",
          ),
        ],
      ),
    );
  }
}

class _BotMessage extends StatelessWidget {
  final String message;
  final String imagePath;

  const _BotMessage({
    Key? key,
    required this.message,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 45,
            height: 45,
            semanticLabel: 'Bot avatar',
          ),
          const SizedBox(width: 14),
          Expanded(
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
                style: TextStyle(fontSize: 15),
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
    Key? key,
    required this.message,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0x7340E1CD),
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
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Image.asset(
            imagePath,
            width: 45,
            height: 45,
            semanticLabel: 'User avatar',
          ),
        ],
      ),
    );
  }
}