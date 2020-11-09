// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudiosessionroute.dart';

extension AVAudioSessionAVAudioSessionDeprecated on AVAudioSession {
  @NativeDeprecated("No longer supported", ios: ['4.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  AVAudioSessionDelegate get delegate {
Pointer<Void> result = perform(SEL('delegate'), decodeRetVal: false);
    return AVAudioSessionDelegate.fromPointer(result);

}
  @NativeDeprecated("No longer supported", ios: ['4.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  set delegate(AVAudioSessionDelegate delegate) => perform(SEL('setDelegate:'), args: [delegate]);
  @NativeDeprecatedWithReplacement("isInputAvailable", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  bool get inputIsAvailable {
return perform(SEL('inputIsAvailable'));

}
  @NativeDeprecatedWithReplacement("isInputAvailable", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  set inputIsAvailable(bool inputIsAvailable) => perform(SEL('setInputIsAvailable:'), args: [inputIsAvailable]);
  @NativeDeprecatedWithReplacement("sampleRate", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  double get currentHardwareSampleRate {
return perform(SEL('currentHardwareSampleRate'));

}
  @NativeDeprecatedWithReplacement("sampleRate", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  set currentHardwareSampleRate(double currentHardwareSampleRate) => perform(SEL('setCurrentHardwareSampleRate:'), args: [currentHardwareSampleRate]);
  @NativeDeprecatedWithReplacement("inputNumberOfChannels", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  NSInteger get currentHardwareInputNumberOfChannels {
return perform(SEL('currentHardwareInputNumberOfChannels'));

}
  @NativeDeprecatedWithReplacement("inputNumberOfChannels", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  set currentHardwareInputNumberOfChannels(NSInteger currentHardwareInputNumberOfChannels) => perform(SEL('setCurrentHardwareInputNumberOfChannels:'), args: [currentHardwareInputNumberOfChannels]);
  @NativeDeprecatedWithReplacement("outputNumberOfChannels", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  NSInteger get currentHardwareOutputNumberOfChannels {
return perform(SEL('currentHardwareOutputNumberOfChannels'));

}
  @NativeDeprecatedWithReplacement("outputNumberOfChannels", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  set currentHardwareOutputNumberOfChannels(NSInteger currentHardwareOutputNumberOfChannels) => perform(SEL('setCurrentHardwareOutputNumberOfChannels:'), args: [currentHardwareOutputNumberOfChannels]);
  @NativeDeprecatedWithReplacement("preferredSampleRate", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  double get preferredHardwareSampleRate {
return perform(SEL('preferredHardwareSampleRate'));

}
  @NativeDeprecatedWithReplacement("preferredSampleRate", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  set preferredHardwareSampleRate(double preferredHardwareSampleRate) => perform(SEL('setPreferredHardwareSampleRate:'), args: [preferredHardwareSampleRate]);
  @NativeDeprecatedWithReplacement("+sharedInstance", ios: ['3.0', '10.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  AVAudioSessionDeprecated init() {
    Pointer<Void> result = perform(SEL('init'), decodeRetVal: false);
    return AVAudioSessionDeprecated.fromPointer(result);
  }
  @NativeDeprecatedWithReplacement("-setActive:withOptions:error:", ios: ['4.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  bool setActiveWithFlagsError(bool active, NSInteger flags, NSObjectRef<NSError> outError) {
    return perform(SEL('setActive:withFlags:error:'), args: [active,flags,outError]);
  }
  @NativeDeprecatedWithReplacement("setPreferredSampleRate:error:", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(macos)
  bool setPreferredHardwareSampleRateError(double sampleRate, NSObjectRef<NSError> outError) {
    return perform(SEL('setPreferredHardwareSampleRate:error:'), args: [sampleRate,outError]);
  }

}

@NativeDeprecated("No longer supported", ios: ['3.0', '6.0'], macCatalyst: ['14.0', '14.0']) @NativeUnavailable(tvos, watchos, macos)
abstract class AVAudioSessionDelegate {
  registerAVAudioSessionDelegate() {
    registerProtocolCallback(this, beginInterruption, 'beginInterruption', AVAudioSessionDelegate);
    registerProtocolCallback(this, endInterruptionWithFlags, 'endInterruptionWithFlags:', AVAudioSessionDelegate);
    registerProtocolCallback(this, endInterruption, 'endInterruption', AVAudioSessionDelegate);
    registerProtocolCallback(this, inputIsAvailableChanged, 'inputIsAvailableChanged:', AVAudioSessionDelegate);
  }
  
  void beginInterruption();  @NativeAvailable(ios: '4.0', watchos: '2.0', tvos: '9.0')
  void endInterruptionWithFlags(NSUInteger flags);  
  void endInterruption();  
  void inputIsAvailableChanged(bool isInputAvailable);
}


@NativeDeprecatedWithReplacement("AVAudioSessionInterruptionOptions", ios: ['4.0', '6.0']) @NativeUnavailable(macos)
const int AVAudioSessionInterruptionFlags_ShouldResume = 1;



@NativeDeprecatedWithReplacement("AVAudioSessionSetActiveOptions", ios: ['4.0', '6.0']) @NativeUnavailable(macos)
const int AVAudioSessionSetActiveFlags_NotifyOthersOnDeactivation = 1;
