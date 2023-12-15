enum StreamingEventKind {
  note('note'),
  noteUpdated('noteUpdated'),
  unreadNotification('unreadNotification');

  final String rawValue;

  const StreamingEventKind(this.rawValue);
}
