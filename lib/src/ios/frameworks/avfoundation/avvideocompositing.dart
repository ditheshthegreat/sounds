// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:foundation/foundation.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfoundation/avbase.dart';
// You can uncomment this line when this package is ready.
// import 'package:corevideo/cvpixelbufferpool.dart';
// You can uncomment this line when this package is ready.
// import 'package:coremedia/cmtimerange.dart';

typedef NSInteger null();

typedef CGFloat null();

@NativeAvailable(macos: '10.9', ios: '7.0', tvos: '9.0') @NativeUnavailable(watchos)
@native
class AVVideoCompositionRenderContext extends NSObject {
  AVVideoCompositionRenderContext([Class isa]) : super(isa ?? Class('AVVideoCompositionRenderContext'));
  AVVideoCompositionRenderContext.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  CGSize get size {
Pointer<Void> result = perform(SEL('size'), decodeRetVal: false);
    return CGSize.fromPointer(result);

}
  
  set size(CGSize size) => perform(SEL('setSize:'), args: [size]);
  
  CGAffineTransform get renderTransform {
Pointer<Void> result = perform(SEL('renderTransform'), decodeRetVal: false);
    return CGAffineTransform.fromPointer(result);

}
  
  set renderTransform(CGAffineTransform renderTransform) => perform(SEL('setRenderTransform:'), args: [renderTransform]);
  
  double get renderScale {
return perform(SEL('renderScale'));

}
  
  set renderScale(double renderScale) => perform(SEL('setRenderScale:'), args: [renderScale]);
  
  AVPixelAspectRatio get pixelAspectRatio {
Pointer<Void> result = perform(SEL('pixelAspectRatio'), decodeRetVal: false);
    return AVPixelAspectRatio.fromPointer(result);

}
  
  set pixelAspectRatio(AVPixelAspectRatio pixelAspectRatio) => perform(SEL('setPixelAspectRatio:'), args: [pixelAspectRatio]);
  
  AVEdgeWidths get edgeWidths {
Pointer<Void> result = perform(SEL('edgeWidths'), decodeRetVal: false);
    return AVEdgeWidths.fromPointer(result);

}
  
  set edgeWidths(AVEdgeWidths edgeWidths) => perform(SEL('setEdgeWidths:'), args: [edgeWidths]);
  
  bool get highQualityRendering {
return perform(SEL('highQualityRendering'));

}
  
  set highQualityRendering(bool highQualityRendering) => perform(SEL('setHighQualityRendering:'), args: [highQualityRendering]);
  
  AVVideoComposition get videoComposition {
Pointer<Void> result = perform(SEL('videoComposition'), decodeRetVal: false);
    return AVVideoComposition.fromPointer(result);

}
  
  set videoComposition(AVVideoComposition videoComposition) => perform(SEL('setVideoComposition:'), args: [videoComposition]);
  
  CVPixelBufferRef newPixelBuffer() {
    Pointer<Void> result = perform(SEL('newPixelBuffer'), decodeRetVal: false);
    return CVPixelBufferRef.fromPointer(result);
  }

}

@NativeAvailable(macos: '10.15', ios: '13.0', tvos: '13.0') @NativeUnavailable(watchos)
@native
class AVVideoCompositionRenderHint extends NSObject {
  AVVideoCompositionRenderHint([Class isa]) : super(isa ?? Class('AVVideoCompositionRenderHint'));
  AVVideoCompositionRenderHint.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  CMTime get startCompositionTime {
Pointer<Void> result = perform(SEL('startCompositionTime'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  
  set startCompositionTime(CMTime startCompositionTime) => perform(SEL('setStartCompositionTime:'), args: [startCompositionTime]);
  
  CMTime get endCompositionTime {
Pointer<Void> result = perform(SEL('endCompositionTime'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  
  set endCompositionTime(CMTime endCompositionTime) => perform(SEL('setEndCompositionTime:'), args: [endCompositionTime]);

}

@NativeAvailable(macos: '10.9', ios: '7.0', tvos: '9.0') @NativeUnavailable(watchos)
abstract class AVVideoCompositing {
  registerAVVideoCompositing() {
    registerProtocolCallback(this, renderContextChanged, 'renderContextChanged:', AVVideoCompositing);
    registerProtocolCallback(this, startVideoCompositionRequest, 'startVideoCompositionRequest:', AVVideoCompositing);
    registerProtocolCallback(this, cancelAllPendingVideoCompositionRequests, 'cancelAllPendingVideoCompositionRequests', AVVideoCompositing);
    registerProtocolCallback(this, anticipateRenderingUsingHint, 'anticipateRenderingUsingHint:', AVVideoCompositing);
    registerProtocolCallback(this, prerollForRenderingUsingHint, 'prerollForRenderingUsingHint:', AVVideoCompositing);
  }
  
  id get sourcePixelBufferAttributes {
Pointer<Void> result = perform(SEL('sourcePixelBufferAttributes'), decodeRetVal: false);
    return id.fromPointer(result);

}
  
  set sourcePixelBufferAttributes(id sourcePixelBufferAttributes) => perform(SEL('setSourcePixelBufferAttributes:'), args: [sourcePixelBufferAttributes]);
  
  id get requiredPixelBufferAttributesForRenderContext {
Pointer<Void> result = perform(SEL('requiredPixelBufferAttributesForRenderContext'), decodeRetVal: false);
    return id.fromPointer(result);

}
  
  set requiredPixelBufferAttributesForRenderContext(id requiredPixelBufferAttributesForRenderContext) => perform(SEL('setRequiredPixelBufferAttributesForRenderContext:'), args: [requiredPixelBufferAttributesForRenderContext]);
  @NativeAvailable(macos: '10.12', ios: '10.0', tvos: '10.0') @NativeUnavailable(watchos)
  bool get supportsWideColorSourceFrames {
return perform(SEL('supportsWideColorSourceFrames'));

}
  @NativeAvailable(macos: '10.12', ios: '10.0', tvos: '10.0') @NativeUnavailable(watchos)
  set supportsWideColorSourceFrames(bool supportsWideColorSourceFrames) => perform(SEL('setSupportsWideColorSourceFrames:'), args: [supportsWideColorSourceFrames]);
  @NativeAvailable(macos: '11.0', ios: '14.0', tvos: '14.0') @NativeUnavailable(watchos)
  bool get supportsHDRSourceFrames {
return perform(SEL('supportsHDRSourceFrames'));

}
  @NativeAvailable(macos: '11.0', ios: '14.0', tvos: '14.0') @NativeUnavailable(watchos)
  set supportsHDRSourceFrames(bool supportsHDRSourceFrames) => perform(SEL('setSupportsHDRSourceFrames:'), args: [supportsHDRSourceFrames]);
  
  void renderContextChanged(AVVideoCompositionRenderContext newRenderContext);  
  void startVideoCompositionRequest(AVAsynchronousVideoCompositionRequest asyncVideoCompositionRequest);  
  void cancelAllPendingVideoCompositionRequests();  @NativeAvailable(macos: '10.15', ios: '13.0', tvos: '13.0') @NativeUnavailable(watchos)
  void anticipateRenderingUsingHint(AVVideoCompositionRenderHint renderHint);  @NativeAvailable(macos: '10.15', ios: '13.0', tvos: '13.0') @NativeUnavailable(watchos)
  void prerollForRenderingUsingHint(AVVideoCompositionRenderHint renderHint);
}

@NativeAvailable(macos: '10.9', ios: '7.0', tvos: '9.0') @NativeUnavailable(watchos)
@native
class AVAsynchronousVideoCompositionRequest extends NSObject with NSCopying {
  AVAsynchronousVideoCompositionRequest([Class isa]) : super(isa ?? Class('AVAsynchronousVideoCompositionRequest'));
  AVAsynchronousVideoCompositionRequest.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  AVVideoCompositionRenderContext get renderContext {
Pointer<Void> result = perform(SEL('renderContext'), decodeRetVal: false);
    return AVVideoCompositionRenderContext.fromPointer(result);

}
  
  set renderContext(AVVideoCompositionRenderContext renderContext) => perform(SEL('setRenderContext:'), args: [renderContext]);
  
  CMTime get compositionTime {
Pointer<Void> result = perform(SEL('compositionTime'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  
  set compositionTime(CMTime compositionTime) => perform(SEL('setCompositionTime:'), args: [compositionTime]);
  
  NSNumber get sourceTrackIDs {
Pointer<Void> result = perform(SEL('sourceTrackIDs'), decodeRetVal: false);
    return NSNumber.fromPointer(result);

}
  
  set sourceTrackIDs(NSNumber sourceTrackIDs) => perform(SEL('setSourceTrackIDs:'), args: [sourceTrackIDs]);
  
  AVVideoCompositionInstruction get videoCompositionInstruction {
Pointer<Void> result = perform(SEL('videoCompositionInstruction'), decodeRetVal: false);
    return AVVideoCompositionInstruction.fromPointer(result);

}
  
  set videoCompositionInstruction(AVVideoCompositionInstruction videoCompositionInstruction) => perform(SEL('setVideoCompositionInstruction:'), args: [videoCompositionInstruction]);
  
  CVPixelBufferRef sourceFrameByTrackID(CMPersistentTrackID trackID) {
    Pointer<Void> result = perform(SEL('sourceFrameByTrackID:'), args: [trackID], decodeRetVal: false);
    return CVPixelBufferRef.fromPointer(result);
  }
  
  void finishWithComposedVideoFrame(CVPixelBufferRef composedVideoFrame) {
     perform(SEL('finishWithComposedVideoFrame:'), args: [composedVideoFrame]);
  }
  
  void finishWithError(NSError error) {
     perform(SEL('finishWithError:'), args: [error]);
  }
  
  void finishCancelledRequest() {
     perform(SEL('finishCancelledRequest'));
  }

}

@NativeAvailable(macos: '10.11', ios: '9.0', tvos: '9.0') @NativeUnavailable(watchos)
@native
class AVAsynchronousCIImageFilteringRequest extends NSObject with NSCopying {
  AVAsynchronousCIImageFilteringRequest([Class isa]) : super(isa ?? Class('AVAsynchronousCIImageFilteringRequest'));
  AVAsynchronousCIImageFilteringRequest.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  CGSize get renderSize {
Pointer<Void> result = perform(SEL('renderSize'), decodeRetVal: false);
    return CGSize.fromPointer(result);

}
  
  set renderSize(CGSize renderSize) => perform(SEL('setRenderSize:'), args: [renderSize]);
  
  CMTime get compositionTime {
Pointer<Void> result = perform(SEL('compositionTime'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  
  set compositionTime(CMTime compositionTime) => perform(SEL('setCompositionTime:'), args: [compositionTime]);
  
  CIImage get sourceImage {
Pointer<Void> result = perform(SEL('sourceImage'), decodeRetVal: false);
    return CIImage.fromPointer(result);

}
  
  set sourceImage(CIImage sourceImage) => perform(SEL('setSourceImage:'), args: [sourceImage]);
  
  void finishWithImageContext(CIImage filteredImage, {CIContext context}) {
     perform(SEL('finishWithImage:context:'), args: [filteredImage,context]);
  }
  
  void finishWithError(NSError error) {
     perform(SEL('finishWithError:'), args: [error]);
  }

}

@NativeAvailable(macos: '10.9', ios: '7.0', tvos: '9.0') @NativeUnavailable(watchos)
abstract class AVVideoCompositionInstruction {
  registerAVVideoCompositionInstruction() {
  }
  
  CMTimeRange get timeRange {
Pointer<Void> result = perform(SEL('timeRange'), decodeRetVal: false);
    return CMTimeRange.fromPointer(result);

}
  
  set timeRange(CMTimeRange timeRange) => perform(SEL('setTimeRange:'), args: [timeRange]);
  
  bool get enablePostProcessing {
return perform(SEL('enablePostProcessing'));

}
  
  set enablePostProcessing(bool enablePostProcessing) => perform(SEL('setEnablePostProcessing:'), args: [enablePostProcessing]);
  
  bool get containsTweening {
return perform(SEL('containsTweening'));

}
  
  set containsTweening(bool containsTweening) => perform(SEL('setContainsTweening:'), args: [containsTweening]);
  
  NSValue get requiredSourceTrackIDs {
Pointer<Void> result = perform(SEL('requiredSourceTrackIDs'), decodeRetVal: false);
    return NSValue.fromPointer(result);

}
  
  set requiredSourceTrackIDs(NSValue requiredSourceTrackIDs) => perform(SEL('setRequiredSourceTrackIDs:'), args: [requiredSourceTrackIDs]);
  
  CMPersistentTrackID get passthroughTrackID {
Pointer<Void> result = perform(SEL('passthroughTrackID'), decodeRetVal: false);
    return CMPersistentTrackID.fromPointer(result);

}
  
  set passthroughTrackID(CMPersistentTrackID passthroughTrackID) => perform(SEL('setPassthroughTrackID:'), args: [passthroughTrackID]);

}
// You can uncomment this line when this package is ready.
// import 'package:avfcore/avvideocompositing.dart';