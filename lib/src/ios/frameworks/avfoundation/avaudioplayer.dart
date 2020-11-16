// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
import 'package:sounds/src/ios/frameworks/avfoundation/nsurl.dart';

import '../../shade_player_ios.dart';
import 'hacks.dart';
// ignore_for_file: public_member_api_docs

@native
class AVAudioPlayer extends NSObject {
  AVAudioPlayer([Class isa]) : super(isa ?? Class('AVAudioPlayer'));
  AVAudioPlayer.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  bool get playing {
    return perform(SEL('playing')) as bool;
  }

  set playing(bool playing) =>
      perform(SEL('setPlaying:'), args: <dynamic>[playing]);

  int get numberOfChannels {
    var channelsNSU = perform(SEL('numberOfChannels')) as NSUInteger;
    return channelsNSU.raw;
  }

  set numberOfChannels(int numberOfChannels) {
    var nsu = NSUInteger(numberOfChannels);
    perform(SEL('setNumberOfChannels:'), args: <dynamic>[nsu]);
  }

  Duration get duration {
    var result = perform(SEL('duration'), decodeRetVal: false) as Pointer<Void>;
    var time = NSTimeInterval.fromPointer(result);
    return Duration(milliseconds: time.value ~/ 1000.0);
  }

  set duration(Duration duration) {
    var interval = NSTimeInterval(duration.inMilliseconds * 1000.0);
    return perform(SEL('setDuration:'), args: <dynamic>[interval]);
  }

/*
  String get currentDevice {
    Pointer<Void> result = perform(SEL('currentDevice'), decodeRetVal: false);
    return NSString.fromPointer(result).raw;
  }
  @NativeAvailable(macos: '10.13')
  @NativeUnavailable(ios, watchos, tvos)
  set currentDevice(String currentDevice) =>
      perform(SEL('setCurrentDevice:'), args: <dynamic>[currentDevice]);
*/
  AVAudioPlayerDelegate get delegate {
    var result = perform(SEL('delegate'), decodeRetVal: false) as Pointer<Void>;
    return AVAudioPlayerDelegate.fromPointer(result);
  }

  set delegate(AVAudioPlayerDelegate delegate) =>
      perform(SEL('setDelegate:'), args: <dynamic>[delegate]);
/*
  NSURL get url {
    Pointer<Void> result = perform(SEL('url'), decodeRetVal: false);
    return NSURL.fromPointer(result);
  }

  set url(NSURL url) => perform(SEL('setUrl:'), args: <dynamic>[url]);
*/
  NSData get data {
    Pointer<Void> result =
        perform(SEL('data'), decodeRetVal: false) as Pointer<Void>;
    return NSData.fromPointer(result);
  }

  set data(NSData data) => perform(SEL('setData:'), args: <dynamic>[data]);
  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  double get pan {
    return perform(SEL('pan')) as double;
  }

  /*

  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  set pan(double pan) => perform(SEL('setPan:'), args: <dynamic>[pan]);
  */
  double get volume {
    return perform(SEL('volume')) as double;
  }

  set volume(double volume) =>
      perform(SEL('setVolume:'), args: <dynamic>[volume]);

  bool get enableRate {
    return perform(SEL('enableRate')) as bool;
  }

  set enableRate(bool enableRate) =>
      perform(SEL('setEnableRate:'), args: <dynamic>[enableRate]);
  double get rate {
    return perform(SEL('rate')) as double;
  }

  @NativeAvailable(macos: '10.8', ios: '5.0', watchos: '2.0', tvos: '9.0')
  set rate(double rate) => perform(SEL('setRate:'), args: <dynamic>[rate]);

  Duration get currentTime {
    var result =
        perform(SEL('currentTime'), decodeRetVal: false) as Pointer<Void>;
    var interval = NSTimeInterval.fromPointer(result);

    return Duration(milliseconds: interval.value ~/ 1000.0);
  }

  /// sets the playback position to the given offset
  set currentTime(Duration offset) {
    var interval = NSTimeInterval(offset.inMilliseconds * 1000.0);
    return perform(SEL('setCurrentTime:'), args: <dynamic>[interval]);
  }

  NSTimeInterval get deviceCurrentTime {
    var result =
        perform(SEL('deviceCurrentTime'), decodeRetVal: false) as Pointer<Void>;
    return NSTimeInterval.fromPointer(result);
  }

  set deviceCurrentTime(NSTimeInterval deviceCurrentTime) =>
      perform(SEL('setDeviceCurrentTime:'), args: <dynamic>[deviceCurrentTime]);

  NSInteger get numberOfLoops {
    return perform(SEL('numberOfLoops')) as NSInteger;
  }

  set numberOfLoops(NSInteger numberOfLoops) =>
      perform(SEL('setNumberOfLoops:'), args: <dynamic>[numberOfLoops]);
  id get settings {
    var result = perform(SEL('settings'), decodeRetVal: false) as Pointer<Void>;
    return id(result);
  }
/*
  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  set settings(id settings) => perform(SEL('setSettings:'), args: <dynamic>[settings]);
  @NativeAvailable(macos: '10.12', ios: '10.0', watchos: '3.0', tvos: '10.0')
  AVAudioFormat get format {
    Pointer<Void> result = perform(SEL('format'), decodeRetVal: false);
    return AVAudioFormat.fromPointer(result);
  }

  @NativeAvailable(macos: '10.12', ios: '10.0', watchos: '3.0', tvos: '10.0')
  set format(AVAudioFormat format) =>
      perform(SEL('setFormat:'), args: <dynamic>[format]);

  bool get meteringEnabled {
    return perform(SEL('meteringEnabled'));
  }

  set meteringEnabled(bool meteringEnabled) =>
      perform(SEL('setMeteringEnabled:'), args: <dynamic>[meteringEnabled]);
  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionChannelDescription get channelAssignments {
    Pointer<Void> result =
        perform(SEL('channelAssignments'), decodeRetVal: false);
    return AVAudioSessionChannelDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set channelAssignments(AVAudioSessionChannelDescription channelAssignments) =>
      perform(SEL('setChannelAssignments:'), args: <dynamic>[channelAssignments]);

      */

  AVAudioPlayer.init(URL url)
      : this.initWithContentsOfURLError(
            NSURL.fileURLWithPath(url.fileURLWithPath));

  AVAudioPlayer.initWithContentsOfURLError(NSURL url,
      {NSObjectRef<NSError> outError})
      : super.fromPointer(_initWithContentsOfURLError(url, outError));

  static Pointer<Void> _initWithContentsOfURLError(
      NSURL url, NSObjectRef<NSError> outError) {
    var target = alloc(Class('AVAudioPlayer'));
    var sel = SEL('initWithContentsOfURL:error:');
    return msgSend(target, sel,
        args: <dynamic>[url, outError], decodeRetVal: false) as Pointer<Void>;
  }

  AVAudioPlayer.initWithData(NSData data)
      : super.fromPointer(_initWithDataError(data, null));

  AVAudioPlayer.initWithDataError(NSData data, NSObjectRef<NSError> outError)
      : super.fromPointer(_initWithDataError(data, outError));

  static Pointer<Void> _initWithDataError(
      NSData data, NSObjectRef<NSError> outError) {
    Pointer<Void> target = alloc(Class('AVAudioPlayer'));
    SEL sel = SEL('initWithData:error:');
    return msgSend(target, sel,
        args: <dynamic>[data, outError], decodeRetVal: false) as Pointer<Void>;
  }

/*
  AVAudioPlayer.initWithContentsOfURLFileTypeHintError(
      NSURL url, NSObjectRef<NSError> outError, {String utiString})
      : super.fromPointer(
            _initWithContentsOfURLFileTypeHintError(url, utiString, outError));

  static Pointer<Void> _initWithContentsOfURLFileTypeHintError(
      NSURL url, NSObjectRef<NSError> outError,
      {String utiString}) {
    Pointer<Void> target = alloc(Class('AVAudioPlayer'));
    SEL sel = SEL('initWithContentsOfURL:fileTypeHint:error:');
    return msgSend(target, sel,
        args: <dynamic>[url, utiString, outError], decodeRetVal: false);
  }

  AVAudioPlayer.initWithDataFileTypeHintError(
      NSData data, NSObjectRef<NSError> outError, {String utiString})
      : super.fromPointer(
            _initWithDataFileTypeHintError(data, utiString, outError));

  static Pointer<Void> _initWithDataFileTypeHintError(
      NSData data, NSObjectRef<NSError> outError,
      {String utiString}) {
    Pointer<Void> target = alloc(Class('AVAudioPlayer'));
    SEL sel = SEL('initWithData:fileTypeHint:error:');
    return msgSend(target, sel,
        args: <dynamic>[data, utiString, outError], decodeRetVal: false);
  }
  */
  bool prepareToPlay() {
    return perform(SEL('prepareToPlay')) as bool;
  }

  bool play() {
    return perform(SEL('play')) as bool;
  }
  //handmade possibly should be skipping to next song instead
  bool skipForward(NSTimeInterval time) {
    if (time.value.toInt() >= currentTime.inSeconds) {
      return playAtTime(time);
    } else {
      return false;
    }
  }
  //handmade possibly should be skipping to previous song instead
  bool skipBackward(NSTimeInterval time) {
    if (time.value.toInt() <= currentTime.inSeconds) {
      return playAtTime(time);
    } else {
      return false;
    }
  }
  
  bool playAtTime(NSTimeInterval time) {
    return perform(SEL('playAtTime:'), args: <dynamic>[time]) as bool;
  }

  void pause() {
    perform(SEL('pause'));
  }

  //haven't checked but pretty sure this class has a resume
  void resume() {
    perform(SEL('resume'));
  }

  void stop() {
    perform(SEL('stop'));
  }

  /*
  @NativeAvailable(macos: '10.12', ios: '10.0', watchos: '3.0', tvos: '10.0')
  void setVolumeFadeDuration(double volume, NSTimeInterval duration) {
    perform(SEL('setVolume:fadeDuration:'), args: <dynamic>[volume, duration]);
  }

  void updateMeters() {
    perform(SEL('updateMeters'));
  }

  double peakPowerForChannel(NSUInteger channelNumber) {
    return perform(SEL('peakPowerForChannel:'), args: <dynamic>[channelNumber]);
  }

  double averagePowerForChannel(NSUInteger channelNumber) {
    return perform(SEL('averagePowerForChannel:'), args: <dynamic>[channelNumber]);
  }
}

abstract class AVAudioPlayerDelegate {
  registerAVAudioPlayerDelegate() {
    registerProtocolCallback(this, audioPlayerDidFinishPlayingSuccessfully,
        'audioPlayerDidFinishPlaying:successfully:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerDecodeErrorDidOccurError,
        'audioPlayerDecodeErrorDidOccur:error:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerBeginInterruption,
        'audioPlayerBeginInterruption:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerEndInterruptionWithOptions,
        'audioPlayerEndInterruption:withOptions:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerEndInterruptionWithFlags,
        'audioPlayerEndInterruption:withFlags:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerEndInterruption,
        'audioPlayerEndInterruption:', AVAudioPlayerDelegate);
  }

  void audioPlayerDidFinishPlayingSuccessfully(AVAudioPlayer player, bool flag);
  void audioPlayerDecodeErrorDidOccurError(AVAudioPlayer player,
      {NSError error});
  void audioPlayerBeginInterruption(AVAudioPlayer player);
  void audioPlayerEndInterruptionWithOptions(
      AVAudioPlayer player, NSUInteger flags);
  void audioPlayerEndInterruptionWithFlags(
      AVAudioPlayer player, NSUInteger flags);
  void audioPlayerEndInterruption(AVAudioPlayer player);
  */
}
