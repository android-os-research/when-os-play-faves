.class public Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Default;
.super Ljava/lang/Object;
.source "ISemInputDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearHwParam(I)I
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public enableMotion(Ljava/lang/String;ZLjava/lang/String;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getAodActiveArea(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFodInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFodPosition(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwParam(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLpDump(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getProxPowerOff(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrubPosition(I)Ljava/lang/String;
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportDevice(I)I
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getTspSupportFeature(I)I
    .registers 3
    .param p1, "devid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPressedByKeycode(I)Z
    .registers 3
    .param p1, "keycode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMotion(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public runEmergency(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRawdataTsp(I[I)I
    .registers 4
    .param p1, "devid"    # I
    .param p2, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public setAodEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public setAodRect(IIII)I
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public setBrushEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public setCoverMode(II)I
    .registers 4
    .param p1, "mode"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public setEarDetectEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public setFodEnable(III)I
    .registers 5
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public setFodIconVisible(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public setFodLpMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public setFodRect(IIII)I
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public setFpIntControl(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public setGripData(Ljava/lang/String;)I
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setLowSensitivityModeEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public setNoteMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public setPocketModeEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public setProxPowerOff(II)I
    .registers 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public setSingletapEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public setSipMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public setSpayEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenAodEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenBleChargeMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenCoverType(I)I
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenEnabled(IIZ)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenLowCurrentMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenPdctLowSensitivityEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenPower(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public setSpenPowerSavingMode(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public setStylusEnable(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncChanged(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public setTemperature(I)I
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public setTouchableArea(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public setTspEnabled(IIZ)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method
