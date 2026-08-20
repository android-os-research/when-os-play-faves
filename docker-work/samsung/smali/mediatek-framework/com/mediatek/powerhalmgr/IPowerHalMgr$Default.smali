.class public Lcom/mediatek/powerhalmgr/IPowerHalMgr$Default;
.super Ljava/lang/Object;
.source "IPowerHalMgr.java"

# interfaces
.implements Lcom/mediatek/powerhalmgr/IPowerHalMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalmgr/IPowerHalMgr;
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
.method public blacklist UpdateManagementPkt(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "packet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist configBoosterInfo(Lcom/mediatek/powerhalmgr/BoosterInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/mediatek/powerhalmgr/BoosterInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist flushPriorityRules(I)Z
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCpuCap()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getCpuRTInfo()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getGpuCap()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getGpuRTInfo()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist isDupPacketPredictionStarted()Z
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

.method public blacklist mtkCusPowerHint(II)V
    .registers 3
    .param p1, "hint"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist mtkPowerHint(II)V
    .registers 3
    .param p1, "hint"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist perfCusLockHint(II)I
    .registers 4
    .param p1, "hint"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfLockAcquire(II[I)I
    .registers 5
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfLockRelease(I)V
    .registers 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist querySysInfo(II)I
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scnConfig(IIIIII)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist scnDisable(I)V
    .registers 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist scnEnable(II)V
    .registers 3
    .param p1, "handle"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist scnReg()I
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

.method public blacklist scnUltraCfg(IIIIII)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "ultracmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist scnUnreg(I)V
    .registers 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist setForegroundSports()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist setPredictInfo(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pack_name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "linkinfo"    # Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPriorityByUid(II)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSysInfo(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist setSysInfoSync(ILjava/lang/String;)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startDuplicatePacketPrediction()Z
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

.method public blacklist stopDuplicatePacketPrediction()Z
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

.method public blacklist unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 3
    .param p1, "linkList"    # [Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method
