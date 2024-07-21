#import "VideoDecoderInfoModule.h"

#ifdef RCT_NEW_ARCH_ENABLED
#import <rnv_codegen/rnv_codegen.h>
#endif

@implementation VideoDecoderInfoModule

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getWidevineLevel : (RCTPromiseResolveBlock)resolve reject : (RCTPromiseRejectBlock)reject) 
{
    // Not implemented on iOS.
}

RCT_EXPORT_METHOD(isCodecSupported : (NSString*)mimeType width : (NSInteger*)width height : (NSInteger*)height)
{
    // Not implemented on iOS.
}

RCT_EXPORT_METHOD(isHEVCSupported : (RCTPromiseResolveBlock)resolve reject : (RCTPromiseRejectBlock)reject)
{
    // Not implemented on iOS.
}

#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeVideoDecoderInfoModuleSpecJSI>(params);
}
#endif // RCT_NEW_ARCH_ENABLED

@end
