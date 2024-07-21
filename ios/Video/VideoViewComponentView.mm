#ifdef RCT_NEW_ARCH_ENABLED

#import "VideoViewComponentView.h"

#import <React/RCTConversions.h>
#import <React/RCTFabricComponentsPlugins.h>

#import <react/renderer/components/rnv_codegen/ComponentDescriptors.h>
#import <react/renderer/components/rnv_codegen/EventEmitters.h>
#import <react/renderer/components/rnv_codegen/Props.h>
#import <react/renderer/components/rnv_codegen/RCTComponentViewHelpers.h>

#if __has_include("react_native_video/react_native_video-Swift.h")
#import <react_native_video/react_native_video-Swift.h>
#else
#import <react_native_video-Swift.h>
#endif

using namespace facebook::react;

@interface VideoViewComponentView () <RCTVideoViewViewProtocol>
@end

@implementation VideoViewComponentView {
    VideoView *_videoView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = VideoViewShadowNode::defaultSharedProps();
    _props = defaultProps;
    _videoView = [[VideoView alloc] init];
    self.contentView = _videoView;
  }
  
  return self;
}

#pragma mark - RCTComponentViewProtocol

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
  return concreteComponentDescriptorProvider<VideoViewComponentDescriptor>();
}

- (void)updateProps:(const Props::Shared &)props oldProps:(const Props::Shared &)oldProps
{
  const auto &oldViewProps = static_cast<const VideoViewProps &>(*oldProps);
  const auto &newViewProps = static_cast<const VideoViewProps &>(*props);

  // @TODO implements props

  [super updateProps:props oldProps:oldProps];
}

#pragma mark - Native Events

- (void)onVideoLoad
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoLoad event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoLoad(event);
}

- (void)onVideoLoadStart
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoLoadStart event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoLoadStart(event);
}

- (void)onVideoAspectRatio
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoAspectRatio event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoAspectRatio(event);
}

- (void)onVideoBuffer
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoBuffer event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoBuffer(event);
}

- (void)onVideoError
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoError event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoError(event);
}

- (void)onVideoProgress
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoProgress event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoProgress(VideoViewEventEmitter::OnVideoProgress{});
}

- (void)onVideoSeek
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoSeek event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoSeek(event);
}

- (void)onVideoEnd
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoEnd event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoEnd(VideoViewEventEmitter::OnVideoEnd{});
}

- (void)onVideoAudioBecomingNoisy
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoAudioBecomingNoisy event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoAudioBecomingNoisy(event);
}

- (void)onVideoFullscreenPlayerWillPresent
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoFullscreenPlayerWillPresent event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoFullscreenPlayerWillPresent(event);
}

- (void)onVideoFullscreenPlayerDidPresent
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoFullscreenPlayerDidPresent event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoFullscreenPlayerDidPresent(event);
}

- (void)onVideoFullscreenPlayerWillDismiss
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoFullscreenPlayerWillDismiss event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoFullscreenPlayerWillDismiss(event);
}

- (void)onVideoFullscreenPlayerDidDismiss
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoFullscreenPlayerDidDismiss event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoFullscreenPlayerDidDismiss(event);
}

- (void)onReadyForDisplay
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnReadyForDisplay event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onReadyForDisplay(event);
}

- (void)onPlaybackRateChange
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnPlaybackRateChange event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onPlaybackRateChange(event);
}

- (void)onVolumeChange
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVolumeChange event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVolumeChange(event);
}

- (void)onVideoExternalPlaybackChange
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoExternalPlaybackChange event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoExternalPlaybackChange(event);
}

- (void)onGetLicense
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnGetLicense event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onGetLicense(event);
}

- (void)onPictureInPictureStatusChanged
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnPictureInPictureStatusChanged event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onPictureInPictureStatusChanged(event);
}

- (void)onRestoreUserInterfaceForPictureInPictureStop
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnRestoreUserInterfaceForPictureInPictureStop event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onRestoreUserInterfaceForPictureInPictureStop(event);
}

- (void)onReceiveAdEvent
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnReceiveAdEvent event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onReceiveAdEvent(event);
}

- (void)onVideoPlaybackStateChanged
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoPlaybackStateChanged event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoPlaybackStateChanged(event);
}

- (void)onVideoIdle
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnVideoIdle event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onVideoIdle(event);
}

- (void)onTimedMetadata
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnTimedMetadata event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onTimedMetadata(event);
}

- (void)onAudioTracks
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnAudioTracks event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onAudioTracks(event);
}

- (void)onTextTracks
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnTextTracks event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onTextTracks(event);
}

- (void)onTextTrackDataChanged
{
    if (!_eventEmitter) {
      return;
    }
    VideoViewEventEmitter::OnTextTrackDataChanged event = {};
    static_cast<const VideoViewEventEmitter &>(*_eventEmitter).onTextTrackDataChanged(event);
}

#pragma mark - Native Commands

- (void)handleCommand:(const NSString *)commandName args:(const NSArray *)args
{
    RCTVideoViewHandleCommand(self, commandName, args);
}

- (void)seekCmd: (nonnull NSNumber*)time tolerance : (nonnull NSNumber*)tolerance
{
    if (time != -1 && tolerance != -1) {
        [_videoView setSeek:@(time) tolerance:tolerance];
    }
}

- (void)setLicenseResultCmd: (NSString*)license licenseUrl : (NSString*)licenseUrl
{
    if (license != -1 && licenseUrl != -1) {
        [_videoView setLicenseResult:@(license) licenseUrl:licenseUrl];
    }
}

- (void)setLicenseResultErrorCmd: (NSString*)error licenseUrl : (NSString*)licenseUrl
{
    if (error != -1 && licenseUrl != -1) {
        [_videoView setLicenseResultError:@(error) licenseUrl:licenseUrl];
    }
}

- (void)setPlayerPauseStateCmd: (nonnull BOOL)paused
{
    if (paused == true) {
        [_videoView setPaused:@(paused)];
    }
}

- (void)setVolumeCmd: (nonnull float*)volume
{
    if (volume == true) {
        [_videoView setVolume:@(volume)];
    }
}

- (void)setFullScreenCmd: (nonnull BOOL)fullScreen
{
    if (fullScreen == true) {
        [_videoView setFullscreen:@(fullScreen)];
    }
}

@end

Class<RCTComponentViewProtocol> VideoViewCls(void)
{
  return VideoViewComponentView.class;
}

#endif // RCT_NEW_ARCH_ENABLED
