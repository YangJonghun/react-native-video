/**
* This code was generated by [react-native-codegen](https://www.npmjs.com/package/react-native-codegen).
*
* Do not edit this file as changes may cause incorrect behavior and will be lost
* once the code is regenerated.
*
* @generated by codegen project: GeneratePropsJavaInterface.js
*/

package com.facebook.react.viewmanagers;

import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;

public interface VideoViewManagerInterface<T extends View> {
  void setSrc(T view, @Nullable ReadableMap value);
  void setAdTagUrl(T view, @Nullable String value);
  void setAllowsExternalPlayback(T view, boolean value);
  void setDisableFocus(T view, boolean value);
  void setMaxBitRate(T view, float value);
  void setResizeMode(T view, @Nullable String value);
  void setRepeat(T view, boolean value);
  void setAutomaticallyWaitsToMinimizeStalling(T view, boolean value);
  void setShutterColor(T view, int value);
  void setAudioOutput(T view, @Nullable String value);
  void setTextTracks(T view, @Nullable ReadableArray value);
  void setSelectedTextTrack(T view, @Nullable ReadableMap value);
  void setSelectedAudioTrack(T view, @Nullable ReadableMap value);
  void setSelectedVideoTrack(T view, @Nullable ReadableMap value);
  void setPaused(T view, boolean value);
  void setMuted(T view, boolean value);
  void setControls(T view, boolean value);
  void setFilter(T view, @Nullable String value);
  void setFilterEnabled(T view, boolean value);
  void setVolume(T view, float value);
  void setPlayInBackground(T view, boolean value);
  void setPreventsDisplaySleepDuringVideoPlayback(T view, boolean value);
  void setPreferredForwardBufferDuration(T view, float value);
  void setPlayWhenInactive(T view, boolean value);
  void setPictureInPicture(T view, boolean value);
  void setIgnoreSilentSwitch(T view, @Nullable String value);
  void setMixWithOthers(T view, @Nullable String value);
  void setRate(T view, float value);
  void setFullscreen(T view, boolean value);
  void setFullscreenAutorotate(T view, boolean value);
  void setFullscreenOrientation(T view, @Nullable String value);
  void setProgressUpdateInterval(T view, float value);
  void setRestoreUserInterfaceForPIPStopCompletionHandler(T view, boolean value);
  void setLocalSourceEncryptionKeyScheme(T view, @Nullable String value);
  void setDebug(T view, @Nullable ReadableMap value);
  void setShowNotificationControls(T view, boolean value);
  void setBufferConfig(T view, @Nullable ReadableMap value);
  void setContentStartTime(T view, int value);
  void setCurrentPlaybackTime(T view, double value);
  void setDisableDisconnectError(T view, boolean value);
  void setFocusable(T view, boolean value);
  void setHideShutterView(T view, boolean value);
  void setMinLoadRetryCount(T view, int value);
  void setReportBandwidth(T view, boolean value);
  void setSubtitleStyle(T view, @Nullable ReadableMap value);
  void setViewType(T view, int value);
  void setBufferingStrategy(T view, @Nullable String value);
  void setControlsStyles(T view, @Nullable ReadableMap value);
  void seekCmd(T view, float time, float tolerance);
  void setPlayerPauseStateCmd(T view, boolean paused);
  void setVolumeCmd(T view, float volume);
  void setFullScreenCmd(T view, boolean fullScreen);
  void setLicenseResultCmd(T view, String result, String licenseUrl);
  void setLicenseResultErrorCmd(T view, String error, String licenseUrl);
}
