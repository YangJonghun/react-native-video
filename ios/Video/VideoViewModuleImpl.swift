import React

@objc
public final class VideoViewModuleImpl: NSObject {
    #if RCT_NEW_ARCH_ENABLED
    private var viewRegistry_DEPRECATED: RCTViewRegistry

    @objc
    public init(viewRegistry_DEPRECATED: RCTViewRegistry) {
        self.viewRegistry_DEPRECATED = viewRegistry_DEPRECATED
    }
    #else
    private var bridge: RCTBridge

    @objc
    public init(bridge: RCTBridge) {
        self.bridge = bridge
    }
    #endif

    @objc
    public func methodQueue() -> DispatchQueue {
        return RCTGetUIManagerQueue()
    }

    func performOnVideoView(withReactTag reactTag: NSNumber, callback: @escaping (VideoView?) -> Void) {
        DispatchQueue.main.async { [weak self] in
            guard let self else {
                callback(nil)
                return
            }

            #if RCT_NEW_ARCH_ENABLED
            let view = self.viewRegistry_DEPRECATED.view(forReactTag: reactTag)
            #else
            let view = self.bridge.uiManager.view(forReactTag: reactTag)
            #endif

            guard let videoView = view as? VideoView else {
                DebugLog("Invalid view returned from registry, expecting RCTVideo, got: \(String(describing: view))")
                callback(nil)
                return
            }

            callback(videoView)
        }
    }

    @objc(save:options:resolve:reject:)
    public func save(_ reactTag: NSNumber, options: NSDictionary, resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.save(options, resolve, reject)
        })
    }

    @objc(getCurrentPosition:resolve:reject:)
    public func getCurrentPosition(_ reactTag: NSNumber, resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) {
        performOnVideoView(withReactTag: reactTag, callback: { videoView in
            videoView?.getCurrentPlaybackTime(resolve, reject)
        })
    }
}
