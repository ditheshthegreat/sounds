// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudiounittimeeffect.dart';

@NativeAvailable(macos: '10.10', ios: '8.0', tvos: '9.0') @NativeUnavailable(watchos)
@native
class AVAudioUnitTimePitch extends AVAudioUnitTimeEffect {
  AVAudioUnitTimePitch([Class isa]) : super(isa ?? Class('AVAudioUnitTimePitch'));
  AVAudioUnitTimePitch.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  double get rate {
return perform(SEL('rate'));

}
  
  set rate(double rate) => perform(SEL('setRate:'), args: [rate]);
  
  double get pitch {
return perform(SEL('pitch'));

}
  
  set pitch(double pitch) => perform(SEL('setPitch:'), args: [pitch]);
  
  double get overlap {
return perform(SEL('overlap'));

}
  
  set overlap(double overlap) => perform(SEL('setOverlap:'), args: [overlap]);

}