import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class HomeMediaTimeline extends NoteTimeline {
  const HomeMediaTimeline({super.key});

  @override
  ProviderBase<AsyncValue<List<String>>> noteIdsProvider() {
    return localNoteIdsWithCacheProvider(hasFiles: true);
  }

  @override
  void onFetchNext(WidgetRef ref) {
    ref.read(localNoteIdsWithCacheProvider(hasFiles: true).notifier).fetchNext();
  }
}
