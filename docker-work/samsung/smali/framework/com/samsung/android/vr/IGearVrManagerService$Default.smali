.class public Lcom/samsung/android/vr/IGearVrManagerService$Default;
.super Ljava/lang/Object;
.source "IGearVrManagerService.java"

# interfaces
.implements Lcom/samsung/android/vr/IGearVrManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/IGearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cpu"    # I
    .param p4, "gpu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enforceCallingPermission(IILjava/lang/String;)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist getDeviceConfig()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayConfig()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPowerLevelState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getThreadId(ILjava/lang/String;I)[I
    .registers 5
    .param p1, "pid"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUiModeConfig()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVrRecentsMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVrSystemUiMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist is3rdPartyDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isConnect()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDock()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHmtDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMount()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMounted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPersistentVrMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVrMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyDeviceEventChanged(I)V
    .registers 2
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist notifyHmtEventChanged(II)V
    .registers 3
    .param p1, "event"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public blacklist readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IARStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    return-void
.end method

.method public blacklist registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public blacklist registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public blacklist registerXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IXrStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public blacklist releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeSysNode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist retrieveEnableFrequencyLevels()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setArDeveloperMode(Z)V
    .registers 2
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    return-void
.end method

.method public blacklist setConnect(Z)V
    .registers 2
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    return-void
.end method

.method public blacklist setHomeKeyBlocked(Z)V
    .registers 2
    .param p1, "blocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist setMount(Z)V
    .registers 2
    .param p1, "mounted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public blacklist setOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "exemptedPackages"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist setPermissions(Ljava/lang/String;III)I
    .registers 6
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPersistentVrMode(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public blacklist setReadyForVrMode(Z)V
    .registers 2
    .param p1, "ready"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist setSystemMouseControlType(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist setSystemMouseShowMouseEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist setThreadAffinity(I[I)I
    .registers 4
    .param p1, "tid"    # I
    .param p2, "cpus"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setThreadGroup(II)Z
    .registers 4
    .param p1, "tid"    # I
    .param p2, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setThreadScheduler(III)Z
    .registers 5
    .param p1, "tid"    # I
    .param p2, "policy"    # I
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVr2dSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public blacklist setVrMode(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist unregisterARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IARStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method public blacklist unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public blacklist unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist unregisterXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/samsung/android/vr/IXrStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    return-void
.end method

.method public blacklist writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method
