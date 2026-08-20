.class public Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Default;
.super Ljava/lang/Object;
.source "ISehCodecSolution.java"

# interfaces
.implements Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplaySize()Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;
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

.method public getH2SCAllowlistStatus(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "chipVendor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getSmartFittingAllowlistStatus()I
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

.method public getSmartFittingMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoRecordingParameter(J)Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    .registers 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSmartFittingButton()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public isDesktopMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoFitMode(Z)V
    .registers 2
    .param p1, "use"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public setBlackbarState(Z)V
    .registers 2
    .param p1, "exist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public setSmartFittingMode(I)V
    .registers 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public setSmartFittingPid(I)V
    .registers 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public setVideoRecordingParameter(JLvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "parameter"    # Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public showSmartFittingButton()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public startSmartFittingService()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public stopSmartFittingService()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public updateMediaStatisticsData(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public updateStreamStatus(IZI)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "started"    # Z
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method
