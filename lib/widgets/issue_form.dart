import 'package:flutter/material.dart';

class IssueForm extends StatelessWidget {
  const IssueForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 390),
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0x7240E1CD),
            ),
            child: const Text(
              'Report an issue',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 43),
          Container(
            width: 389,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(10, 10),
                  spreadRadius: 15,
                ),
              ],
            ),
            child: TextFormField(
              maxLines: 8,
              decoration: InputDecoration(
                hintText: 'Describe the issue here',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          ),
          const SizedBox(height: 37),
          _buildUploadSection(),
          const SizedBox(height: 10),
          _buildSubmitButton(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildUploadSection() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 390),
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0x7240E1CD),
          ),
          child: const Text(
            'Upload Image',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          width: 389,
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 78),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
            child: const Icon(
            Icons.upload_file,
            size: 48,
            semanticLabel: 'Upload image icon',
            ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      width: 180,
      padding: const EdgeInsets.only(left: 16,right: 16,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0x7240E1CD),
      ),
      child: Row(
        children: [
          const Text(
            'Submit',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 19),
            const Icon(
            Icons.send,
            size: 40,
            semanticLabel: 'Submit button icon',
            ),
        ],
      ),
    );
  }
}