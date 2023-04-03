// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsView {
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get thumbnail => throw _privateConstructorUsedError;
  dynamic get totalCount => throw _privateConstructorUsedError;
  dynamic get totalStock => throw _privateConstructorUsedError;
  List<ProductItemView> get productItemView =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsViewCopyWith<ProductsView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsViewCopyWith<$Res> {
  factory $ProductsViewCopyWith(
          ProductsView value, $Res Function(ProductsView) then) =
      _$ProductsViewCopyWithImpl<$Res, ProductsView>;
  @useResult
  $Res call(
      {dynamic name,
      dynamic thumbnail,
      dynamic totalCount,
      dynamic totalStock,
      List<ProductItemView> productItemView});
}

/// @nodoc
class _$ProductsViewCopyWithImpl<$Res, $Val extends ProductsView>
    implements $ProductsViewCopyWith<$Res> {
  _$ProductsViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? totalCount = freezed,
    Object? totalStock = freezed,
    Object? productItemView = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalStock: freezed == totalStock
          ? _value.totalStock
          : totalStock // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productItemView: null == productItemView
          ? _value.productItemView
          : productItemView // ignore: cast_nullable_to_non_nullable
              as List<ProductItemView>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsViewCopyWith<$Res>
    implements $ProductsViewCopyWith<$Res> {
  factory _$$_ProductsViewCopyWith(
          _$_ProductsView value, $Res Function(_$_ProductsView) then) =
      __$$_ProductsViewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic name,
      dynamic thumbnail,
      dynamic totalCount,
      dynamic totalStock,
      List<ProductItemView> productItemView});
}

/// @nodoc
class __$$_ProductsViewCopyWithImpl<$Res>
    extends _$ProductsViewCopyWithImpl<$Res, _$_ProductsView>
    implements _$$_ProductsViewCopyWith<$Res> {
  __$$_ProductsViewCopyWithImpl(
      _$_ProductsView _value, $Res Function(_$_ProductsView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? totalCount = freezed,
    Object? totalStock = freezed,
    Object? productItemView = null,
  }) {
    return _then(_$_ProductsView(
      name: freezed == name ? _value.name! : name,
      thumbnail: freezed == thumbnail ? _value.thumbnail! : thumbnail,
      totalCount: freezed == totalCount ? _value.totalCount! : totalCount,
      totalStock: freezed == totalStock ? _value.totalStock! : totalStock,
      productItemView: null == productItemView
          ? _value._productItemView
          : productItemView // ignore: cast_nullable_to_non_nullable
              as List<ProductItemView>,
    ));
  }
}

/// @nodoc

class _$_ProductsView implements _ProductsView {
  const _$_ProductsView(
      {this.name = "",
      this.thumbnail = "",
      this.totalCount = 0,
      this.totalStock = 0,
      final List<ProductItemView> productItemView = const []})
      : _productItemView = productItemView;

  @override
  @JsonKey()
  final dynamic name;
  @override
  @JsonKey()
  final dynamic thumbnail;
  @override
  @JsonKey()
  final dynamic totalCount;
  @override
  @JsonKey()
  final dynamic totalStock;
  final List<ProductItemView> _productItemView;
  @override
  @JsonKey()
  List<ProductItemView> get productItemView {
    if (_productItemView is EqualUnmodifiableListView) return _productItemView;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productItemView);
  }

  @override
  String toString() {
    return 'ProductsView(name: $name, thumbnail: $thumbnail, totalCount: $totalCount, totalStock: $totalStock, productItemView: $productItemView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsView &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.totalStock, totalStock) &&
            const DeepCollectionEquality()
                .equals(other._productItemView, _productItemView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(totalStock),
      const DeepCollectionEquality().hash(_productItemView));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsViewCopyWith<_$_ProductsView> get copyWith =>
      __$$_ProductsViewCopyWithImpl<_$_ProductsView>(this, _$identity);
}

abstract class _ProductsView implements ProductsView {
  const factory _ProductsView(
      {final dynamic name,
      final dynamic thumbnail,
      final dynamic totalCount,
      final dynamic totalStock,
      final List<ProductItemView> productItemView}) = _$_ProductsView;

  @override
  dynamic get name;
  @override
  dynamic get thumbnail;
  @override
  dynamic get totalCount;
  @override
  dynamic get totalStock;
  @override
  List<ProductItemView> get productItemView;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsViewCopyWith<_$_ProductsView> get copyWith =>
      throw _privateConstructorUsedError;
}
