// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emojiHash() => r'0ee4600387c49292f2278cd2072e6d27870f266f';

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

/// See also [emoji].
@ProviderFor(emoji)
const emojiProvider = EmojiFamily();

/// See also [emoji].
class EmojiFamily extends Family<AsyncValue<Emoji>> {
  /// See also [emoji].
  const EmojiFamily();

  /// See also [emoji].
  EmojiProvider call({
    required String emojiName,
  }) {
    return EmojiProvider(
      emojiName: emojiName,
    );
  }

  @override
  EmojiProvider getProviderOverride(
    covariant EmojiProvider provider,
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
  String? get name => r'emojiProvider';
}

/// See also [emoji].
class EmojiProvider extends AutoDisposeFutureProvider<Emoji> {
  /// See also [emoji].
  EmojiProvider({
    required String emojiName,
  }) : this._internal(
          (ref) => emoji(
            ref as EmojiRef,
            emojiName: emojiName,
          ),
          from: emojiProvider,
          name: r'emojiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$emojiHash,
          dependencies: EmojiFamily._dependencies,
          allTransitiveDependencies: EmojiFamily._allTransitiveDependencies,
          emojiName: emojiName,
        );

  EmojiProvider._internal(
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
    FutureOr<Emoji> Function(EmojiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmojiProvider._internal(
        (ref) => create(ref as EmojiRef),
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
  AutoDisposeFutureProviderElement<Emoji> createElement() {
    return _EmojiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiProvider && other.emojiName == emojiName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, emojiName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EmojiRef on AutoDisposeFutureProviderRef<Emoji> {
  /// The parameter `emojiName` of this provider.
  String get emojiName;
}

class _EmojiProviderElement extends AutoDisposeFutureProviderElement<Emoji>
    with EmojiRef {
  _EmojiProviderElement(super.provider);

  @override
  String get emojiName => (origin as EmojiProvider).emojiName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
