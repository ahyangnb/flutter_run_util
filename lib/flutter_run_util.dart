library flutter_run_util;

class RunUtil {
  static bool _isProcessing = false;

  /// Any event who needs to request api or delay must use it.
  static Future<void> run(final Future<void> Function() onPressed,
      {String? event}) async {
    // Check if any button is currently being processed
    if (!_isProcessing) {
      _isProcessing = true;

      /// The event start.
      try {
        await onPressed();
      }
      // We must use the fan else will be not execute set is a isProcessing to false when error.
      finally {
        /// The event done.
        _isProcessing = false;
      }
    } else {
      /// Some event is isProcessing.
      /// Processing event: $event
    }
  }
}
