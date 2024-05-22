import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenteredTextButton extends StatelessWidget {
  final String label;
  final bool isPrimary;
  final bool isEnabled;
  final Function() onTap;
  final Color color;
  final Color disabledColor;

  const CenteredTextButton._internal({
    super.key,
    required this.label,
    required this.isPrimary,
    required this.isEnabled,
    required this.onTap,
    required this.color,
    required this.disabledColor,
  });

  factory CenteredTextButton.primary({
    Key? key,
    required String label,
    bool isEnabled = true,
    required Function() onTap,
    required BuildContext context,
  }) {
    return CenteredTextButton._internal(
      key: key,
      label: label,
      isPrimary: true,
      isEnabled: isEnabled,
      onTap: onTap,
      color: context.theme.colorScheme.primary,
      disabledColor: context.theme.colorScheme.secondaryContainer,
    );
  }

  factory CenteredTextButton.secondary({
    Key? key,
    required String label,
    bool isEnabled = true,
    required Function() onTap,
    required BuildContext context,
  }) {
    return CenteredTextButton._internal(
      key: key,
      label: label,
      isPrimary: false,
      isEnabled: isEnabled,
      onTap: onTap,
      color: context.theme.colorScheme.secondary,
      disabledColor: context.theme.colorScheme.secondaryContainer,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isPrimary) {
      return ElevatedButton(
        onPressed: isEnabled ? onTap : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return disabledColor;
              }

              return color;
            },
          ),
        ),
        child: Text(
          label,
          style: context.theme.textTheme.labelLarge,
        ),
      );
    }

    return TextButton(
      onPressed: isEnabled ? onTap : null,
      child: Text(
        label,
        style: context.theme.textTheme.labelLarge!.copyWith(
          color: isEnabled ? color : disabledColor,
        ),
      ),
    );
  }
}
