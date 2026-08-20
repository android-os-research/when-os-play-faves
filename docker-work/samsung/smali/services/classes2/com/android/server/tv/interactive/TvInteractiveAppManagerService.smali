.class public Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.super Lcom/android/server/SystemService;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientPidNotFoundException;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "TvInteractiveAppManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mGetServiceListCalled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mRunningProfiles:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildTvInteractiveAppServiceListLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I[Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->createSessionInternalLocked(Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->startUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->stopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 96
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 100
    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    .line 116
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1663
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 1664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1666
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1667
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v4

    if-nez v4, :cond_11

    if-eqz p2, :cond_39

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    .line 1669
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1670
    :cond_39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1673
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1674
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 1675
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_41

    .line 1678
    :cond_6b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmPackageSet(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 128
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 136
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 137
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_TV_INTERACTIVE_APP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "TvInteractiveAppManagerService"

    if-nez v4, :cond_60

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping TV interactiva app service "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": it does not require the permission "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 144
    :cond_60
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_69
    new-instance v5, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 148
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_73} :catch_7d

    .line 153
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmPackageSet(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :catch_7d
    move-exception v4

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load TV Interactive App service "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 157
    :cond_95
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    new-instance v3, Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 160
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_107

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 161
    invoke-virtual {v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    if-nez v6, :cond_cd

    goto :goto_d2

    .line 167
    :cond_cd
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v7, v6

    :goto_d2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 168
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    if-nez v7, :cond_eb

    .line 171
    new-instance v7, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState-IA;)V

    .line 173
    :cond_eb
    invoke-static {v7, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    .line 174
    invoke-virtual {p0, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getInteractiveAppUid(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmUid(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;I)V

    .line 175
    invoke-virtual {v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;Landroid/content/ComponentName;)V

    .line 176
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmIAppNumber(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;I)V

    goto :goto_b3

    .line 180
    :cond_107
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10f
    :goto_10f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_153

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_129

    .line 182
    invoke-virtual {p0, v0, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyInteractiveAppServiceAddedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V

    goto :goto_10f

    :cond_129
    if-eqz p2, :cond_10f

    .line 185
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 186
    array-length v5, p2

    const/4 v6, 0x0

    :goto_13b
    if-ge v6, v5, :cond_10f

    aget-object v7, p2, v6

    .line 187
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_150

    .line 188
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 189
    invoke-virtual {p0, v0, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyInteractiveAppServiceUpdatedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V

    goto :goto_10f

    :cond_150
    add-int/lit8 v6, v6, 0x1

    goto :goto_13b

    .line 196
    :cond_153
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15f
    :goto_15f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_196

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15f

    .line 198
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v3

    .line 199
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz v3, :cond_192

    .line 201
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    .line 203
    :cond_192
    invoke-virtual {p0, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyInteractiveAppServiceRemovedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V

    goto :goto_15f

    .line 207
    :cond_196
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 208
    invoke-static {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fputmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/util/Map;)V

    return-void
.end method

.method public final clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 563
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 565
    :try_start_6
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionReleased(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onSessionReleased"

    .line 567
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method public final createSessionInternalLocked(Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1581
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p3

    .line 1582
    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1587
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p2

    .line 1590
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;[Landroid/view/InputChannel;)V

    const/4 v1, 0x1

    .line 1595
    :try_start_1c
    aget-object v2, p2, v1

    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmType(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v4

    invoke-interface {p1, v2, v0, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2b

    move p0, v1

    goto :goto_46

    :catch_2b
    move-exception p1

    const-string v0, "TvInteractiveAppManagerService"

    const-string v2, "error in createSession"

    .line 1598
    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1599
    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    const/4 p0, 0x0

    .line 1603
    :goto_46
    aget-object p1, p2, v1

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    return p0
.end method

.method public final getInteractiveAppUid(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)I
    .registers 4

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 289
    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get UID for  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInteractiveAppManagerService"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_11

    .line 583
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;-><init>(ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState-IA;)V

    .line 584
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    return-object v0
.end method

.method public final getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 596
    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    .line 597
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz p0, :cond_11

    return-object p0

    .line 599
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service state not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (userId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 629
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 634
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 636
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session not yet created for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 607
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p3

    .line 608
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 614
    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    if-eqz p0, :cond_37

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_36

    .line 619
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmCallingUid(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p3

    if-ne p2, p3, :cond_17

    goto :goto_36

    .line 620
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal access to the session with token "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    return-object p0

    .line 616
    :cond_37
    new-instance p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Session state not found for token "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 591
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    return-object p0
.end method

.method public final notifyInteractiveAppServiceAddedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 220
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 221
    invoke-interface {v1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceAdded(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "failed to report added Interactive App service to callback"

    .line 223
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 226
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInteractiveAppServiceRemovedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 236
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 239
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 240
    invoke-interface {v1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "failed to report removed Interactive App service to callback"

    .line 242
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 245
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyInteractiveAppServiceUpdatedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 255
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 258
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 259
    invoke-interface {v1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "failed to report updated Interactive App service to callback"

    .line 261
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 264
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p0, :cond_24

    .line 277
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 278
    invoke-interface {v1, p2, p3, p4, p5}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onStateChanged(Ljava/lang/String;III)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "failed to report RTE state changed"

    .line 280
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 283
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 307
    invoke-virtual {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->registerBroadcastReceivers()V

    goto :goto_1a

    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1a

    .line 309
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 310
    :try_start_f
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 311
    monitor-exit p1

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 301
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService-IA;)V

    const-string/jumbo v1, "tv_interactive_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final registerBroadcastReceivers()V
    .registers 12

    .line 316
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    .line 381
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 383
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 384
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 385
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    .line 386
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STOPPED"

    .line 387
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;

    invoke-direct {v6, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1612
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_5} :catch_2e
    .catchall {:try_start_1 .. :try_end_5} :catchall_2b

    .line 1613
    :try_start_5
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 1614
    invoke-static {p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1615
    invoke-static {p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1616
    invoke-static {p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_21} :catch_29
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_5 .. :try_end_21} :catch_29
    .catchall {:try_start_5 .. :try_end_21} :catchall_27

    :cond_21
    if-eqz p2, :cond_3a

    .line 1622
    :goto_23
    invoke-static {p2, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    goto :goto_3a

    :catchall_27
    move-exception p0

    goto :goto_3e

    :catch_29
    move-exception v1

    goto :goto_30

    :catchall_2b
    move-exception p0

    move-object p2, v0

    goto :goto_3e

    :catch_2e
    move-exception v1

    move-object p2, v0

    :goto_30
    :try_start_30
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in releaseSession"

    .line 1619
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_27

    if-eqz p2, :cond_3a

    goto :goto_23

    .line 1625
    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-object p2

    :goto_3e
    if-eqz p2, :cond_43

    .line 1622
    invoke-static {p2, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    .line 1624
    :cond_43
    throw p0
.end method

.method public final releaseSessionOfUserLocked(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 521
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 523
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 527
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 529
    :try_start_3e
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_4e

    :catch_46
    move-exception v1

    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in release"

    .line 531
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    :goto_4e
    invoke-virtual {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V

    goto :goto_32

    :cond_52
    return-void
.end method

.method public final removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1631
    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 1634
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    if-nez v1, :cond_19

    const-string p0, "TvInteractiveAppManagerService"

    const-string/jumbo p1, "sessionState null, no more remove session action!"

    .line 1637
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1643
    :cond_19
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-eqz v2, :cond_55

    .line 1645
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1646
    invoke-virtual {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1647
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1652
    :cond_55
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz v0, :cond_6c

    .line 1654
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1656
    :cond_6c
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final removeUser(I)V
    .registers 9

    .line 432
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v1

    if-nez v1, :cond_b

    .line 435
    monitor-exit v0

    return-void

    .line 438
    :cond_b
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 439
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_be

    if-eqz v4, :cond_17

    .line 441
    :try_start_29
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31
    .catchall {:try_start_29 .. :try_end_30} :catchall_be

    goto :goto_17

    :catch_31
    move-exception v3

    :try_start_32
    const-string v4, "TvInteractiveAppManagerService"

    const-string v5, "error in release"

    .line 443
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 447
    :cond_3a
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 450
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4d
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 451
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 452
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v4
    :try_end_63
    .catchall {:try_start_32 .. :try_end_63} :catchall_be

    if-eqz v4, :cond_79

    .line 454
    :try_start_65
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_70} :catch_71
    .catchall {:try_start_65 .. :try_end_70} :catchall_be

    goto :goto_79

    :catch_71
    move-exception v4

    :try_start_72
    const-string v5, "TvInteractiveAppManagerService"

    const-string v6, "error in unregisterCallback"

    .line 456
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    :cond_79
    :goto_79
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_4d

    .line 462
    :cond_83
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 465
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 466
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmPackageSet(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 467
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 468
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 470
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 473
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_bc

    const/4 p1, 0x0

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser(I)V

    .line 476
    :cond_bc
    monitor-exit v0

    return-void

    :catchall_be
    move-exception p0

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_72 .. :try_end_c0} :catchall_be

    throw p0
.end method

.method public final resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    .line 575
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1572
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onSessionCreated"

    .line 1574
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public final startProfileLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method public final startUser(I)V
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_33

    .line 485
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 486
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 487
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne v1, v2, :cond_31

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->startProfileLocked(I)V

    .line 493
    :cond_31
    monitor-exit v0

    return-void

    .line 483
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    .line 493
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final stopUser(I)V
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_10

    .line 499
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser(I)V

    .line 500
    monitor-exit v0

    return-void

    .line 503
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked(I)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked(I)V

    .line 505
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 506
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final switchUser(I)V
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 410
    monitor-exit v0

    return-void

    .line 412
    :cond_9
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string p0, "TvInteractiveAppManagerService"

    const-string p1, "cannot switch to a profile!"

    .line 414
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v0

    return-void

    .line 418
    :cond_1e
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 419
    invoke-virtual {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked(I)V

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked(I)V

    goto :goto_24

    .line 422
    :cond_3b
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 423
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked(I)V

    .line 424
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked(I)V

    .line 426
    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    .line 427
    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 428
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public final unbindServiceOfUserLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 543
    :cond_7
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 544
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 546
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz v1, :cond_13

    .line 547
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 548
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 550
    :try_start_3b
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception v2

    const-string v3, "TvInteractiveAppManagerService"

    const-string v4, "error in unregisterCallback"

    .line 552
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 556
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    :cond_5c
    return-void
.end method

.method public final updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1683
    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 1684
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-nez v1, :cond_11

    return-void

    .line 1688
    :cond_11
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 1689
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    return-void

    .line 1693
    :cond_23
    invoke-static {v1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    .line 1696
    :cond_26
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    .line 1697
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    .line 1698
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    :cond_44
    const/4 v3, 0x1

    .line 1700
    :cond_45
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    if-nez v2, :cond_75

    if-eqz v3, :cond_75

    .line 1703
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_54

    return-void

    .line 1712
    :cond_54
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 1714
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v0

    const v2, 0x2000001

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    invoke-static {v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    goto :goto_8d

    .line 1718
    :cond_75
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object p2

    if-eqz p2, :cond_8d

    if-nez v3, :cond_8d

    .line 1724
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1725
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    :goto_8d
    return-void
.end method
