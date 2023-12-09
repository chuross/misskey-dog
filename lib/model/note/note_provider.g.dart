// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteCreationStreamingHash() =>
    r'fab34f38eec0277e4c2bcc75b3032df72bcd2950';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [noteCreationStreaming].
@ProviderFor(noteCreationStreaming)
const noteCreationStreamingProvider = NoteCreationStreamingFamily();

/// See also [noteCreationStreaming].
class NoteCreationStreamingFamily extends Family<AsyncValue<Note>> {
  /// See also [noteCreationStreaming].
  const NoteCreationStreamingFamily();

  /// See also [noteCreationStreaming].
  NoteCreationStreamingProvider call({
    required StreamingChannel channel,
  }) {
    return NoteCreationStreamingProvider(
      channel: channel,
    );
  }

  @override
  NoteCreationStreamingProvider getProviderOverride(
    covariant NoteCreationStreamingProvider provider,
  ) {
    return call(
      channel: provider.channel,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'noteCreationStreamingProvider';
}

/// See also [noteCreationStreaming].
class NoteCreationStreamingProvider extends AutoDisposeStreamProvider<Note> {
  /// See also [noteCreationStreaming].
  NoteCreationStreamingProvider({
    required StreamingChannel channel,
  }) : this._internal(
          (ref) => noteCreationStreaming(
            ref as NoteCreationStreamingRef,
            channel: channel,
          ),
          from: noteCreationStreamingProvider,
          name: r'noteCreationStreamingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteCreationStreamingHash,
          dependencies: NoteCreationStreamingFamily._dependencies,
          allTransitiveDependencies:
              NoteCreationStreamingFamily._allTransitiveDependencies,
          channel: channel,
        );

  NoteCreationStreamingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.channel,
  }) : super.internal();

  final StreamingChannel channel;

  @override
  Override overrideWith(
    Stream<Note> Function(NoteCreationStreamingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteCreationStreamingProvider._internal(
        (ref) => create(ref as NoteCreationStreamingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        channel: channel,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Note> createElement() {
    return _NoteCreationStreamingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteCreationStreamingProvider && other.channel == channel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NoteCreationStreamingRef on AutoDisposeStreamProviderRef<Note> {
  /// The parameter `channel` of this provider.
  StreamingChannel get channel;
}

class _NoteCreationStreamingProviderElement
    extends AutoDisposeStreamProviderElement<Note>
    with NoteCreationStreamingRef {
  _NoteCreationStreamingProviderElement(super.provider);

  @override
  StreamingChannel get channel =>
      (origin as NoteCreationStreamingProvider).channel;
}

String _$noteUpdateStreamingHash() =>
    r'6b13d91cc28a1d953e2c409d2dea302bd06e9eca';

/// See also [noteUpdateStreaming].
@ProviderFor(noteUpdateStreaming)
const noteUpdateStreamingProvider = NoteUpdateStreamingFamily();

/// See also [noteUpdateStreaming].
class NoteUpdateStreamingFamily extends Family<AsyncValue<dynamic>> {
  /// See also [noteUpdateStreaming].
  const NoteUpdateStreamingFamily();

  /// See also [noteUpdateStreaming].
  NoteUpdateStreamingProvider call({
    required String noteId,
  }) {
    return NoteUpdateStreamingProvider(
      noteId: noteId,
    );
  }

  @override
  NoteUpdateStreamingProvider getProviderOverride(
    covariant NoteUpdateStreamingProvider provider,
  ) {
    return call(
      noteId: provider.noteId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'noteUpdateStreamingProvider';
}

/// See also [noteUpdateStreaming].
class NoteUpdateStreamingProvider extends AutoDisposeStreamProvider<dynamic> {
  /// See also [noteUpdateStreaming].
  NoteUpdateStreamingProvider({
    required String noteId,
  }) : this._internal(
          (ref) => noteUpdateStreaming(
            ref as NoteUpdateStreamingRef,
            noteId: noteId,
          ),
          from: noteUpdateStreamingProvider,
          name: r'noteUpdateStreamingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteUpdateStreamingHash,
          dependencies: NoteUpdateStreamingFamily._dependencies,
          allTransitiveDependencies:
              NoteUpdateStreamingFamily._allTransitiveDependencies,
          noteId: noteId,
        );

  NoteUpdateStreamingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.noteId,
  }) : super.internal();

  final String noteId;

  @override
  Override overrideWith(
    Stream<dynamic> Function(NoteUpdateStreamingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteUpdateStreamingProvider._internal(
        (ref) => create(ref as NoteUpdateStreamingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        noteId: noteId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<dynamic> createElement() {
    return _NoteUpdateStreamingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteUpdateStreamingProvider && other.noteId == noteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NoteUpdateStreamingRef on AutoDisposeStreamProviderRef<dynamic> {
  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteUpdateStreamingProviderElement
    extends AutoDisposeStreamProviderElement<dynamic>
    with NoteUpdateStreamingRef {
  _NoteUpdateStreamingProviderElement(super.provider);

  @override
  String get noteId => (origin as NoteUpdateStreamingProvider).noteId;
}

String _$localNoteIdsWithCacheHash() =>
    r'f4139fb2f703c95a8015895c8c6c44bd3175de4a';

abstract class _$LocalNoteIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final bool? hasFiles;
  late final int limit;

  FutureOr<List<String>> build({
    bool? hasFiles,
    int limit = 100,
  });
}

/// See also [LocalNoteIdsWithCache].
@ProviderFor(LocalNoteIdsWithCache)
const localNoteIdsWithCacheProvider = LocalNoteIdsWithCacheFamily();

/// See also [LocalNoteIdsWithCache].
class LocalNoteIdsWithCacheFamily extends Family<AsyncValue<List<String>>> {
  /// See also [LocalNoteIdsWithCache].
  const LocalNoteIdsWithCacheFamily();

  /// See also [LocalNoteIdsWithCache].
  LocalNoteIdsWithCacheProvider call({
    bool? hasFiles,
    int limit = 100,
  }) {
    return LocalNoteIdsWithCacheProvider(
      hasFiles: hasFiles,
      limit: limit,
    );
  }

  @override
  LocalNoteIdsWithCacheProvider getProviderOverride(
    covariant LocalNoteIdsWithCacheProvider provider,
  ) {
    return call(
      hasFiles: provider.hasFiles,
      limit: provider.limit,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'localNoteIdsWithCacheProvider';
}

/// See also [LocalNoteIdsWithCache].
class LocalNoteIdsWithCacheProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LocalNoteIdsWithCache,
        List<String>> {
  /// See also [LocalNoteIdsWithCache].
  LocalNoteIdsWithCacheProvider({
    bool? hasFiles,
    int limit = 100,
  }) : this._internal(
          () => LocalNoteIdsWithCache()
            ..hasFiles = hasFiles
            ..limit = limit,
          from: localNoteIdsWithCacheProvider,
          name: r'localNoteIdsWithCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localNoteIdsWithCacheHash,
          dependencies: LocalNoteIdsWithCacheFamily._dependencies,
          allTransitiveDependencies:
              LocalNoteIdsWithCacheFamily._allTransitiveDependencies,
          hasFiles: hasFiles,
          limit: limit,
        );

  LocalNoteIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hasFiles,
    required this.limit,
  }) : super.internal();

  final bool? hasFiles;
  final int limit;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant LocalNoteIdsWithCache notifier,
  ) {
    return notifier.build(
      hasFiles: hasFiles,
      limit: limit,
    );
  }

  @override
  Override overrideWith(LocalNoteIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocalNoteIdsWithCacheProvider._internal(
        () => create()
          ..hasFiles = hasFiles
          ..limit = limit,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hasFiles: hasFiles,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<LocalNoteIdsWithCache, List<String>>
      createElement() {
    return _LocalNoteIdsWithCacheProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalNoteIdsWithCacheProvider &&
        other.hasFiles == hasFiles &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocalNoteIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _LocalNoteIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LocalNoteIdsWithCache,
        List<String>> with LocalNoteIdsWithCacheRef {
  _LocalNoteIdsWithCacheProviderElement(super.provider);

  @override
  bool? get hasFiles => (origin as LocalNoteIdsWithCacheProvider).hasFiles;
  @override
  int get limit => (origin as LocalNoteIdsWithCacheProvider).limit;
}

String _$globalNoteIdsWithCacheHash() =>
    r'd287cf117f59e3268d9dcd742c8578ee1cf1adb7';

abstract class _$GlobalNoteIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final bool? hasFiles;
  late final int limit;

  FutureOr<List<String>> build({
    bool? hasFiles,
    int limit = 100,
  });
}

/// See also [GlobalNoteIdsWithCache].
@ProviderFor(GlobalNoteIdsWithCache)
const globalNoteIdsWithCacheProvider = GlobalNoteIdsWithCacheFamily();

/// See also [GlobalNoteIdsWithCache].
class GlobalNoteIdsWithCacheFamily extends Family<AsyncValue<List<String>>> {
  /// See also [GlobalNoteIdsWithCache].
  const GlobalNoteIdsWithCacheFamily();

  /// See also [GlobalNoteIdsWithCache].
  GlobalNoteIdsWithCacheProvider call({
    bool? hasFiles,
    int limit = 100,
  }) {
    return GlobalNoteIdsWithCacheProvider(
      hasFiles: hasFiles,
      limit: limit,
    );
  }

  @override
  GlobalNoteIdsWithCacheProvider getProviderOverride(
    covariant GlobalNoteIdsWithCacheProvider provider,
  ) {
    return call(
      hasFiles: provider.hasFiles,
      limit: provider.limit,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'globalNoteIdsWithCacheProvider';
}

/// See also [GlobalNoteIdsWithCache].
class GlobalNoteIdsWithCacheProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GlobalNoteIdsWithCache,
        List<String>> {
  /// See also [GlobalNoteIdsWithCache].
  GlobalNoteIdsWithCacheProvider({
    bool? hasFiles,
    int limit = 100,
  }) : this._internal(
          () => GlobalNoteIdsWithCache()
            ..hasFiles = hasFiles
            ..limit = limit,
          from: globalNoteIdsWithCacheProvider,
          name: r'globalNoteIdsWithCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$globalNoteIdsWithCacheHash,
          dependencies: GlobalNoteIdsWithCacheFamily._dependencies,
          allTransitiveDependencies:
              GlobalNoteIdsWithCacheFamily._allTransitiveDependencies,
          hasFiles: hasFiles,
          limit: limit,
        );

  GlobalNoteIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hasFiles,
    required this.limit,
  }) : super.internal();

  final bool? hasFiles;
  final int limit;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant GlobalNoteIdsWithCache notifier,
  ) {
    return notifier.build(
      hasFiles: hasFiles,
      limit: limit,
    );
  }

  @override
  Override overrideWith(GlobalNoteIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: GlobalNoteIdsWithCacheProvider._internal(
        () => create()
          ..hasFiles = hasFiles
          ..limit = limit,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hasFiles: hasFiles,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GlobalNoteIdsWithCache, List<String>>
      createElement() {
    return _GlobalNoteIdsWithCacheProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GlobalNoteIdsWithCacheProvider &&
        other.hasFiles == hasFiles &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GlobalNoteIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _GlobalNoteIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GlobalNoteIdsWithCache,
        List<String>> with GlobalNoteIdsWithCacheRef {
  _GlobalNoteIdsWithCacheProviderElement(super.provider);

  @override
  bool? get hasFiles => (origin as GlobalNoteIdsWithCacheProvider).hasFiles;
  @override
  int get limit => (origin as GlobalNoteIdsWithCacheProvider).limit;
}

String _$cachedNoteHash() => r'64db389de13236470fee2e54ba8fdaf9901d6c9f';

abstract class _$CachedNote extends BuildlessAutoDisposeNotifier<Note?> {
  late final String id;

  Note? build({
    required String id,
  });
}

/// See also [CachedNote].
@ProviderFor(CachedNote)
const cachedNoteProvider = CachedNoteFamily();

/// See also [CachedNote].
class CachedNoteFamily extends Family<Note?> {
  /// See also [CachedNote].
  const CachedNoteFamily();

  /// See also [CachedNote].
  CachedNoteProvider call({
    required String id,
  }) {
    return CachedNoteProvider(
      id: id,
    );
  }

  @override
  CachedNoteProvider getProviderOverride(
    covariant CachedNoteProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'cachedNoteProvider';
}

/// See also [CachedNote].
class CachedNoteProvider
    extends AutoDisposeNotifierProviderImpl<CachedNote, Note?> {
  /// See also [CachedNote].
  CachedNoteProvider({
    required String id,
  }) : this._internal(
          () => CachedNote()..id = id,
          from: cachedNoteProvider,
          name: r'cachedNoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cachedNoteHash,
          dependencies: CachedNoteFamily._dependencies,
          allTransitiveDependencies:
              CachedNoteFamily._allTransitiveDependencies,
          id: id,
        );

  CachedNoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Note? runNotifierBuild(
    covariant CachedNote notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(CachedNote Function() create) {
    return ProviderOverride(
      origin: this,
      override: CachedNoteProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CachedNote, Note?> createElement() {
    return _CachedNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CachedNoteProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CachedNoteRef on AutoDisposeNotifierProviderRef<Note?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CachedNoteProviderElement
    extends AutoDisposeNotifierProviderElement<CachedNote, Note?>
    with CachedNoteRef {
  _CachedNoteProviderElement(super.provider);

  @override
  String get id => (origin as CachedNoteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
