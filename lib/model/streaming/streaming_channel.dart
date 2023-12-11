enum StreamingChannel {
  main('main'),
  localTimeline('localTimeline'),
  globalTimeline('globalTimeline');

  final String rawValue;

  const StreamingChannel(this.rawValue);
}
