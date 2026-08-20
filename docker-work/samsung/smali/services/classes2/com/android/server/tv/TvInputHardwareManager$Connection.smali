.class public Lcom/android/server/tv/TvInputHardwareManager$Connection;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connection"
.end annotation


# instance fields
.field public mCallback:Landroid/media/tv/ITvInputHardwareCallback;

.field public mCallingUid:Ljava/lang/Integer;

.field public mConfigs:[Landroid/media/tv/TvStreamConfig;

.field public mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

.field public mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

.field public mInfo:Landroid/media/tv/TvInputInfo;

.field public mIsCableConnectionStatusUpdated:Z

.field public mOnFirstFrameCaptured:Ljava/lang/Runnable;

.field public mResolvedUserId:Ljava/lang/Integer;

.field public mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public static bridge synthetic -$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInputStateLocked()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 3

    .line 678
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 669
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 671
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 672
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    .line 673
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    .line 675
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    const/4 p1, 0x0

    .line 676
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    .line 679
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 9

    .line 762
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 763
    :try_start_e
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 764
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    .registers 1

    .line 733
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    return-object p0
.end method

.method public getCallingUidLocked()Ljava/lang/Integer;
    .registers 1

    .line 741
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getConfigsLengthLocked()I
    .registers 1

    .line 791
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    array-length p0, p0

    :goto_7
    return p0
.end method

.method public getConfigsLocked()[Landroid/media/tv/TvStreamConfig;
    .registers 1

    .line 737
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    return-object p0
.end method

.method public getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    return-object p0
.end method

.method public getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;
    .registers 1

    .line 717
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-object p0
.end method

.method public getHardwareLocked()Landroid/media/tv/ITvInputHardware;
    .registers 1

    .line 725
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    return-object p0
.end method

.method public getInfoLocked()Landroid/media/tv/TvInputInfo;
    .registers 1

    .line 721
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    return-object p0
.end method

.method public final getInputStateLocked()I
    .registers 3

    .line 795
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_c

    .line 797
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    if-nez v0, :cond_c

    return v1

    .line 801
    :cond_c
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p0}, Landroid/media/tv/TvInputHardwareInfo;->getCableConnectionStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v1, 0x2

    if-eq p0, v1, :cond_19

    return v0

    :cond_19
    return v1
.end method

.method public getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;
    .registers 1

    .line 753
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getResolvedUserIdLocked()Ljava/lang/Integer;
    .registers 1

    .line 745
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getResourceClientProfileLocked()Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .registers 1

    .line 757
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    return-object p0
.end method

.method public resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V
    .registers 10

    .line 687
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    const-string v1, "error in Connection::resetLocked"

    if-eqz v0, :cond_19

    .line 689
    :try_start_6
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-interface {v0}, Landroid/media/tv/ITvInputHardwareCallback;->onReleased()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    .line 691
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    :goto_14
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    .line 695
    :cond_19
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 696
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    .line 697
    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    .line 698
    iput-object p4, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    .line 699
    iput-object p5, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    const/4 p3, 0x0

    .line 700
    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 701
    iput-object p6, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    .line 705
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception p0

    .line 707
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    .registers 2

    .line 749
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{ mHardwareInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 772
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResolvedUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResourceClientProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCableConnectionStatusLocked(I)Z
    .registers 3

    if-nez p1, :cond_6

    .line 781
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    if-eqz v0, :cond_19

    :cond_6
    const/4 v0, 0x1

    .line 783
    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    .line 784
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->toBuilder()Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    .line 785
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->build()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 787
    :cond_19
    iget-boolean p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    return p0
.end method

.method public updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V
    .registers 2

    .line 713
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    return-void
.end method
