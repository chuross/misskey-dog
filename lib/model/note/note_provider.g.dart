// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notesHash() => r'abf80df72ecfb4af12f5f7f0a6b482f3e9b2f73d';

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

abstract class _$Notes extends BuildlessAutoDisposeAsyncNotifier<List<Note>> {
  late final String? sinceId;
  late final bool isLocal;
  late final int limit;

  FutureOr<List<Note>> build({
    String? sinceId,
    bool isLocal = false,
    int limit = 30,
  });
}

/// See also [Notes].
@ProviderFor(Notes)
const notesProvider = NotesFamily();

/// See also [Notes].
class NotesFamily extends Family<AsyncValue<List<Note>>> {
  /// See also [Notes].
  const NotesFamily();

  /// See also [Notes].
  NotesProvider call({
    String? sinceId,
    bool isLocal = false,
    int limit = 30,
  }) {
    return NotesProvider(
      sinceId: sinceId,
      isLocal: isLocal,
      limit: limit,
    );
  }

  @override
  NotesProvider getProviderOverride(
    covariant NotesProvider provider,
  ) {
    return call(
      sinceId: provider.sinceId,
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
  String? get name => r'notesProvider';
}

/// See also [Notes].
class NotesProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Notes, List<Note>> {
  /// See also [Notes].
  NotesProvider({
    String? sinceId,
    bool isLocal = false,
    int limit = 30,
  }) : this._internal(
          () => Notes()
            ..sinceId = sinceId
            ..isLocal = isLocal
            ..limit = limit,
          from: notesProvider,
          name: r'notesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notesHash,
          dependencies: NotesFamily._dependencies,
          allTransitiveDependencies: NotesFamily._allTransitiveDependencies,
          sinceId: sinceId,
          isLocal: isLocal,
          limit: limit,
        );

  NotesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sinceId,
    required this.isLocal,
    required this.limit,
  }) : super.internal();

  final String? sinceId;
  final bool isLocal;
  final int limit;

  @override
  FutureOr<List<Note>> runNotifierBuild(
    covariant Notes notifier,
  ) {
    return notifier.build(
      sinceId: sinceId,
      isLocal: isLocal,
      limit: limit,
    );
  }

  @override
  Override overrideWith(Notes Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotesProvider._internal(
        () => create()
          ..sinceId = sinceId
          ..isLocal = isLocal
          ..limit = limit,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sinceId: sinceId,
        isLocal: isLocal,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Notes, List<Note>> createElement() {
    return _NotesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotesProvider &&
        other.sinceId == sinceId &&
        other.isLocal == isLocal &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sinceId.hashCode);
    hash = _SystemHash.combine(hash, isLocal.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotesRef on AutoDisposeAsyncNotifierProviderRef<List<Note>> {
  /// The parameter `sinceId` of this provider.
  String? get sinceId;

  /// The parameter `isLocal` of this provider.
  bool get isLocal;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _NotesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Notes, List<Note>>
    with NotesRef {
  _NotesProviderElement(super.provider);

  @override
  String? get sinceId => (origin as NotesProvider).sinceId;
  @override
  bool get isLocal => (origin as NotesProvider).isLocal;
  @override
  int get limit => (origin as NotesProvider).limit;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
