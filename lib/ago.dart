library ago;

String ago(DateTime date, [DateTime comparedWith]) {
  final _comparedWith = comparedWith ?? DateTime.now();

  if (date.isAfter(_comparedWith)) {
    return date.toString();
  }

  final diffDuration = _comparedWith.difference(date);
  final diffDurationInDays = diffDuration.inDays;
  final diffDurationInHours = diffDuration.inHours;
  final diffDurationInMinutes = diffDuration.inMinutes;

  if (diffDurationInDays > 0) {
    return date.toString();
  } else if (diffDurationInHours > 0) {
    return "$diffDurationInHours 小时以前";
  } else if (diffDurationInMinutes > 5) {
    return "$diffDurationInMinutes 分钟以前";
  } else {
    return "刚刚";
  }
}