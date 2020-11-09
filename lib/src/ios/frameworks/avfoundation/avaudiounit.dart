// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudionode.dart';
// You can uncomment this line when this package is ready.
// import 'package:audiotoolbox/audiounit.dart';

@NativeAvailable(macos: '10.10', ios: '8.0', tvos: '9.0') @NativeUnavailable(watchos)
@native
class AVAudioUnit extends AVAudioNode {
  AVAudioUnit([Class isa]) : super(isa ?? Class('AVAudioUnit'));
  AVAudioUnit.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  AudioComponentDescription get audioComponentDescription {
Pointer<Void> result = perform(SEL('audioComponentDescription'), decodeRetVal: false);
    return AudioComponentDescription.fromPointer(result);

}
  
  set audioComponentDescription(AudioComponentDescription audioComponentDescription) => perform(SEL('setAudioComponentDescription:'), args: [audioComponentDescription]);
  
  AudioUnit get audioUnit {
Pointer<Void> result = perform(SEL('audioUnit'), decodeRetVal: false);
    return AudioUnit.fromPointer(result);

}
  
  set audioUnit(AudioUnit audioUnit) => perform(SEL('setAudioUnit:'), args: [audioUnit]);
  @NativeAvailable(macos: '10.11', ios: '9.0', tvos: '9.0')
  AUAudioUnit get AUAudioUnit {
Pointer<Void> result = perform(SEL('AUAudioUnit'), decodeRetVal: false);
    return AUAudioUnit.fromPointer(result);

}
  @NativeAvailable(macos: '10.11', ios: '9.0', tvos: '9.0')
  set AUAudioUnit(AUAudioUnit AUAudioUnit) => perform(SEL('setAUAudioUnit:'), args: [AUAudioUnit]);
  
  String get name {
Pointer<Void> result = perform(SEL('name'), decodeRetVal: false);
    return NSString.fromPointer(result).raw;

}
  
  set name(String name) => perform(SEL('setName:'), args: [name]);
  
  String get manufacturerName {
Pointer<Void> result = perform(SEL('manufacturerName'), decodeRetVal: false);
    return NSString.fromPointer(result).raw;

}
  
  set manufacturerName(String manufacturerName) => perform(SEL('setManufacturerName:'), args: [manufacturerName]);
  
  NSUInteger get version {
return perform(SEL('version'));

}
  
  set version(NSUInteger version) => perform(SEL('setVersion:'), args: [version]);
  @NativeAvailable(macos: '10.11', ios: '9.0', tvos: '9.0')
  static void instantiateWithComponentDescriptionOptionsCompletionHandler(AudioComponentDescription audioComponentDescription, AudioComponentInstantiationOptions options, {void completionHandler(AVAudioUnit audioUnit, NSError error)}) {
     Class('AVAudioUnit').perform(SEL('instantiateWithComponentDescription:options:completionHandler:'), args: [audioComponentDescription,options,completionHandler]);
  }
  
  bool loadAudioUnitPresetAtURLError(NSURL url, NSObjectRef<NSError> outError) {
    return perform(SEL('loadAudioUnitPresetAtURL:error:'), args: [url,outError]);
  }

}