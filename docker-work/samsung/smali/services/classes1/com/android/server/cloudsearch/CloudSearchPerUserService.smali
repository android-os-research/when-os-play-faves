.class public Lcom/android/server/cloudsearch/CloudSearchPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "CloudSearchPerUserService.java"

# interfaces
.implements Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
        "Lcom/android/server/cloudsearch/CloudSearchManagerService;",
        ">;",
        "Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;"
    }
.end annotation


# static fields
.field public static final QUEUE_SIZE:I = 0xa

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallbackQueue:Lcom/android/server/CircularQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/CircularQueue<",
            "Ljava/lang/String;",
            "Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemoteComponentName:Landroid/content/ComponentName;

.field public mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mServiceName:Ljava/lang/String;

.field public mZombie:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$02G19LWLeZSN7LZu7AiJ0x1P5ew(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->lambda$onSearchLocked$0(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fx8QmpEVW4RxqjoTu0AUndonndc(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->lambda$onSearchLocked$1(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 49
    new-instance p1, Lcom/android/server/CircularQueue;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/android/server/CircularQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    .line 67
    iput-object p4, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    .line 68
    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic lambda$onSearchLocked$0(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-interface {p1, p0}, Landroid/service/cloudsearch/ICloudSearchService;->onSearch(Landroid/app/cloudsearch/SearchRequest;)V

    return-void
.end method

.method private synthetic lambda$onSearchLocked$1(Ljava/lang/String;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    .line 147
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method


# virtual methods
.method public final destroyAndRebindRemoteService()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_5

    return-void

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 275
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_12
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    .line 280
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 281
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    .line 282
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3c

    .line 283
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-eqz v0, :cond_3b

    .line 285
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 286
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_36
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->reconnect()V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 282
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_41

    .line 325
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameForMultipleLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 327
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1c

    .line 328
    sget-object p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 p0, 0x0

    return-object p0

    .line 332
    :cond_1e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 334
    new-instance v8, Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 336
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v2, "android.service.cloudsearch.CloudSearchService"

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;ZZ)V

    iput-object v8, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    .line 339
    :cond_41
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    return-object p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 77
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

    .line 80
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

.method public onConnectedStateChanged(Z)V
    .registers 5

    .line 218
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 219
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

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

    .line 222
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 223
    :try_start_22
    iget-boolean v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    if-eqz v0, :cond_39

    .line 225
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_33

    .line 226
    sget-object p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit p1

    return-void

    :cond_33
    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resurrectSessionsLocked()V

    .line 232
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

.method public onDestroyLocked(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 200
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1d
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/CircularQueue;->removeElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    if-eqz p0, :cond_2a

    .line 204
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->destroy()V

    :cond_2a
    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .registers 4

    .line 210
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 211
    sget-object p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

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

    .line 263
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 264
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .registers 3

    .line 256
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 257
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onReturnResultsLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_5

    return-void

    .line 171
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/service/cloudsearch/ICloudSearchService;

    if-eqz v0, :cond_55

    .line 172
    invoke-interface {v0}, Landroid/service/cloudsearch/ICloudSearchService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq p1, v0, :cond_14

    goto :goto_55

    .line 175
    :cond_14
    iget-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p1, p2}, Lcom/android/server/CircularQueue;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 176
    iget-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/app/cloudsearch/SearchResponse;->setSource(Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p1, p2}, Lcom/android/server/CircularQueue;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 179
    :try_start_29
    invoke-virtual {p3}, Landroid/app/cloudsearch/SearchResponse;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_37

    .line 180
    invoke-static {p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->-$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->onSearchSucceeded(Landroid/app/cloudsearch/SearchResponse;)V

    goto :goto_55

    .line 182
    :cond_37
    invoke-static {p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->-$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->onSearchFailed(Landroid/app/cloudsearch/SearchResponse;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3e} :catch_3f

    goto :goto_55

    :catch_3f
    move-exception p1

    .line 185
    iget-object p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p3, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p3, :cond_52

    .line 186
    sget-object p3, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Exception in posting results"

    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    :cond_52
    invoke-virtual {p0, p2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    return-void

    .line 114
    :cond_5
    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getSearchConstraints()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 116
    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getSearchConstraints()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1a
    const-string v0, ""

    .line 119
    :goto_1c
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_40

    const-string v2, ";"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v3

    .line 126
    :goto_31
    array-length v5, v0

    if-ge v2, v5, :cond_41

    .line 127
    aget-object v5, v0, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    goto :goto_40

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_40
    :goto_40
    move v3, v4

    :cond_41
    if-nez v3, :cond_44

    return-void

    .line 139
    :cond_44
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/SearchRequest;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resolveService(Landroid/app/cloudsearch/SearchRequest;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_84

    .line 142
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0, v7}, Lcom/android/server/CircularQueue;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 143
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 144
    invoke-interface {p2}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v7}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V

    move-object v1, v0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;-><init>(Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 149
    invoke-virtual {v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 150
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p0, v7, v0}, Lcom/android/server/CircularQueue;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    if-eqz p0, :cond_84

    .line 152
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->destroy()V

    goto :goto_84

    .line 156
    :cond_81
    invoke-virtual {p0, v7}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

.method public onServiceDied(Lcom/android/server/cloudsearch/RemoteCloudSearchService;)V
    .registers 5

    .line 238
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 239
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1d
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 242
    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    .line 243
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 244
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->updateRemoteServiceLocked()V

    return-void

    :catchall_28
    move-exception p0

    .line 243
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 43
    check-cast p1, Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onServiceDied(Lcom/android/server/cloudsearch/RemoteCloudSearchService;)V

    return-void
.end method

.method public resolveService(Landroid/app/cloudsearch/SearchRequest;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/cloudsearch/SearchRequest;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/cloudsearch/ICloudSearchService;",
            ">;)Z"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 316
    invoke-virtual {p0, p2}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final resurrectSessionsLocked()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 298
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 299
    sget-object v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requests."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_31
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0}, Lcom/android/server/CircularQueue;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 304
    iget-object v2, v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->resurrectSessionLocked(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Landroid/os/IBinder;)V

    goto :goto_3b

    :cond_4d
    return-void
.end method

.method public updateLocked(Z)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 93
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 95
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resurrectSessionsLocked()V

    goto :goto_13

    .line 98
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->updateRemoteServiceLocked()V

    :cond_13
    :goto_13
    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-eqz v0, :cond_a

    .line 250
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    :cond_a
    return-void
.end method
