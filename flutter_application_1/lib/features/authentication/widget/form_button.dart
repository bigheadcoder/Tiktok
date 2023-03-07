import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
          color:
              disabled ? Colors.grey.shade400 : Theme.of(context).primaryColor,
        ),
        duration: const Duration(seconds: 5),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 5),
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: const Text(
            'next',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
