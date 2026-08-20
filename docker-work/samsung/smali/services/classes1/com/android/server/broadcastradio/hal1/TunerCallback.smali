.class Lcom/android/server/broadcastradio/hal1/TunerCallback;
.super Ljava/lang/Object;
.source "TunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BroadcastRadioService.TunerCallback"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public mInitialConfigurationDone:Z

.field public final mNativeContext:J

.field public final mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/radio/ProgramList$Filter;",
            ">;"
        }
    .end annotation
.end field

.field public final mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method public static synthetic $r8$lambda$-wIUzx6PNCCbiE_4X32irIoGFsc(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onError$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5hesvq8nb-utdVySwN4nMy4e62o(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9RufDi4L9T0k-kLiF0hcWgGzzyk(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanAvailabilityChange$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxvCm82CUumwlMrz22_nBP2t2Pk(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListChanged$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$CyRtL-T_KUwFPVZEHSEhziK0sZ4(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TMYJ8Ob22D-q3UkjHuIeD3oRweo(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanComplete$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$YX62M9EkC9lbPRmBZGnVnQzd1hE(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onTrafficAnnouncement$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$brgjNWtxbIdxcNOQs5FUiMd7QRg(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kb3ixjcs4wevXr5pTsWsuVixVFY(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onEmergencyAnnouncement$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$l54Qb5axkaxAS2DMRMud5xep02o(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onAntennaState$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFbTxrhFV4O3FTESz9ol_LR43TU(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .registers 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 52
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 53
    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    return-void
.end method

.method private synthetic lambda$onAntennaState$5(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method private synthetic lambda$onBackgroundScanAvailabilityChange$6(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method private synthetic lambda$onBackgroundScanComplete$7()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method private synthetic lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method private synthetic lambda$onEmergencyAnnouncement$4(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method private synthetic lambda$onError$0(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method private synthetic lambda$onProgramListChanged$8()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method private synthetic lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method private synthetic lambda$onTrafficAnnouncement$3(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method private synthetic lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 182
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not a binder"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach()V
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeDetach(J)V

    return-void
.end method

.method public final dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V
    .registers 3

    .line 76
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "BroadcastRadioService.TunerCallback"

    const-string v0, "client died"

    .line 78
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeFinalize(J)V

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final handleHwFailure()V
    .registers 2

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->onError(I)V

    .line 85
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    return-void
.end method

.method public isInitialConfigurationDone()Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    return p0
.end method

.method public onAntennaState(Z)V
    .registers 3

    .line 135
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .registers 3

    .line 140
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanComplete()V
    .registers 2

    .line 145
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 3

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 115
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 3

    .line 120
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .registers 3

    .line 130
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onError(I)V
    .registers 3

    .line 104
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "BroadcastRadioService.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    .line 177
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgramListChanged()V
    .registers 2

    .line 150
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 3

    .line 172
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .registers 3

    .line 125
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3

    const-string p0, "BroadcastRadioService.TunerCallback"

    const-string p1, "Not applicable for HAL 1.x"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendProgramListUpdate()V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Filter;

    if-nez v0, :cond_b

    return-void

    .line 160
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getVendorFilter()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_15} :catch_33

    .line 165
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 166
    new-instance v1, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 167
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    return-void

    :catch_33
    const-string p0, "BroadcastRadioService.TunerCallback"

    const-string v0, "Program list not ready yet"

    .line 162
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 3

    if-nez p1, :cond_7

    .line 89
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public stopProgramListUpdates()V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
