.class public Lcom/android/server/searchui/SearchUiPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SearchUiPerUserService.java"

# interfaces
.implements Lcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/searchui/SearchUiPerUserService;",
        "Lcom/android/server/searchui/SearchUiManagerService;",
        ">;",
        "Lcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;
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
            "Landroid/app/search/SearchSessionId;",
            "Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;",
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
.method public static synthetic $r8$lambda$Pw-O2cR6TE7Hit5KBt17DWBo3Fk(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$queryLocked$3(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9RZ0LNKV8Vdm8uBIwf12qOmTU4(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onCreateSearchSessionLocked$0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffCW241wwP43tAPXk-RA6W_U15M(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onDestroyLocked$4(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hRYdeAFIxfeu4G729bmWe9cWEgA(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onCreateSearchSessionLocked$1(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ve-kttRyHDsBquvJZSCh72Qwvc0(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$notifyLocked$2(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteServiceLocked(Lcom/android/server/searchui/SearchUiPerUserService;)Lcom/android/server/searchui/RemoteSearchUiService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/android/server/searchui/SearchUiPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 63
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic lambda$notifyLocked$2(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method public static synthetic lambda$onCreateSearchSessionLocked$0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method private synthetic lambda$onCreateSearchSessionLocked$1(Landroid/app/search/SearchSessionId;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    .line 116
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static synthetic lambda$onDestroyLocked$4(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-interface {p1, p0}, Landroid/service/search/ISearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic lambda$queryLocked$3(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_5

    return-void

    .line 232
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_12
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 238
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 239
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 240
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3c

    .line 241
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_3b

    .line 243
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 244
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_36
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/searchui/RemoteSearchUiService;->reconnect()V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 240
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_3f

    .line 283
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 285
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1a

    .line 286
    sget-object p0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 p0, 0x0

    return-object p0

    .line 290
    :cond_1c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 292
    new-instance v8, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/searchui/SearchUiManagerService;

    .line 294
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v2, "android.service.search.SearchUiService"

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/searchui/RemoteSearchUiService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;ZZ)V

    iput-object v8, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 297
    :cond_3f
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    return-object p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 78
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

    .line 81
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

.method public notifyLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_b

    return-void

    .line 135
    :cond_b
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .registers 5

    .line 176
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 177
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

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

    .line 180
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 181
    :try_start_22
    iget-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    if-eqz v0, :cond_39

    .line 183
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_33

    .line 184
    sget-object p0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit p1

    return-void

    :cond_33
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->resurrectSessionsLocked()V

    .line 190
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

.method public onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 111
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 112
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 118
    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 119
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 122
    :cond_29
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onDestroyLocked(Landroid/app/search/SearchSessionId;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 157
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1d
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_28

    return-void

    .line 161
    :cond_28
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 163
    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->destroy()V

    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .registers 4

    .line 168
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 169
    sget-object p0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

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

    .line 221
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 222
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .registers 3

    .line 214
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 215
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V
    .registers 5

    .line 196
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 197
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1d
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 200
    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 201
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 202
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    return-void

    :catchall_28
    move-exception p0

    .line 201
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 46
    check-cast p1, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V

    return-void
.end method

.method public queryLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_b

    return-void

    .line 147
    :cond_b
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/search/ISearchUiService;",
            ">;)Z"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 274
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/RemoteSearchUiService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

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

    .line 255
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 256
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 257
    sget-object v1, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_31
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

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

    check-cast v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 262
    iget-object v2, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->resurrectSessionLocked(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/os/IBinder;)V

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

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 94
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 96
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    :cond_f
    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    :cond_a
    return-void
.end method
