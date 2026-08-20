.class public final Lcom/android/server/contentcapture/RemoteContentCaptureService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentcapture/RemoteContentCaptureService$ContentCaptureServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/contentcapture/RemoteContentCaptureService;",
        "Landroid/service/contentcapture/IContentCaptureService;",
        ">;"
    }
.end annotation


# instance fields
.field public final mIdleUnbindTimeoutMs:I

.field public final mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field public final mServerCallback:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$-Fh6mp2tP74QsUtpjHMwwmVWYm4(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onDataShareRequest$4(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7siEipFXhA9uvAtbFNVAzOXPLP4(Landroid/view/contentcapture/DataRemovalRequest;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onDataRemovalRequest$3(Landroid/view/contentcapture/DataRemovalRequest;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TwL4DPvinMgbMYGCnofRVll0MWY(ILandroid/service/contentcapture/IContentCaptureService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onSessionFinished$1(ILandroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_uld0njOo4_7mNfY8hXILzfginU(ILandroid/service/contentcapture/SnapshotData;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onActivitySnapshotRequest$2(ILandroid/service/contentcapture/SnapshotData;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v9sDcJGYM99mI-eI-4CjucoQ4xk(Landroid/service/contentcapture/ActivityEvent;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onActivityLifecycleEvent$5(Landroid/service/contentcapture/ActivityEvent;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpDSmauYMmIyrehp_fSOri81QrA(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;ILandroid/service/contentcapture/IContentCaptureService;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onSessionStarted$0(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;ILandroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/contentcapture/IContentCaptureServiceCallback;ILcom/android/server/contentcapture/ContentCapturePerUserService;ZZI)V
    .registers 21

    move-object v10, p0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p7, :cond_a

    const/high16 v0, 0x400000

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    or-int/lit16 v7, v0, 0x1000

    const/4 v9, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v8, p8

    .line 55
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    move-object/from16 v0, p6

    .line 61
    iput-object v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 62
    invoke-interface {p4}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    move/from16 v0, p9

    .line 63
    iput v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    .line 66
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->ensureBoundLocked()V

    return-void
.end method

.method public static synthetic lambda$onActivityLifecycleEvent$5(Landroid/service/contentcapture/ActivityEvent;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method public static synthetic lambda$onActivitySnapshotRequest$2(ILandroid/service/contentcapture/SnapshotData;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-interface {p2, p0, p1}, Landroid/service/contentcapture/IContentCaptureService;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method public static synthetic lambda$onDataRemovalRequest$3(Landroid/view/contentcapture/DataRemovalRequest;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method public static synthetic lambda$onDataShareRequest$4(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-interface {p2, p0, p1}, Landroid/service/contentcapture/IContentCaptureService;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method public static synthetic lambda$onSessionFinished$1(ILandroid/service/contentcapture/IContentCaptureService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onSessionFinished(I)V

    return-void
.end method

.method public static synthetic lambda$onSessionStarted$0(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;ILandroid/service/contentcapture/IContentCaptureService;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 118
    invoke-interface/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method


# virtual methods
.method public ensureBoundLocked()V
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    return-void
.end method

.method public bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;

    move-result-object p0

    return-object p0
.end method

.method public getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;
    .registers 2

    .line 71
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;

    move-result-object p0

    return-object p0
.end method

.method public getTimeoutIdleBindMillis()J
    .registers 3

    .line 76
    iget p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public handleOnConnectedStateChanged(Z)V
    .registers 6

    if-eqz p1, :cond_f

    .line 81
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleUnbind()V

    :cond_f
    if-eqz p1, :cond_31

    .line 87
    :try_start_11
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/service/contentcapture/IContentCaptureService;->onConnected(Landroid/os/IBinder;ZZ)V

    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_2a

    .line 94
    :try_start_24
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V

    goto :goto_5e

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V

    .line 95
    throw v0

    .line 97
    :cond_31
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureService;->onDisconnected()V

    const/4 v0, 0x2

    .line 98
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3e} :catch_3f

    goto :goto_5e

    :catch_3f
    move-exception v0

    .line 103
    iget-object p0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception calling onConnectedStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void
.end method

.method public onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 3

    .line 166
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;-><init>(Landroid/service/contentcapture/ActivityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V
    .registers 4

    .line 141
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;-><init>(ILandroid/service/contentcapture/SnapshotData;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 3

    .line 148
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;-><init>(Landroid/view/contentcapture/DataRemovalRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 149
    iget-object p0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V
    .registers 4

    .line 156
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda3;-><init>(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 157
    iget-object p0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public onSessionFinished(I)V
    .registers 4

    .line 130
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 132
    invoke-static {p1, v0, v1, p0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Z)V

    return-void
.end method

.method public onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 13

    .line 117
    new-instance v6, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    invoke-virtual {p0, v6}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p3, 0x0

    .line 120
    invoke-static {p2, p1, p5, p0, p3}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Z)V

    return-void
.end method
