import 'dart:ui';

class DisplayConstants{
  static final List<Color> gradientBGColor = [
    const Color.fromRGBO(181, 189, 228, 1),
    const Color.fromRGBO(251, 227, 213, 1)
  ];

  static final Color contentFrameColor = const Color.fromRGBO(228, 228, 228, 1);
  static final Color textBoxColor = const Color.fromRGBO(196, 200, 217, 1);
  static final Color submitBtnColor = const Color.fromRGBO(119, 134, 191, 1);

  static List<Color> getGradientColor(){
    return gradientBGColor;
  }

  static Color getGreyFrameColor(){
    return contentFrameColor;
  }

  static Color getTextBoxColor(){
    return textBoxColor;
  }

  static Color getSubmitBtnColor(){
    return submitBtnColor;
  }
}