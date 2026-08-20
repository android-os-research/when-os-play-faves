.class public interface abstract Lcom/android/server/input/NativeInputManagerService;
.super Ljava/lang/Object;
.source "NativeInputManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/NativeInputManagerService$NativeImpl;
    }
.end annotation


# virtual methods
.method public abstract canDispatchToDisplay(II)Z
.end method

.method public abstract cancelCurrentTouch()V
.end method

.method public abstract cancelVibrate(II)V
.end method

.method public abstract changeUniqueIdAssociation()V
.end method

.method public abstract createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;
.end method

.method public abstract createInputMonitor(ILjava/lang/String;II)Landroid/view/InputChannel;
.end method

.method public abstract disableInputDevice(I)V
.end method

.method public abstract disableSensor(II)V
.end method

.method public abstract displayRemoved(I)V
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract enableFlowPointer(Z)V
.end method

.method public abstract enableInputDevice(I)V
.end method

.method public abstract enableSensor(IIII)Z
.end method

.method public abstract enableWirelessKeyboardShare(Z)V
.end method

.method public abstract flushSensor(II)Z
.end method

.method public abstract forceFadeIcon(I)V
.end method

.method public abstract forceHideCursor(Z)V
.end method

.method public abstract getBatteryCapacity(I)I
.end method

.method public abstract getBatteryStatus(I)I
.end method

.method public abstract getGlobalMetaState(I)I
.end method

.method public abstract getInboundQueueLength()I
.end method

.method public abstract getKeyCodeForKeyLocation(II)I
.end method

.method public abstract getKeyCodeState(III)I
.end method

.method public abstract getLightColor(II)I
.end method

.method public abstract getLightPlayerId(II)I
.end method

.method public abstract getLights(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMotionIdleTimeMillis(Z)J
.end method

.method public abstract getScanCodeState(III)I
.end method

.method public abstract getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
.end method

.method public abstract getSwitchState(III)I
.end method

.method public abstract getVibratorIds(I)[I
.end method

.method public abstract hasKeys(II[I[Z)Z
.end method

.method public abstract injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I
.end method

.method public abstract isInputDeviceEnabled(I)Z
.end method

.method public abstract isUidTouched(I)Z
.end method

.method public abstract isVibrating(I)Z
.end method

.method public abstract monitor()V
.end method

.method public abstract notifyPointerDisplayIdChanged()V
.end method

.method public abstract notifyPortAssociationsChanged()V
.end method

.method public abstract pilferPointers(Landroid/os/IBinder;)V
.end method

.method public abstract reloadCalibration()V
.end method

.method public abstract reloadDeviceAliases()V
.end method

.method public abstract reloadKeyboardLayouts()V
.end method

.method public abstract reloadPointerIcons()V
.end method

.method public abstract removeInputChannel(Landroid/os/IBinder;)V
.end method

.method public abstract requestPointerCapture(Landroid/os/IBinder;Z)V
.end method

.method public abstract setBackButtonBehavior(I)V
.end method

.method public abstract setBlockUntrustedTouchesMode(I)V
.end method

.method public abstract setCoverTestModeType(I)V
.end method

.method public abstract setCoverVerify(I)V
.end method

.method public abstract setCursorPosition(III)V
.end method

.method public abstract setCustomPointerIcon(Landroid/view/PointerIcon;)V
.end method

.method public abstract setDexMode(ZII)V
.end method

.method public abstract setDisplayDpi(FF)V
.end method

.method public abstract setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public abstract setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V
.end method

.method public abstract setEnableTapToClick(Z)V
.end method

.method public abstract setFlowPointerDirection(I)V
.end method

.method public abstract setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
.end method

.method public abstract setFocusedDisplay(I)V
.end method

.method public abstract setFoldingState(I)V
.end method

.method public abstract setForwardButtonBehavior(I)V
.end method

.method public abstract setHoverIcon(Landroid/view/PointerIcon;I)V
.end method

.method public abstract setInTouchMode(ZIIZ)Z
.end method

.method public abstract setInputDispatchMode(ZZ)V
.end method

.method public abstract setInputFilterEnabled(Z)V
.end method

.method public abstract setInputMetaData(II)V
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setInteractiveForInternalDisplay(Z)V
.end method

.method public abstract setKidsMode(Z)V
.end method

.method public abstract setLightColor(III)V
.end method

.method public abstract setLightPlayerId(III)V
.end method

.method public abstract setMaximumObscuringOpacityForTouch(F)V
.end method

.method public abstract setMirrorLinkMode(Z)V
.end method

.method public abstract setMotionClassifierEnabled(Z)V
.end method

.method public abstract setMultiControlOutOfFocus(Z)V
.end method

.method public abstract setPenHovering(Z)V
.end method

.method public abstract setPenModeOnDex(I)V
.end method

.method public abstract setPointerAcceleration(F)V
.end method

.method public abstract setPointerDisplayId(I)V
.end method

.method public abstract setPointerIconType(I)V
.end method

.method public abstract setPointerSpeed(I)V
.end method

.method public abstract setPrimaryMouseButtonLocation(I)V
.end method

.method public abstract setReverseSwipeGesture(Z)V
.end method

.method public abstract setScrollSpeed(I)V
.end method

.method public abstract setSecondaryButtonBehavior(I)V
.end method

.method public abstract setShowHovering(Z)V
.end method

.method public abstract setShowTouches(Z)V
.end method

.method public abstract setSystemUiLightsOut(Z)V
.end method

.method public abstract setSystemUiLightsOutForDisplay(ZI)V
.end method

.method public abstract setTalkBack(Z)V
.end method

.method public abstract setTertiaryButtonBehavior(I)V
.end method

.method public abstract setUseMouseAcceleration(Z)V
.end method

.method public abstract showAllTouches(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract toggleCapsLock(I)V
.end method

.method public abstract transferTouch(Landroid/os/IBinder;I)Z
.end method

.method public abstract transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
.end method

.method public abstract updateInputMetaState(IZ)V
.end method

.method public abstract verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
.end method

.method public abstract vibrate(I[J[III)V
.end method

.method public abstract vibrateCombined(I[JLandroid/util/SparseArray;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[J",
            "Landroid/util/SparseArray<",
            "[I>;II)V"
        }
    .end annotation
.end method
