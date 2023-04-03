// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_item_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductItemView {
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get thumbnail => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;
  dynamic get discount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductItemViewCopyWith<ProductItemView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemViewCopyWith<$Res> {
  factory $ProductItemViewCopyWith(
          ProductItemView value, $Res Function(ProductItemView) then) =
      _$ProductItemViewCopyWithImpl<$Res, ProductItemView>;
  @useResult
  $Res call(
      {dynamic name,
      dynamic thumbnail,
      dynamic price,
      dynamic rating,
      dynamic discount});
}

/// @nodoc
class _$ProductItemViewCopyWithImpl<$Res, $Val extends ProductItemView>
    implements $ProductItemViewCopyWith<$Res> {
  _$ProductItemViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? discount = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductItemViewCopyWith<$Res>
    implements $ProductItemViewCopyWith<$Res> {
  factory _$$_ProductItemViewCopyWith(
          _$_ProductItemView value, $Res Function(_$_ProductItemView) then) =
      __$$_ProductItemViewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic name,
      dynamic thumbnail,
      dynamic price,
      dynamic rating,
      dynamic discount});
}

/// @nodoc
class __$$_ProductItemViewCopyWithImpl<$Res>
    extends _$ProductItemViewCopyWithImpl<$Res, _$_ProductItemView>
    implements _$$_ProductItemViewCopyWith<$Res> {
  __$$_ProductItemViewCopyWithImpl(
      _$_ProductItemView _value, $Res Function(_$_ProductItemView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$_ProductItemView(
      name: freezed == name ? _value.name! : name,
      thumbnail: freezed == thumbnail ? _value.thumbnail! : thumbnail,
      price: freezed == price ? _value.price! : price,
      rating: freezed == rating ? _value.rating! : rating,
      discount: freezed == discount ? _value.discount! : discount,
    ));
  }
}

/// @nodoc

class _$_ProductItemView implements _ProductItemView {
  const _$_ProductItemView(
      {this.name = "",
      this.thumbnail = "",
      this.price = 0.0,
      this.rating = 0.0,
      this.discount = 0.0});

  @override
  @JsonKey()
  final dynamic name;
  @override
  @JsonKey()
  final dynamic thumbnail;
  @override
  @JsonKey()
  final dynamic price;
  @override
  @JsonKey()
  final dynamic rating;
  @override
  @JsonKey()
  final dynamic discount;

  @override
  String toString() {
    return 'ProductItemView(name: $name, thumbnail: $thumbnail, price: $price, rating: $rating, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductItemView &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.discount, discount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(discount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductItemViewCopyWith<_$_ProductItemView> get copyWith =>
      __$$_ProductItemViewCopyWithImpl<_$_ProductItemView>(this, _$identity);
}

abstract class _ProductItemView implements ProductItemView {
  const factory _ProductItemView(
      {final dynamic name,
      final dynamic thumbnail,
      final dynamic price,
      final dynamic rating,
      final dynamic discount}) = _$_ProductItemView;

  @override
  dynamic get name;
  @override
  dynamic get thumbnail;
  @override
  dynamic get price;
  @override
  dynamic get rating;
  @override
  dynamic get discount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductItemViewCopyWith<_$_ProductItemView> get copyWith =>
      throw _privateConstructorUsedError;
}
