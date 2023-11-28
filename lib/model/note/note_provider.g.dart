// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteIdsHash() => r'5ed2f0723c0551c3b503b429b98b90b772f536de';

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

abstract class _$NoteIds
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final bool isLocal;
  late final int limit;

  FutureOr<List<String>> build({
    bool isLocal = false,
    int limit = 100,
  });
}

/// See also [NoteIds].
@ProviderFor(NoteIds)
const noteIdsProvider = NoteIdsFamily();

/// See also [NoteIds].
class NoteIdsFamily extends Family<AsyncValue<List<String>>> {
  /// See also [NoteIds].
  const NoteIdsFamily();

  /// See also [NoteIds].
  NoteIdsProvider call({
    bool isLocal = false,
    int limit = 100,
  }) {
    return NoteIdsProvider(
      isLocal: isLocal,
      limit: limit,
    );
  }

  @override
  NoteIdsProvider getProviderOverride(
    covariant NoteIdsProvider provider,
  ) {
    return call(
      isLocal: provider.isLocal,
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
  String? get name => r'noteIdsProvider';
}

/// See also [NoteIds].
class NoteIdsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<NoteIds, List<String>> {
  /// See also [NoteIds].
  NoteIdsProvider({
    bool isLocal = false,
    int limit = 100,
  }) : this._internal(
          () => NoteIds()
            ..isLocal = isLocal
            ..limit = limit,
          from: noteIdsProvider,
          name: r'noteIdsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteIdsHash,
          dependencies: NoteIdsFamily._dependencies,
          allTransitiveDependencies: NoteIdsFamily._allTransitiveDependencies,
          isLocal: isLocal,
          limit: limit,
        );

  NoteIdsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isLocal,
    required this.limit,
  }) : super.internal();

  final bool isLocal;
  final int limit;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant NoteIds notifier,
  ) {
    return notifier.build(
      isLocal: isLocal,
      limit: limit,
    );
  }

  @override
  Override overrideWith(NoteIds Function() create) {
    return ProviderOverride(
      origin: this,
      override: NoteIdsProvider._internal(
        () => create()
          ..isLocal = isLocal
          ..limit = limit,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isLocal: isLocal,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<NoteIds, List<String>>
      createElement() {
    return _NoteIdsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteIdsProvider &&
        other.isLocal == isLocal &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isLocal.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NoteIdsRef on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `isLocal` of this provider.
  bool get isLocal;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _NoteIdsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NoteIds, List<String>>
    with NoteIdsRef {
  _NoteIdsProviderElement(super.provider);

  @override
  bool get isLocal => (origin as NoteIdsProvider).isLocal;
  @override
  int get limit => (origin as NoteIdsProvider).limit;
}

String _$cachedNoteHash() => r'a2b4a391ef8bd9b7337f0ede717557cf558e011d';

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
