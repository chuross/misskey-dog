// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_text.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$separateInlineSpansHash() =>
    r'1d39ad0954e61f327fc240e6eafde94935431b2d';

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

/// See also [_separateInlineSpans].
@ProviderFor(_separateInlineSpans)
const _separateInlineSpansProvider = _SeparateInlineSpansFamily();

/// See also [_separateInlineSpans].
class _SeparateInlineSpansFamily extends Family<List<InlineSpan>> {
  /// See also [_separateInlineSpans].
  const _SeparateInlineSpansFamily();

  /// See also [_separateInlineSpans].
  _SeparateInlineSpansProvider call({
    required String text,
    required double height,
  }) {
    return _SeparateInlineSpansProvider(
      text: text,
      height: height,
    );
  }

  @override
  _SeparateInlineSpansProvider getProviderOverride(
    covariant _SeparateInlineSpansProvider provider,
  ) {
    return call(
      text: provider.text,
      height: provider.height,
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
  String? get name => r'_separateInlineSpansProvider';
}

/// See also [_separateInlineSpans].
class _SeparateInlineSpansProvider
    extends AutoDisposeProvider<List<InlineSpan>> {
  /// See also [_separateInlineSpans].
  _SeparateInlineSpansProvider({
    required String text,
    required double height,
  }) : this._internal(
          (ref) => _separateInlineSpans(
            ref as _SeparateInlineSpansRef,
            text: text,
            height: height,
          ),
          from: _separateInlineSpansProvider,
          name: r'_separateInlineSpansProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$separateInlineSpansHash,
          dependencies: _SeparateInlineSpansFamily._dependencies,
          allTransitiveDependencies:
              _SeparateInlineSpansFamily._allTransitiveDependencies,
          text: text,
          height: height,
        );

  _SeparateInlineSpansProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.text,
    required this.height,
  }) : super.internal();

  final String text;
  final double height;

  @override
  Override overrideWith(
    List<InlineSpan> Function(_SeparateInlineSpansRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _SeparateInlineSpansProvider._internal(
        (ref) => create(ref as _SeparateInlineSpansRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        text: text,
        height: height,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<InlineSpan>> createElement() {
    return _SeparateInlineSpansProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _SeparateInlineSpansProvider &&
        other.text == text &&
        other.height == height;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);
    hash = _SystemHash.combine(hash, height.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _SeparateInlineSpansRef on AutoDisposeProviderRef<List<InlineSpan>> {
  /// The parameter `text` of this provider.
  String get text;

  /// The parameter `height` of this provider.
  double get height;
}

class _SeparateInlineSpansProviderElement
    extends AutoDisposeProviderElement<List<InlineSpan>>
    with _SeparateInlineSpansRef {
  _SeparateInlineSpansProviderElement(super.provider);

  @override
  String get text => (origin as _SeparateInlineSpansProvider).text;
  @override
  double get height => (origin as _SeparateInlineSpansProvider).height;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
