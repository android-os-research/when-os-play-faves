.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper;
.super Ljava/lang/Object;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IContextHubWrapper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeConnectTo1_0()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    :try_start_4
    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_f
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_16

    :catch_9
    const-string v1, "Context Hub HAL service not found"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catch_f
    move-exception v1

    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    .line 108
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    move-object v0, v2

    :goto_16
    if-nez v0, :cond_19

    goto :goto_1e

    .line 113
    :cond_19
    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;

    invoke-direct {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    :goto_1e
    return-object v2
.end method

.method public static maybeConnectTo1_1()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    :try_start_4
    invoke-static {v1}, Landroid/hardware/contexthub/V1_1/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_1/IContexthub;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_f
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_16

    :catch_9
    const-string v1, "Context Hub HAL service not found"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catch_f
    move-exception v1

    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    .line 127
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    move-object v0, v2

    :goto_16
    if-nez v0, :cond_19

    goto :goto_1e

    .line 132
    :cond_19
    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;

    invoke-direct {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;-><init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V

    :goto_1e
    return-object v2
.end method

.method public static maybeConnectTo1_2()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    :try_start_4
    invoke-static {v1}, Landroid/hardware/contexthub/V1_2/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_2/IContexthub;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_f
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_16

    :catch_9
    const-string v1, "Context Hub HAL service not found"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catch_f
    move-exception v1

    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    .line 146
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    move-object v0, v2

    :goto_16
    if-nez v0, :cond_19

    goto :goto_1e

    .line 151
    :cond_19
    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;

    invoke-direct {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;-><init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V

    :goto_1e
    return-object v2
.end method

.method public static maybeConnectToAidl()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/hardware/contexthub/IContextHub;

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "IContextHubWrapper"

    const/4 v3, 0x0

    if-eqz v1, :cond_30

    .line 166
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/hardware/contexthub/IContextHub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_36

    const-string v1, "Context Hub AIDL service was declared but was not found"

    .line 168
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_30
    const-string v0, "Context Hub AIDL service is not declared"

    .line 171
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :cond_36
    :goto_36
    if-nez v0, :cond_39

    goto :goto_3e

    .line 174
    :cond_39
    new-instance v3, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-direct {v3, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;-><init>(Landroid/hardware/contexthub/IContextHub;)V

    :goto_3e
    return-object v3
.end method


# virtual methods
.method public abstract disableNanoapp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableNanoapp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHubs()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAirplaneModeSettingChanged(Z)V
.end method

.method public abstract onBtMainSettingChanged(Z)V
.end method

.method public abstract onBtScanningSettingChanged(Z)V
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .registers 2

    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .registers 2

    return-void
.end method

.method public abstract onLocationSettingChanged(Z)V
.end method

.method public abstract onMicrophoneSettingChanged(Z)V
.end method

.method public abstract onWifiMainSettingChanged(Z)V
.end method

.method public abstract onWifiScanningSettingChanged(Z)V
.end method

.method public abstract onWifiSettingChanged(Z)V
.end method

.method public abstract queryNanoapps(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract supportsAirplaneModeSettingNotifications()Z
.end method

.method public abstract supportsBtSettingNotifications()Z
.end method

.method public abstract supportsLocationSettingNotifications()Z
.end method

.method public abstract supportsMicrophoneSettingNotifications()Z
.end method

.method public abstract supportsWifiSettingNotifications()Z
.end method

.method public abstract unloadNanoapp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
