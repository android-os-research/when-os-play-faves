.class public Lcom/android/server/broadcastradio/hal2/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "TunerSession.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio2Srv.session"

.field public static final kAudioDeviceName:Ljava/lang/String; = "Radio tuner source"


# instance fields
.field public final mCallback:Landroid/hardware/radio/ITunerCallback;

.field public mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field public final mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field public mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;


# direct methods
.method public static synthetic $r8$lambda$0g7zLzpiVEH3yE3X8ul37RpqJNo(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$setConfiguration$0(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VlPtxiDqEMP12OgDIJyT6uOT5bA(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$isConfigFlagSet$2(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIcMK7kZ1bThPSRkcik45_hwH-g(Landroid/hardware/radio/ITunerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$startBackgroundScan$1(Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nISP8-wF-1CHlVOU-2Fn_XOAP9Q(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$setParameters$3(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rc2Q8V6cI_4irauXhSFTtb47qBo(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$getParameters$4(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;Ljava/lang/Object;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 53
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 60
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/hardware/radio/ITunerCallback;

    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 61
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$getParameters$4(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isConfigFlagSet$2(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V
    .registers 4

    .line 281
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 282
    iput-boolean p3, p1, Landroid/util/MutableBoolean;->value:Z

    return-void
.end method

.method public static synthetic lambda$setConfiguration$0(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method private synthetic lambda$setParameters$3(Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startBackgroundScan$1(Landroid/hardware/radio/ITunerCallback;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 169
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;)V

    .line 170
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public cancelAnnouncement()V
    .registers 2

    const-string p0, "BcRadio2Srv.session"

    const-string v0, "Announcements control doesn\'t involve cancelling at the HAL level in 2.x"

    .line 175
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkNotClosedLocked()V
    .registers 2

    .line 97
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-nez p0, :cond_5

    return-void

    .line 98
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tuner is closed, no further operations are allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method public close(Ljava/lang/Integer;)V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_28

    return-void

    :cond_9
    if-eqz p1, :cond_1e

    .line 81
    :try_start_b
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15
    .catchall {:try_start_b .. :try_end_14} :catchall_28

    goto :goto_1e

    :catch_15
    move-exception p1

    :try_start_16
    const-string v1, "BcRadio2Srv.session"

    const-string/jumbo v2, "mCallback.onError() failed: "

    .line 83
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 87
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 88
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final dispatchClientUpdateChunks(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 239
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Chunk;

    .line 241
    :try_start_13
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1, v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_7

    :catch_19
    move-exception v0

    const-string v1, "BcRadio2Srv.session"

    const-string/jumbo v2, "mCallback.onProgramListUpdated() failed: "

    .line 243
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_23
    return-void
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 116
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 316
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    .line 318
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->getFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object p0

    :goto_d
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 210
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isClosed()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    return p0
.end method

.method public isConfigFlagSet(I)Z
    .registers 6

    const-string v0, "BcRadio2Srv.session"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isConfigFlagSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 277
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 278
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_5f

    .line 280
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V

    invoke-interface {p0, p1, v3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_43
    .catchall {:try_start_2d .. :try_end_37} :catchall_5f

    :try_start_37
    const-string/jumbo p0, "isConfigFlagSet"

    .line 287
    iget p1, v1, Landroid/util/MutableInt;->value:I

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 289
    iget-boolean p0, v2, Landroid/util/MutableBoolean;->value:Z

    monitor-exit v0

    return p0

    :catch_43
    move-exception p0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_5f
    move-exception p0

    .line 290
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_37 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public isConfigFlagSupported(I)Z
    .registers 3

    const/4 v0, 0x1

    .line 262
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->isConfigFlagSet(I)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 p0, 0x0

    return p0

    :catch_7
    return v0
.end method

.method public isMuted()Z
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 134
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onMergedProgramListUpdateFromHal(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez v1, :cond_9

    .line 217
    monitor-exit v0

    return-void

    .line 219
    :cond_9
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/radio/ProgramList$Chunk;)Ljava/util/List;

    move-result-object p1

    .line 220
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    :catchall_12
    move-exception p0

    .line 220
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public scan(ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 151
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->scan(ZZ)I

    move-result p0

    const-string/jumbo p1, "step"

    .line 152
    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 153
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public setConfigFlag(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BcRadio2Srv.session"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConfigFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 298
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setConfigFlag(IZ)I

    move-result p0

    const-string/jumbo p1, "setConfigFlag"

    .line 299
    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 300
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    const-string v1, "BcRadio2Srv.session"

    const-string v2, "Ignoring setConfiguration - not applicable for broadcastradio HAL 2.x"

    .line 107
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setMuted(Z)V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 124
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    .line 125
    :cond_c
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Mute via RadioService is not implemented - please handle it via app"

    .line 126
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 307
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public startBackgroundScan()Z
    .registers 3

    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Explicit background scan trigger is not supported with HAL 2.x"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_13

    .line 195
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    .line 198
    :cond_13
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 200
    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 201
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_27

    .line 204
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void

    :catchall_27
    move-exception p0

    .line 201
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public step(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 141
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 142
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->step(Z)I

    move-result p0

    const-string/jumbo p1, "step"

    .line 143
    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 144
    monitor-exit p2

    return-void

    :catchall_19
    move-exception p0

    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public stopProgramListUpdates()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 253
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    .line 256
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void

    :catchall_10
    move-exception p0

    .line 253
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 160
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result p0

    const-string/jumbo p1, "tune"

    .line 161
    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 162
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;)V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez v1, :cond_9

    .line 228
    monitor-exit v0

    return-void

    :cond_9
    const/4 v2, 0x1

    .line 230
    invoke-virtual {v1, p1, v2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndUpdateFrom(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;Z)Ljava/util/List;

    move-result-object p1

    .line 231
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    :catchall_13
    move-exception p0

    .line 231
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method
