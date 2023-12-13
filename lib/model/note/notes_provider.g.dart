// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localNoteIdsWithCacheHash() =>
    r'02e396f020af93c7e5f06793920a811616f15912';

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

abstract class _$LocalNoteIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final bool? hasFiles;

  FutureOr<List<String>> build({
    bool? hasFiles,
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
  }) {
    return LocalNoteIdsWithCacheProvider(
      hasFiles: hasFiles,
    );
  }

  @override
  LocalNoteIdsWithCacheProvider getProviderOverride(
    covariant LocalNoteIdsWithCacheProvider provider,
  ) {
    return call(
      hasFiles: provider.hasFiles,
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
  }) : this._internal(
          () => LocalNoteIdsWithCache()..hasFiles = hasFiles,
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
        );

  LocalNoteIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hasFiles,
  }) : super.internal();

  final bool? hasFiles;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant LocalNoteIdsWithCache notifier,
  ) {
    return notifier.build(
      hasFiles: hasFiles,
    );
  }

  @override
  Override overrideWith(LocalNoteIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocalNoteIdsWithCacheProvider._internal(
        () => create()..hasFiles = hasFiles,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hasFiles: hasFiles,
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
    return other is LocalNoteIdsWithCacheProvider && other.hasFiles == hasFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocalNoteIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;
}

class _LocalNoteIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LocalNoteIdsWithCache,
        List<String>> with LocalNoteIdsWithCacheRef {
  _LocalNoteIdsWithCacheProviderElement(super.provider);

  @override
  bool? get hasFiles => (origin as LocalNoteIdsWithCacheProvider).hasFiles;
}

String _$globalNoteIdsWithCacheHash() =>
    r'767573e1d10d9b5d76ffa98f8aff2ec1fa17118d';

abstract class _$GlobalNoteIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final bool? hasFiles;

  FutureOr<List<String>> build({
    bool? hasFiles,
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
  }) {
    return GlobalNoteIdsWithCacheProvider(
      hasFiles: hasFiles,
    );
  }

  @override
  GlobalNoteIdsWithCacheProvider getProviderOverride(
    covariant GlobalNoteIdsWithCacheProvider provider,
  ) {
    return call(
      hasFiles: provider.hasFiles,
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
  }) : this._internal(
          () => GlobalNoteIdsWithCache()..hasFiles = hasFiles,
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
        );

  GlobalNoteIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hasFiles,
  }) : super.internal();

  final bool? hasFiles;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant GlobalNoteIdsWithCache notifier,
  ) {
    return notifier.build(
      hasFiles: hasFiles,
    );
  }

  @override
  Override overrideWith(GlobalNoteIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: GlobalNoteIdsWithCacheProvider._internal(
        () => create()..hasFiles = hasFiles,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hasFiles: hasFiles,
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
        other.hasFiles == hasFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GlobalNoteIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;
}

class _GlobalNoteIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GlobalNoteIdsWithCache,
        List<String>> with GlobalNoteIdsWithCacheRef {
  _GlobalNoteIdsWithCacheProviderElement(super.provider);

  @override
  bool? get hasFiles => (origin as GlobalNoteIdsWithCacheProvider).hasFiles;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
