.class public final Lcom/android/server/display/DlnaController;
.super Ljava/lang/Object;
.source "DlnaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    }
.end annotation


# static fields
.field public static final ACTION_DISCONNECTION_REQUEST:Ljava/lang/String; = "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

.field public static final TAG:Ljava/lang/String; = "DlnaController"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDevice:Landroid/hardware/display/SemDlnaDevice;

.field public mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DlnaController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/server/display/DlnaController;)Landroid/hardware/display/SemDlnaDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDlnaMonitor(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDlnaMonitor(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdlnaPlayerTypeToString(Lcom/android/server/display/DlnaController;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendStatusChangedBroadcast(Lcom/android/server/display/DlnaController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DlnaController;->sendStatusChangedBroadcast()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance p1, Landroid/hardware/display/SemDlnaDevice;

    invoke-direct {p1}, Landroid/hardware/display/SemDlnaDevice;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    return-void
.end method


# virtual methods
.method public final dlnaConnectionStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    const-string p0, "None"

    return-object p0

    :cond_e
    const-string p0, "Connecting"

    return-object p0

    :cond_11
    const-string p0, "Error"

    return-object p0

    :cond_14
    const-string p0, "Connected"

    return-object p0

    :cond_17
    const-string p0, "Not_connected"

    return-object p0
.end method

.method public final dlnaPlayerTypeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    const-string p0, "None"

    return-object p0

    :cond_e
    const-string p0, "Music_chn"

    return-object p0

    :cond_11
    const-string p0, "Music"

    return-object p0

    :cond_14
    const-string p0, "Image"

    return-object p0

    :cond_17
    const-string p0, "Video"

    return-object p0
.end method

.method public getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    return-object p0
.end method

.method public isConnected()Z
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    move-result p0

    return p0
.end method

.method public sendDisconnectionRequestBroadcast()V
    .registers 3

    .line 77
    invoke-virtual {p0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DlnaController$1;-><init>(Lcom/android/server/display/DlnaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public final sendStatusChangedBroadcast()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/DlnaController$2;-><init>(Lcom/android/server/display/DlnaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)Z
    .registers 6

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDlnaDevice ::type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaConnectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DlnaController"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6e

    .line 53
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4b

    goto :goto_6e

    .line 57
    :cond_4b
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v2

    if-eq v0, v2, :cond_58

    const/4 v1, 0x1

    :cond_58
    if-eqz p2, :cond_69

    .line 60
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    if-nez v0, :cond_69

    .line 61
    new-instance v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v2

    invoke-direct {v0, p0, p2, v2}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;-><init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;I)V

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 63
    :cond_69
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/display/DlnaController;->sendStatusChangedBroadcast()V

    :cond_6e
    :goto_6e
    return v1
.end method
