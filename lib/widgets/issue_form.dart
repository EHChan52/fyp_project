import 'package:flutter/material.dart';

class IssueForm extends StatelessWidget {
  const IssueForm({Key? key}) : super(key: key);

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
            child: Text(
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
          const SizedBox(height: 29),
          _buildSubmitButton(),
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
          child: Text(
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
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/f4279f4b43d4b5ed65b1c69ef7b34fc668c883f9473235d74296b764fcc4b809?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
            width: 48,
            height: 48,
            semanticLabel: 'Upload image icon',
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      width: 180,
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0x7240E1CD),
      ),
      child: Row(
        children: [
          Text(
            'Submit',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 19),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/bd89b28c63dd91d8d6a0639ccfa9eaf2e15b78159caf7242facd68c125ad1aa1?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
            width: 40,
            height: 40,
            semanticLabel: 'Submit button icon',
          ),
        ],
      ),
    );
  }
}