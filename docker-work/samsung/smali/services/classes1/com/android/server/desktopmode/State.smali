.class public interface abstract Lcom/android/server/desktopmode/State;
.super Ljava/lang/Object;
.source "State.java"


# virtual methods
.method public abstract getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
.end method

.method public abstract getCoverState()Lcom/samsung/android/cover/CoverState;
.end method

.method public abstract getCoverSupportState()I
.end method

.method public abstract getCurrentUserId()I
.end method

.method public abstract getDesktopDisplayId()I
.end method

.method public abstract getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
.end method

.method public abstract getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
.end method

.method public abstract getPackageState()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreviousConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;
.end method

.method public abstract getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;
.end method

.method public abstract isCoverSupportStatePartial()Z
.end method

.method public abstract isDexOnPcConnected()Z
.end method

.method public abstract isDexOnPcOrWirelessDexConnected()Z
.end method

.method public abstract isDexStationConnectedWithFlipCover()Z
.end method

.method public abstract isDisplayResolutionUnsupported()Z
.end method

.method public abstract isDockLowChargerConnected()Z
.end method

.method public abstract isEmergencyModeEnabled()Z
.end method

.method public abstract isExternalDisplayConnected()Z
.end method

.method public abstract isForcedInternalScreenModeEnabled()Z
.end method

.method public abstract isHdmiConnected()Z
.end method

.method public abstract isModeChangeLocked()Z
.end method

.method public abstract isMouseConnected()Z
.end method

.method public abstract isNavBarGestureEnabled()Z
.end method

.method public abstract isPackagesAvailable()Z
.end method

.method public abstract isPogoKeyboardConnected()Z
.end method

.method public abstract isSpenEnabled()Z
.end method

.method public abstract isTouchpadAvailable()Z
.end method

.method public abstract isTouchpadEnabled()Z
.end method

.method public abstract isWiredCharging()Z
.end method

.method public abstract isWirelessDexConnected()Z
.end method
