// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfoundation/avbase.dart';
// You can uncomment this line when this package is ready.
// import 'package:foundation/foundation.dart';
// You can uncomment this line when this package is ready.
// import 'package:coremedia/cmtime.dart';
// You can uncomment this line when this package is ready.
// import 'package:coremedia/cmtimerange.dart';

extension NSValueNSValueAVFoundationExtensions on NSValue {
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  CMTime get CMTimeValue {
Pointer<Void> result = perform(SEL('CMTimeValue'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  set CMTimeValue(CMTime CMTimeValue) => perform(SEL('setCMTimeValue:'), args: [CMTimeValue]);
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  CMTimeRange get CMTimeRangeValue {
Pointer<Void> result = perform(SEL('CMTimeRangeValue'), decodeRetVal: false);
    return CMTimeRange.fromPointer(result);

}
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  set CMTimeRangeValue(CMTimeRange CMTimeRangeValue) => perform(SEL('setCMTimeRangeValue:'), args: [CMTimeRangeValue]);
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  CMTimeMapping get CMTimeMappingValue {
Pointer<Void> result = perform(SEL('CMTimeMappingValue'), decodeRetVal: false);
    return CMTimeMapping.fromPointer(result);

}
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  set CMTimeMappingValue(CMTimeMapping CMTimeMappingValue) => perform(SEL('setCMTimeMappingValue:'), args: [CMTimeMappingValue]);
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  static NSValue valueWithCMTime(CMTime time) {
    Pointer<Void> result = Class('NSValueAVFoundationExtensions').perform(SEL('valueWithCMTime:'), args: [time], decodeRetVal: false);
    return NSValue.fromPointer(result);
  }
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  static NSValue valueWithCMTimeRange(CMTimeRange timeRange) {
    Pointer<Void> result = Class('NSValueAVFoundationExtensions').perform(SEL('valueWithCMTimeRange:'), args: [timeRange], decodeRetVal: false);
    return NSValue.fromPointer(result);
  }
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  static NSValue valueWithCMTimeMapping(CMTimeMapping timeMapping) {
    Pointer<Void> result = Class('NSValueAVFoundationExtensions').perform(SEL('valueWithCMTimeMapping:'), args: [timeMapping], decodeRetVal: false);
    return NSValue.fromPointer(result);
  }

}

extension NSCoderAVTimeCoding on NSCoder {
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  void encodeCMTimeForKey(CMTime time, String key) {
     perform(SEL('encodeCMTime:forKey:'), args: [time,key]);
  }
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  CMTime decodeCMTimeForKey(String key) {
    Pointer<Void> result = perform(SEL('decodeCMTimeForKey:'), args: [key], decodeRetVal: false);
    return CMTime.fromPointer(result);
  }
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  void encodeCMTimeRangeForKey(CMTimeRange timeRange, String key) {
     perform(SEL('encodeCMTimeRange:forKey:'), args: [timeRange,key]);
  }
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  CMTimeRange decodeCMTimeRangeForKey(String key) {
    Pointer<Void> result = perform(SEL('decodeCMTimeRangeForKey:'), args: [key], decodeRetVal: false);
    return CMTimeRange.fromPointer(result);
  }
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  void encodeCMTimeMappingForKey(CMTimeMapping timeMapping, String key) {
     perform(SEL('encodeCMTimeMapping:forKey:'), args: [timeMapping,key]);
  }
  @NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
  CMTimeMapping decodeCMTimeMappingForKey(String key) {
    Pointer<Void> result = perform(SEL('decodeCMTimeMappingForKey:'), args: [key], decodeRetVal: false);
    return CMTimeMapping.fromPointer(result);
  }

}
// You can uncomment this line when this package is ready.
// import 'package:avfcore/avtime.dart';