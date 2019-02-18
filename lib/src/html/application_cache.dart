part of universal_html;

abstract class ApplicationCache extends EventTarget {
  static const EventStreamProvider<Event> cachedEvent =
      EventStreamProvider<Event>("cached");

  static const EventStreamProvider<Event> checkingEvent =
      EventStreamProvider<Event>("checking");

  static const EventStreamProvider<Event> downloadingEvent =
      EventStreamProvider<Event>("downloading");

  static const EventStreamProvider<Event> errorEvent =
      EventStreamProvider<Event>("error");

  static const EventStreamProvider<Event> noUpdateEvent =
      EventStreamProvider<Event>("noupdate");

  static const EventStreamProvider<Event> obsoleteEvent =
      EventStreamProvider<Event>("obsolete");

  static const EventStreamProvider<Event> progressEvent =
      EventStreamProvider<Event>("progress");

  static const EventStreamProvider<Event> updateReadyEvent =
      EventStreamProvider<Event>("updateready");

  static const int UNCACHED = 0;

  static const int IDLE = 1;

  static const int CHECKING = 2;

  static const int DOWNLOADING = 3;

  static const int UPDATEREADY = 4;

  static const int OBSOLETE = 5;

  static bool get supported => false;

  Stream<Event> get onCached;

  Stream<Event> get onChecking;

  Stream<Event> get onDownloading;

  Stream<Event> get onError;

  Stream<Event> get onNoUpdate;

  Stream<Event> get onObsolete;

  Stream<Event> get onProgress;

  Stream<Event> get onUpdateReady;

  int get status => UNCACHED;

  void abort();

  void swapCache();

  void update();
}
