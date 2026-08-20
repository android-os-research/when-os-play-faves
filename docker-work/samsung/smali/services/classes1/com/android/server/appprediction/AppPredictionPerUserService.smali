.class public Lcom/android/server/appprediction/AppPredictionPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AppPredictionPerUserService.java"

# interfaces
.implements Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/appprediction/AppPredictionPerUserService;",
        "Lcom/android/server/appprediction/AppPredictionManagerService;",
        ">;",
        "Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;"
    }
.end annotation


# static fields
.field public static final PREDICT_USING_PEOPLE_SERVICE_PREFIX:Ljava/lang/String; = "predict_using_people_service_"

.field public static final REMOTE_APP_PREDICTOR_KEY:Ljava/lang/String; = "remote_app_predictor"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSessionInfos:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mZombie:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1Z-09sIN83b-5PIpI8XA5nhAXb8(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$unregisterPredictionUpdatesLocked$6(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5a7bQrC7lS8oj-Rx3Ysy6JROvqI(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Landroid/service/appprediction/IPredictionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$notifyAppTargetEventLocked$2(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$72roX2LVuKFDpVFUywXMmUJvTU0(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$sortAppTargetsLocked$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kr7ml7hY635e5IDqqs4ZSGWwS6M(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$onDestroyPredictionSessionLocked$8(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NY4TUtO361sot2pOtT2D5zokSow(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$onCreatePredictionSessionLocked$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O58Q2SL9BHvwef9x3Jl8aXM02Lk(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$registerPredictionUpdatesLocked$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6PWy4xt37G9V4FTR4nEGJ8rBl8(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/service/appprediction/IPredictionService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$notifyLaunchLocationShownLocked$3(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g3zDk8PyOzrB1s7rqheewTRmm0A(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$onCreatePredictionSessionLocked$1(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iU3P641-CNxwaTkkmOFTYcWJD5E(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$requestPredictionUpdateLocked$7(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 73
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic lambda$notifyAppTargetEventLocked$2(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Landroid/service/appprediction/IPredictionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method public static synthetic lambda$notifyLaunchLocationShownLocked$3(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/service/appprediction/IPredictionService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-interface {p3, p0, p1, p2}, Landroid/service/appprediction/IPredictionService;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public static synthetic lambda$onCreatePredictionSessionLocked$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method private synthetic lambda$onCreatePredictionSessionLocked$1(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 135
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static synthetic lambda$onDestroyPredictionSessionLocked$8(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-interface {p1, p0}, Landroid/service/appprediction/IPredictionService;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method public static synthetic lambda$registerPredictionUpdatesLocked$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static synthetic lambda$requestPredictionUpdateLocked$7(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-interface {p1, p0}, Landroid/service/appprediction/IPredictionService;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method public static synthetic lambda$sortAppTargetsLocked$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-interface {p3, p0, p1, p2}, Landroid/service/appprediction/IPredictionService;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static synthetic lambda$unregisterPredictionUpdatesLocked$6(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService()V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_5

    return-void

    .line 298
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 299
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_12
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 304
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 305
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 306
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3c

    .line 307
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-eqz v0, :cond_3b

    .line 309
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 310
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_36
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->reconnect()V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 306
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_3f

    .line 370
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 372
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1a

    .line 373
    sget-object p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 p0, 0x0

    return-object p0

    .line 377
    :cond_1c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 379
    new-instance v8, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 381
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v2, "android.service.appprediction.AppPredictionService"

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/appprediction/RemoteAppPredictionService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;ZZ)V

    iput-object v8, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 384
    :cond_3f
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    return-object p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 91
    :catch_d
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 154
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->-$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v0

    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 166
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->-$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v0

    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .registers 5

    .line 250
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 251
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz p1, :cond_3e

    .line 254
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 255
    :try_start_22
    iget-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    if-eqz v0, :cond_39

    .line 257
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_33

    .line 258
    sget-object p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit p1

    return-void

    :cond_33
    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resurrectSessionsLocked()V

    .line 264
    :cond_39
    monitor-exit p1

    goto :goto_3e

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "predict_using_people_service_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    const/4 v2, 0x0

    .line 118
    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 121
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "remote_app_predictor"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "dark_launch_remote_prediction_service_enabled"

    .line 122
    invoke-static {v1, v3, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v6, v2

    goto :goto_3c

    :cond_3b
    move v6, v0

    :goto_3c
    const/4 v0, 0x1

    .line 128
    new-instance v1, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, p2, v0, v6, v1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 130
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 131
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    new-instance v8, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V

    move-object v3, v0

    move-object v4, p2

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;ZLandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 138
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 141
    :cond_6a
    invoke-virtual {p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 231
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyPredictionSessionLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1d
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_28

    return-void

    :cond_28
    const/4 v1, 0x0

    .line 235
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->-$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 237
    invoke-virtual {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->destroy()V

    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .registers 4

    .line 242
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 243
    sget-object p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailureOrTimeout(): timed out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onPackageRestartedLocked()V
    .registers 3

    .line 287
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 288
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .registers 3

    .line 280
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 281
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V
    .registers 5

    .line 270
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 271
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1d
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 274
    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 275
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 52
    check-cast p1, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V

    return-void
.end method

.method public registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 190
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->-$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda2;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 194
    invoke-virtual {v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    :cond_1e
    return-void
.end method

.method public requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 221
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->-$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v0

    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda7;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "ZZ",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/appprediction/IPredictionService;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_2e

    .line 340
    const-class p0, Lcom/android/server/people/PeopleServiceInternal;

    .line 341
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/appprediction/IPredictionService;

    if-eqz p0, :cond_29

    .line 344
    :try_start_e
    invoke-interface {p4, p0}, Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;->run(Landroid/os/IInterface;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_29

    :catch_12
    move-exception p2

    .line 347
    sget-object p3, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to invoke service:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move p1, v0

    :goto_2d
    return p1

    .line 352
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object p0

    if-eqz p0, :cond_3d

    if-eqz p2, :cond_3a

    .line 357
    invoke-virtual {p0, p4}, Lcom/android/server/appprediction/RemoteAppPredictionService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    goto :goto_3d

    .line 359
    :cond_3a
    invoke-virtual {p0, p4}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_3d
    :goto_3d
    if-eqz p0, :cond_40

    goto :goto_41

    :cond_40
    move p1, v0

    :goto_41
    return p1
.end method

.method public final resurrectSessionsLocked()V
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 323
    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_31
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 328
    iget-object v2, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/os/IBinder;)V

    goto :goto_3b

    :cond_4d
    return-void
.end method

.method public sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 178
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->-$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v0

    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda8;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 206
    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->-$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 210
    invoke-virtual {v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    :cond_1e
    return-void
.end method

.method public updateLocked(Z)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 102
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 104
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    :cond_f
    return p1
.end method
