#import "VideoViewModule.h"

#import <React/RCTBridge.h>
#import <React/RCTUIManager.h>
#import <React/RCTUIManagerUtils.h>

#ifdef RCT_NEW_ARCH_ENABLED
#import "VideoViewComponentView.h"
#import <rnv_codegen/rnv_codegen.h>
#endif // RCT_NEW_ARCH_ENABLED

#if __has_include("react_native_video/react_native_video-Swift.h")
#import <react_native_video/react_native_video-Swift.h>
#else
#import <react_native_video-Swift.h>
#endif

#ifdef RCT_NEW_ARCH_ENABLED
@interface VideoViewModule() <NativeVideoViewModuleSpec>
@end
#endif

@interface VideoViewModule()

@property (nonatomic, strong) VideoViewModuleImpl *impl;

@end

@implementation VideoViewModule

RCT_EXPORT_MODULE();

#ifdef RCT_NEW_ARCH_ENABLED
@synthesize viewRegistry_DEPRECATED = _viewRegistry_DEPRECATED;
#else
@synthesize bridge = _bridge;
#endif // RCT_NEW_ARCH_ENABLED

- (dispatch_queue_t)methodQueue
{
  return [self.impl methodQueue];
}

RCT_EXPORT_METHOD(save:(nonnull NSNumber *)reactTag
                  option:(NSDictionary*)option
                  resolve:(RCTPromiseResolveBlock)resolve
                   reject:(RCTPromiseRejectBlock)reject)
{
    [self.impl save:reactTag
             option:option
            resolve:resolve
             reject:reject];
}
     
RCT_EXPORT_METHOD(getCurrentPosition:(nonnull NSNumber *)reactTag
                   resolve:(RCTPromiseResolveBlock)resolve
                    reject:(RCTPromiseRejectBlock)reject)
{
    [self.impl getCurrentPosition:reactTag
                          resolve:resolve
                           reject:reject];
}

- (VideoViewModuleImpl *)impl
{
  if (!_impl) {
    #ifdef RCT_NEW_ARCH_ENABLED
    _impl = [[VideoViewModuleImpl alloc] initWithViewRegistry_DEPRECATED:_viewRegistry_DEPRECATED];
    #else
    _impl = [[VideoViewModuleImpl alloc] initWithBridge:_bridge];
    #endif // RCT_NEW_ARCH_ENABLED
  }
  return _impl;
}
     
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeVideoViewModuleSpecJSI>(params);
}
#endif // RCT_NEW_ARCH_ENABLED

@end
