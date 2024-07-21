import AVFoundation
import React


@objc(VideoViewManager)
class VideoViewManager: RCTViewManager {
    override final func view() -> UIView! {
        return VideoView()
    }
    
    @objc
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    func performOnVideoView(withReactTag reactTag: NSNumber, callback: @escaping (VideoView?) -> Void) {
        DispatchQueue.main.async { [weak self] in
            guard let self else {
                callback(nil)
                return
            }

            let view = self.bridge.uiManager.view(forReactTag: reactTag)

            guard let videoView = view as? VideoView else {
                DebugLog("Invalid view returned from registry, expecting RCTVideo, got: \(String(describing: self.view))")
                callback(nil)
                return
            }

            callback(videoView)
        }
    }

    @objc(seekCmd:time:tolerance:)
    func seekCmd(_ reactTag: NSNumber, time: NSNumber, tolerance: NSNumber) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.setSeek(time, tolerance)
        })
    }

    @objc(setLicenseResultCmd:license:licenseUrl:)
    func setLicenseResultCmd(_ reactTag: NSNumber, license: NSString, licenseUrl: NSString) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.setLicenseResult(license as String, licenseUrl as String)
        })
    }

    @objc(setLicenseResultErrorCmd:error:licenseUrl:)
    func setLicenseResultErrorCmd(_ reactTag: NSNumber, error: NSString, licenseUrl: NSString) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.setLicenseResultError(error as String, licenseUrl as String)
        })
    }

    @objc(setPlayerPauseStateCmd:paused:)
    func setPlayerPauseStateCmd(_ reactTag: NSNumber, paused: Bool) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.setPaused(paused)
        })
    }

    @objc(setVolumeCmd:volume:)
    func setVolumeCmd(_ reactTag: NSNumber, volume: Float) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.setVolume(volume)
        })
    }

    @objc(setFullScreenCmd:fullscreen:)
    func setFullScreenCmd(_ reactTag: NSNumber, fullScreen: Bool) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.setFullscreen(fullScreen)
        })
    }
}
