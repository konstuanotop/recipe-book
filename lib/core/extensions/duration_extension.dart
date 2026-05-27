extension DurationExtension on Duration {
  String toFormattedTime() {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);
    final secondes = inSeconds.remainder(60);

    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secondes.toString().padLeft(2, '0')}';
  }
}
