.class public Lcom/samsung/android/gamesdk/IGameSDKService$Default;
.super Ljava/lang/Object;
.source "IGameSDKService.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/IGameSDKService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/IGameSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist finalGameSDK(Ljava/lang/String;)V
    .registers 2
    .param p1, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public greylist getCPULevelMax()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getClusterInfo()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCpuJTLevel()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCpuLevelCurrent()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCpuLoad()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getCurrentRefreshRate()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getFrameworkFPS()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getGPULevelMax()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getGpuFrameTime()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getGpuJTLevel()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getGpuLevelCurrent()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getGpuLoad()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getHighPrecisionSkinTempLevel()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getPrevFrameworkFPS()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getSkinTempLevel()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getSupportedRefreshRates()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getTempLevel()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist initGameSDK()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public greylist initGameSDKWithJsonData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "inVersion"    # Ljava/lang/String;
    .param p2, "jsonData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public greylist initGameSDKWithVersion(Ljava/lang/String;)Z
    .registers 3
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isGameSDKVrrSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPMModeEnable()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageInWhiteList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public greylist registerDebugBridgePid(I)Z
    .registers 3
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public greylist resetRefreshRate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public greylist setCpuBoostMode(I)Z
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setDisableTMLevel(I)Z
    .registers 3
    .param p1, "stepLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setFreqLevels(II)I
    .registers 4
    .param p1, "cpuLevel"    # I
    .param p2, "gpuLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/gamesdk/IGameSDKListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setGameSDKStateListener(Lcom/samsung/android/gamesdk/IGameSDKStateListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/gamesdk/IGameSDKStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setGpuBoostMode(I)Z
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setLevelWithScene(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "cpuLevel"    # I
    .param p3, "gpuLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setRefreshRate(I)V
    .registers 2
    .param p1, "targetRefreshRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method
