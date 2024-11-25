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
          _buildSubmitButton(context),
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
            child: IconButton(
              icon: const Icon(
              Icons.upload_file,
              size: 48,
              semanticLabel: 'Upload image icon',
              ),
              onPressed: (){
              
              },
            ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      // Add your submit logic here
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Your opinion has been submitted!'),
        ),
      );
      },
      style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0x7240E1CD),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minimumSize: const Size(200, 50), // Decrease the width of the button
      ),
      child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        'Submit',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        ),
        Icon(
        Icons.send,
        size: 30,
        semanticLabel: 'Submit button icon',
        color: Colors.black,
        ),
      ],
      ),
    );
  }
}