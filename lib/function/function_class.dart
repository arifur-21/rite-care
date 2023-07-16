class DateTimeConverter {
  static dynamic dateTime;
  static dateOfTiemConterter(dynamic dob) {
    dynamic dobs = " ";
    dobs = dob;
    dynamic unixTimestamp = dobs;
    int timestampInMilliseconds = int.parse(
        unixTimestamp.replaceAll(RegExp(r'[^0-9]'), '') ??
            "00:00"); // extract the numeric value from the string
    dateTime = DateTime.fromMillisecondsSinceEpoch(timestampInMilliseconds);

    if (dateTime == null) {
      return "dateTime1";
    } else {
      return dateTime;
    }
  }
}
