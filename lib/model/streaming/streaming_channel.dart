enum StreamingChannel {
  main('main'),
  homeTimeline('homeTimeline'),
  localTimeline('localTimeline'),
  globalTimeline('globalTimeline');

  final String rawValue;

  const StreamingChannel(this.rawValue);
}
