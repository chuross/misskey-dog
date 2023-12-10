// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localEmojisHash() => r'3dc6cd4173515a0953f79c023e4d5bad3a4e07fe';

/// See also [localEmojis].
@ProviderFor(localEmojis)
final localEmojisProvider =
    AutoDisposeFutureProvider<List<LocalEmoji>>.internal(
  localEmojis,
  name: r'localEmojisProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$localEmojisHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalEmojisRef = AutoDisposeFutureProviderRef<List<LocalEmoji>>;
String _$localEmojiMapHash() => r'b864eb188b128accfbe35f89eb05417cf776220e';

/// See also [_localEmojiMap].
@ProviderFor(_localEmojiMap)
final _localEmojiMapProvider =
    AutoDisposeFutureProvider<Map<String, LocalEmoji>>.internal(
  _localEmojiMap,
  name: r'_localEmojiMapProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localEmojiMapHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _LocalEmojiMapRef
    = AutoDisposeFutureProviderRef<Map<String, LocalEmoji>>;
String _$localEmojiHash() => r'0df51af9a15f0861fb32be111ce0e88d3e600ebc';

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

/// See also [localEmoji].
@ProviderFor(localEmoji)
const localEmojiProvider = LocalEmojiFamily();

/// See also [localEmoji].
class LocalEmojiFamily extends Family<AsyncValue<LocalEmoji>> {
  /// See also [localEmoji].
  const LocalEmojiFamily();

  /// See also [localEmoji].
  LocalEmojiProvider call({
    required String emojiName,
  }) {
    return LocalEmojiProvider(
      emojiName: emojiName,
    );
  }

  @override
  LocalEmojiProvider getProviderOverride(
    covariant LocalEmojiProvider provider,
  ) {
    return call(
      emojiName: provider.emojiName,
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
  String? get name => r'localEmojiProvider';
}

/// See also [localEmoji].
class LocalEmojiProvider extends AutoDisposeFutureProvider<LocalEmoji> {
  /// See also [localEmoji].
  LocalEmojiProvider({
    required String emojiName,
  }) : this._internal(
          (ref) => localEmoji(
            ref as LocalEmojiRef,
            emojiName: emojiName,
          ),
          from: localEmojiProvider,
          name: r'localEmojiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localEmojiHash,
          dependencies: LocalEmojiFamily._dependencies,
          allTransitiveDependencies:
              LocalEmojiFamily._allTransitiveDependencies,
          emojiName: emojiName,
        );

  LocalEmojiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.emojiName,
  }) : super.internal();

  final String emojiName;

  @override
  Override overrideWith(
    FutureOr<LocalEmoji> Function(LocalEmojiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocalEmojiProvider._internal(
        (ref) => create(ref as LocalEmojiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        emojiName: emojiName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LocalEmoji> createElement() {
    return _LocalEmojiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalEmojiProvider && other.emojiName == emojiName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, emojiName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocalEmojiRef on AutoDisposeFutureProviderRef<LocalEmoji> {
  /// The parameter `emojiName` of this provider.
  String get emojiName;
}

class _LocalEmojiProviderElement
    extends AutoDisposeFutureProviderElement<LocalEmoji> with LocalEmojiRef {
  _LocalEmojiProviderElement(super.provider);

  @override
  String get emojiName => (origin as LocalEmojiProvider).emojiName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
