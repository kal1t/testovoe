import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// Маска для номера телефона с префиксом (c "+7")
final maskPhoneNumber = MaskTextInputFormatter(
  mask: '+7 (###) ###-##-##',
  filter: {'#': RegExp('[0-9]')},
);
