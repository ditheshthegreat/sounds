// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
import 'package:sounds/src/ios/frameworks/avfoundation/avaudiosessiontypes.dart';

import 'hacks.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudiosessiontypes.dart';
///This is a nasty hack
typedef AVAudioSessionLocation = Function(Pointer<Void> p);
dynamic Function(Pointer<Void> p) AVAudioSessionLocationFromPointer(Pointer<Void> p) {
  return AVAudioSessionLocation as dynamic Function(Pointer<Void> p);
}

typedef AVAudioSessionOrientation = Function(Pointer p);
dynamic Function(Pointer<Void> p) AVAudioSessionOrientationFromPointer(Pointer<Void> p) {
  return AVAudioSessionLocation as dynamic Function(Pointer<Void> p);
}

typedef AVAudioSessionPolarPattern = Function(Pointer p);
dynamic Function(Pointer<Void> p) AVAudioSessionPolarPatternFromPointer(Pointer<Void> p) {
  return AVAudioSessionLocation as dynamic Function(Pointer<Void> p);
}

@NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
@NativeUnavailable(macos)
@native
class AVAudioSessionChannelDescription extends NSObject {
  AVAudioSessionChannelDescription([Class isa])
      : super(isa ?? Class('AVAudioSessionChannelDescription'));
  AVAudioSessionChannelDescription.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  String get channelName {
    Pointer<Void> result =
        perform(SEL('channelName'), decodeRetVal: false) as Pointer<Void>;
    return NSString.fromPointer(result).raw;
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set channelName(String channelName) =>
      perform(SEL('setChannelName:'), args: <dynamic>[channelName]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  String get owningPortUID {
    Pointer<Void> result =
        perform(SEL('owningPortUID'), decodeRetVal: false) as Pointer<Void>;
    return NSString.fromPointer(result).raw;
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set owningPortUID(String owningPortUID) =>
      perform(SEL('setOwningPortUID:'), args: <dynamic>[owningPortUID]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  NSUInteger get channelNumber {
    return perform(SEL('channelNumber')) as NSUInteger;
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set channelNumber(NSUInteger channelNumber) =>
      perform(SEL('setChannelNumber:'), args: <dynamic>[channelNumber]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AudioChannelLabel get channelLabel {
    Pointer<Void> result =
        perform(SEL('channelLabel'), decodeRetVal: false) as Pointer<Void>;
    return AudioChannelLabel.fromPointer(result);
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set channelLabel(AudioChannelLabel channelLabel) =>
      perform(SEL('setChannelLabel:'), args: <dynamic>[channelLabel]);
}

@NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
@NativeUnavailable(macos)
@native
class AVAudioSessionDataSourceDescription extends NSObject {
  AVAudioSessionDataSourceDescription([Class isa])
      : super(isa ?? Class('AVAudioSessionDataSourceDescription'));
  AVAudioSessionDataSourceDescription.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  NSNumber get dataSourceID {
    Pointer<Void> result =
        perform(SEL('dataSourceID'), decodeRetVal: false) as Pointer<Void>;
    return NSNumber.fromPointer(result);
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set dataSourceID(NSNumber dataSourceID) =>
      perform(SEL('setDataSourceID:'), args: <dynamic>[dataSourceID]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  String get dataSourceName {
    Pointer<Void> result =
        perform(SEL('dataSourceName'), decodeRetVal: false) as Pointer<Void>;
    return NSString.fromPointer(result).raw;
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set dataSourceName(String dataSourceName) =>
      perform(SEL('setDataSourceName:'), args: <dynamic>[dataSourceName]);
  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionLocation get location {
    Pointer<Void> result =
        perform(SEL('location'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioSessionLocationFromPointer(result);
  }

  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set location(AVAudioSessionLocation location) =>
      perform(SEL('setLocation:'), args: <dynamic>[location]);
  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionOrientation get orientation {
    Pointer<Void> result =
        perform(SEL('orientation'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioSessionOrientationFromPointer(result) as AVAudioSessionOrientation;
  }

  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set orientation(AVAudioSessionOrientation orientation) =>
      perform(SEL('setOrientation:'), args: <dynamic>[orientation]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  AVAudioSessionPolarPattern get supportedPolarPatterns {
    Pointer<Void> result =
        perform(SEL('supportedPolarPatterns'), decodeRetVal: false)
            as Pointer<Void>;
    return AVAudioSessionPolarPatternFromPointer(result) as AVAudioSessionPolarPattern;
  }

  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  set supportedPolarPatterns(
          AVAudioSessionPolarPattern supportedPolarPatterns) =>
      perform(SEL('setSupportedPolarPatterns:'),
          args: <dynamic>[supportedPolarPatterns]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  AVAudioSessionPolarPattern get selectedPolarPattern {
    Pointer<Void> result =
        perform(SEL('selectedPolarPattern'), decodeRetVal: false)
            as Pointer<Void>;
    return AVAudioSessionPolarPatternFromPointer(result) as AVAudioSessionPolarPattern;
  }

  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  set selectedPolarPattern(AVAudioSessionPolarPattern selectedPolarPattern) =>
      perform(SEL('setSelectedPolarPattern:'),
          args: <dynamic>[selectedPolarPattern]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  AVAudioSessionPolarPattern get preferredPolarPattern {
    Pointer<Void> result =
        perform(SEL('preferredPolarPattern'), decodeRetVal: false)
            as Pointer<Void>;
    return AVAudioSessionPolarPatternFromPointer(result) as AVAudioSessionPolarPattern;
  }

  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  set preferredPolarPattern(AVAudioSessionPolarPattern preferredPolarPattern) =>
      perform(SEL('setPreferredPolarPattern:'),
          args: <dynamic>[preferredPolarPattern]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  bool setPreferredPolarPatternError(NSObjectRef<NSError> outError,
      {AVAudioSessionPolarPattern pattern}) {
    return perform(SEL('setPreferredPolarPattern:error:'),
        args: <dynamic>[pattern, outError]) as bool;
  }
}

@NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
@NativeUnavailable(macos)
@native
class AVAudioSessionPortDescription extends NSObject {
  AVAudioSessionPortDescription([Class isa])
      : super(isa ?? Class('AVAudioSessionPortDescription'));
  AVAudioSessionPortDescription.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionPort get portType {
    Pointer<Void> result =
        perform(SEL('portType'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioSessionPortFromPointer(result);
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set portType(AVAudioSessionPort portType) =>
      perform(SEL('setPortType:'), args: <dynamic>[portType]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  String get portName {
    Pointer<Void> result =
        perform(SEL('portName'), decodeRetVal: false) as Pointer<Void>;
    return NSString.fromPointer(result).raw;
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set portName(String portName) =>
      perform(SEL('setPortName:'), args: <dynamic>[portName]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  String get UID {
    Pointer<Void> result =
        perform(SEL('UID'), decodeRetVal: false) as Pointer<Void>;
    return NSString.fromPointer(result).raw;
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set UID(String UID) => perform(SEL('setUID:'), args: <dynamic>[UID]);
  @NativeAvailable(ios: '10.0', watchos: '3.0', tvos: '10.0')
  @NativeUnavailable(macos)
  bool get hasHardwareVoiceCallProcessing {
    return perform(SEL('hasHardwareVoiceCallProcessing')) as bool;
  }

  @NativeAvailable(ios: '10.0', watchos: '3.0', tvos: '10.0')
  @NativeUnavailable(macos)
  set hasHardwareVoiceCallProcessing(bool hasHardwareVoiceCallProcessing) =>
      perform(SEL('setHasHardwareVoiceCallProcessing:'),
          args: <dynamic>[hasHardwareVoiceCallProcessing]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionChannelDescription get channels {
    Pointer<Void> result =
        perform(SEL('channels'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioSessionChannelDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set channels(AVAudioSessionChannelDescription channels) =>
      perform(SEL('setChannels:'), args: <dynamic>[channels]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  AVAudioSessionDataSourceDescription get dataSources {
    Pointer<Void> result =
        perform(SEL('dataSources'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioSessionDataSourceDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  set dataSources(AVAudioSessionDataSourceDescription dataSources) =>
      perform(SEL('setDataSources:'), args: <dynamic>[dataSources]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  AVAudioSessionDataSourceDescription get selectedDataSource {
    Pointer<Void> result =
        perform(SEL('selectedDataSource'), decodeRetVal: false)
            as Pointer<Void>;
    return AVAudioSessionDataSourceDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  set selectedDataSource(
          AVAudioSessionDataSourceDescription selectedDataSource) =>
      perform(SEL('setSelectedDataSource:'),
          args: <dynamic>[selectedDataSource]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  AVAudioSessionDataSourceDescription get preferredDataSource {
    Pointer<Void> result =
        perform(SEL('preferredDataSource'), decodeRetVal: false)
            as Pointer<Void>;
    return AVAudioSessionDataSourceDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  set preferredDataSource(
          AVAudioSessionDataSourceDescription preferredDataSource) =>
      perform(SEL('setPreferredDataSource:'),
          args: <dynamic>[preferredDataSource]);
  @NativeAvailable(ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos, macos)
  bool setPreferredDataSourceError(NSObjectRef<NSError> outError,
      {AVAudioSessionDataSourceDescription dataSource}) {
    return perform(SEL('setPreferredDataSource:error:'),
        args: <dynamic>[dataSource, outError]) as bool;
  }
}

@NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
@NativeUnavailable(macos)
@native
class AVAudioSessionRouteDescription extends NSObject {
  AVAudioSessionRouteDescription([Class isa])
      : super(isa ?? Class('AVAudioSessionRouteDescription'));
  AVAudioSessionRouteDescription.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionPortDescription get inputs {
    Pointer<Void> result =
        perform(SEL('inputs'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioSessionPortDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set inputs(AVAudioSessionPortDescription inputs) =>
      perform(SEL('setInputs:'), args: <dynamic>[inputs]);
  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionPortDescription get outputs {
    Pointer<Void> result =
        perform(SEL('outputs'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioSessionPortDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '6.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set outputs(AVAudioSessionPortDescription outputs) =>
      perform(SEL('setOutputs:'), args: <dynamic>[outputs]);
}
