import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class HomeLocalTimeline extends NoteTimeline {
  const HomeLocalTimeline({super.key});

  @override
  ProviderBase<AsyncValue<List<String>>> noteIdsProvider() {
    return localNoteIdsWithCacheProvider();
  }

  @override
  void onFetchNext(WidgetRef ref) {
    ref.read(localNoteIdsWithCacheProvider().notifier).fetchNext();
  }
}
