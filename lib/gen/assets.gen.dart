/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/add_member_icon.png
  AssetGenImage get addMemberIcon =>
      const AssetGenImage('assets/images/add_member_icon.png');

  /// File path: assets/images/features_icon.png
  AssetGenImage get featuresIcon =>
      const AssetGenImage('assets/images/features_icon.png');

  /// File path: assets/images/home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/images/home_icon.png');

  /// File path: assets/images/mail_icon.png
  AssetGenImage get mailIcon =>
      const AssetGenImage('assets/images/mail_icon.png');

  /// File path: assets/images/notifications_icon.png
  AssetGenImage get notificationsIcon =>
      const AssetGenImage('assets/images/notifications_icon.png');

  /// File path: assets/images/search_icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/images/search_icon.png');

  /// File path: assets/images/twitter_logo.png
  AssetGenImage get twitterLogo =>
      const AssetGenImage('assets/images/twitter_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        addMemberIcon,
        featuresIcon,
        homeIcon,
        mailIcon,
        notificationsIcon,
        searchIcon,
        twitterLogo
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
