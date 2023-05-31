import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EduOnTextInput {
  static MaskTextInputFormatter phone = MaskTextInputFormatter(
      type: MaskAutoCompletionType.lazy, mask: "+998##-###-##-##");
}
