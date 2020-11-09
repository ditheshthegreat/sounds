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
// import 'package:coremedia/cmsync.dart';

@NativeAvailable(macos: '10.13', ios: '11.0', tvos: '11.0', watchos: '4.0') @NativeAvailable(macos: '10.14', ios: '12.0', tvos: '12.0', watchos: '5.0')
@native
class AVSampleBufferRenderSynchronizer extends NSObject {
  AVSampleBufferRenderSynchronizer([Class isa]) : super(isa ?? Class('AVSampleBufferRenderSynchronizer'));
  AVSampleBufferRenderSynchronizer.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  double get rate {
return perform(SEL('rate'));

}
  
  set rate(double rate) => perform(SEL('setRate:'), args: [rate]);
  @NativeAvailable(macos: '10.14', ios: '12.0', tvos: '12.0', watchos: '5.0')
  CMTime currentTime() {
    Pointer<Void> result = perform(SEL('currentTime'), decodeRetVal: false);
    return CMTime.fromPointer(result);
  }
  
  void setRateTime(double rate, CMTime time) {
     perform(SEL('setRate:time:'), args: [rate,time]);
  }

}

extension AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerRendererManagement on AVSampleBufferRenderSynchronizer {
  
  AVQueuedSampleBufferRendering get renderers {
Pointer<Void> result = perform(SEL('renderers'), decodeRetVal: false);
    return AVQueuedSampleBufferRendering.fromPointer(result);

}
  
  set renderers(AVQueuedSampleBufferRendering renderers) => perform(SEL('setRenderers:'), args: [renderers]);
  
  void addRenderer(AVQueuedSampleBufferRendering renderer) {
     perform(SEL('addRenderer:'), args: [renderer]);
  }
  
  void removeRendererAtTimeCompletionHandler(AVQueuedSampleBufferRendering renderer, CMTime time, {void completionHandler(BOOL didRemoveRenderer)}) {
     perform(SEL('removeRenderer:atTime:completionHandler:'), args: [renderer,time,completionHandler]);
  }

}

extension AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerTimeObservation on AVSampleBufferRenderSynchronizer {
  
  NSObject addPeriodicTimeObserverForIntervalQueueUsingBlock(CMTime interval, void block(CMTime time), {dispatch_queue_t queue}) {
    Pointer<Void> result = perform(SEL('addPeriodicTimeObserverForInterval:queue:usingBlock:'), args: [interval,queue,block], decodeRetVal: false);
    return NSObject.fromPointer(result);
  }
  
  NSObject addBoundaryTimeObserverForTimesQueueUsingBlock(NSValue times, void block(), {dispatch_queue_t queue}) {
    Pointer<Void> result = perform(SEL('addBoundaryTimeObserverForTimes:queue:usingBlock:'), args: [times,queue,block], decodeRetVal: false);
    return NSObject.fromPointer(result);
  }
  
  void removeTimeObserver(NSObject observer) {
     perform(SEL('removeTimeObserver:'), args: [observer]);
  }

}
// You can uncomment this line when this package is ready.
// import 'package:avfcore/avsamplebufferrendersynchronizer.dart';