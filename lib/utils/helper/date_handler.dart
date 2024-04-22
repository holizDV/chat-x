import 'package:intl/intl.dart';

class DateHandler {
  DateHandler._();
  static DateHandler get instance => DateHandler._();

  /// convert to '12 Oktober 2023'
  String strDateTimeToStr1(String? date) {
    if (date == null) return "-";
    final result = DateTime.parse(date).toLocal();
    return DateFormat("dd MMMM yyyy").format(result);
  }
}
