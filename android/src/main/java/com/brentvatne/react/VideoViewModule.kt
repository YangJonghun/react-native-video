package com.brentvatne.react

import com.codegen.video.NativeVideoViewModuleSpec
import com.brentvatne.exoplayer.ReactExoplayerView
import com.facebook.react.bridge.Promise
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReadableMap
import com.facebook.react.bridge.UiThreadUtil
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.uimanager.UIManagerHelper
import com.facebook.react.uimanager.common.UIManagerType

@ReactModule(name = NativeVideoViewModuleSpec.NAME)
class VideoViewModule(reactContext: ReactApplicationContext?) : NativeVideoViewModuleSpec(reactContext) {
    override fun getName(): String = REACT_CLASS

    private fun performOnPlayerView(reactTag: Int, callback: (ReactExoplayerView?) -> Unit) {
        UiThreadUtil.runOnUiThread {
            try {
                val uiManager = UIManagerHelper.getUIManager(
                    reactApplicationContext,
                    if (BuildConfig.IS_NEW_ARCHITECTURE_ENABLED) UIManagerType.FABRIC else UIManagerType.DEFAULT
                )

                val view = uiManager?.resolveView(reactTag)

                if (view is ReactExoplayerView) {
                    callback(view)
                } else {
                    callback(null)
                }
            } catch (e: Exception) {
                callback(null)
            }
        }
    }

    override fun getCurrentPosition(reactTag: Double, promise: Promise?) {
        performOnPlayerView(reactTag.toInt()) {
            it?.getCurrentPosition(promise)
        }
    }

    override fun save(reactTag: Double, option: ReadableMap?, promise: Promise?) {

    }

    companion object {
        private const val REACT_CLASS = "VideoViewModule"
    }
}
