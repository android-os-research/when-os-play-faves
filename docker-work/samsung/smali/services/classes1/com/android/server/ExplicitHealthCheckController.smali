.class public Lcom/android/server/ExplicitHealthCheckController;
.super Ljava/lang/Object;
.source "ExplicitHealthCheckController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExplicitHealthCheckController"


# instance fields
.field public mConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mNotifySyncRunnable:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPassedConsumer:Ljava/util/function/Consumer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSupportedConsumer:Ljava/util/function/Consumer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$K3YCmiu9hM6q_LNBeGn-jHHMn_4(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$getRequestedPackages$5(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SRa9fw8RTJfzefVJ1-zsa9_9yG0(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$getSupportedPackages$4(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TbxhFlwsG0CJ5CtZofLYj-eLvBk(Lcom/android/server/ExplicitHealthCheckController;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$initState$6(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VeuRsi302dMjUdvGeMsrDp9--JQ(Lcom/android/server/ExplicitHealthCheckController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$syncRequests$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e0UdlCOLP9KZKH1FviQqhoLmwtk(Lcom/android/server/ExplicitHealthCheckController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$syncRequests$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vl7rcaLnhYKlnupU8sH7OIKbVso(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/ExplicitHealthCheckController;->lambda$syncRequests$3(Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xRm5fsgHSC-0Kc3i9gQ0DmxzkGE(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ExplicitHealthCheckController;->lambda$syncRequests$2(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/ExplicitHealthCheckController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteService(Lcom/android/server/ExplicitHealthCheckController;Landroid/service/watchdog/IExplicitHealthCheckService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindService(Lcom/android/server/ExplicitHealthCheckController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitState(Lcom/android/server/ExplicitHealthCheckController;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->initState(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindService(Lcom/android/server/ExplicitHealthCheckController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$getRequestedPackages$5(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "android.service.watchdog.extra.requested_packages"

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check requested packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$getSupportedPackages$4(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "android.service.watchdog.extra.supported_packages"

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check supported packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initState$6(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "android.service.watchdog.extra.health_check_passed_package"

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ExplicitHealthCheckController"

    if-nez v0, :cond_30

    .line 415
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    if-nez p0, :cond_2c

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Health check passed for package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "but no consumer registered."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 420
    :cond_2c
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_35

    :cond_30
    const-string p0, "Empty package passed explicit health check?"

    .line 423
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method private synthetic lambda$syncRequests$0(Ljava/lang/String;)V
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$syncRequests$1(Ljava/lang/String;)V
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->request(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$syncRequests$2(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .registers 7

    .line 154
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 160
    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 163
    :cond_20
    invoke-interface {p2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 166
    new-instance p1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/ExplicitHealthCheckController;->actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 169
    new-instance p1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/ExplicitHealthCheckController;->actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 172
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "ExplicitHealthCheckController"

    const-string p2, "No more health check requests, unbinding..."

    .line 173
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 175
    monitor-exit v0

    return-void

    .line 177
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private synthetic lambda$syncRequests$3(Ljava/util/Set;Ljava/util/List;)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 153
    new-instance v0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, v0}, Lcom/android/server/ExplicitHealthCheckController;->getRequestedPackages(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final actOnDifference(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 185
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 186
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 187
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public final bindService()V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v1, :cond_42

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v2, :cond_10

    goto :goto_42

    .line 303
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Explicit health check service not found"

    .line 305
    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-exit v0

    return-void

    .line 309
    :cond_1f
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 310
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$1;

    invoke-direct {v1, p0}, Lcom/android/server/ExplicitHealthCheckController$1;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    .line 345
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 345
    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Explicit health check service is bound"

    .line 347
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    monitor-exit v0

    return-void

    :cond_42
    :goto_42
    if-nez v1, :cond_4c

    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Not binding to service, service disabled"

    .line 295
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 296
    :cond_4c
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz p0, :cond_58

    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Not binding to service, service already connected"

    .line 297
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_58
    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Not binding to service, service already connecting"

    .line 299
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    .line 348
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final cancel(Ljava/lang/String;)V
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel health check for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 221
    monitor-exit v0

    return-void

    :cond_1c
    const-string v1, "ExplicitHealthCheckController"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_51

    .line 226
    :try_start_32
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    invoke-interface {p0, p1}, Landroid/service/watchdog/IExplicitHealthCheckService;->cancel(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catchall {:try_start_32 .. :try_end_37} :catchall_51

    goto :goto_4f

    :catch_38
    move-exception p0

    :try_start_39
    const-string v1, "ExplicitHealthCheckController"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final getRequestedPackages(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "get health check requested packages"

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 269
    monitor-exit v0

    return-void

    :cond_d
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Getting health check requested packages"

    .line 272
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2e

    .line 274
    :try_start_14
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p0, v1}, Landroid/service/watchdog/IExplicitHealthCheckService;->getRequestedPackages(Landroid/os/RemoteCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_2e

    goto :goto_2c

    :catch_24
    move-exception p0

    :try_start_25
    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Failed to get health check requested packages"

    .line 282
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final getServiceComponentNameLocked()Landroid/content/ComponentName;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceInfoLocked()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 392
    :cond_8
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

    .line 394
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not require permission "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_39
    return-object v1
.end method

.method public final getServiceInfoLocked()Landroid/content/pm/ServiceInfo;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ExplicitHealthCheckController"

    if-nez v0, :cond_16

    const-string/jumbo p0, "no external services package!"

    .line 369
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 373
    :cond_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.watchdog.ExplicitHealthCheckService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x84

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 377
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    return-object p0

    :cond_34
    :goto_34
    const-string p0, "No valid components found."

    .line 378
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getSupportedPackages(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "get health check supported packages"

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 242
    monitor-exit v0

    return-void

    :cond_d
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Getting health check supported packages"

    .line 245
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2e

    .line 247
    :try_start_14
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p0, v1}, Landroid/service/watchdog/IExplicitHealthCheckService;->getSupportedPackages(Landroid/os/RemoteCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_2e

    goto :goto_2c

    :catch_24
    move-exception p0

    :try_start_25
    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Failed to get health check supported packages"

    .line 257
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    :goto_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final initState(Landroid/os/IBinder;)V
    .registers 5

    .line 403
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-nez v1, :cond_13

    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Attempting to connect disabled service?? Unbinding..."

    .line 405
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_13
    invoke-static {p1}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/watchdog/IExplicitHealthCheckService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3c

    .line 412
    :try_start_19
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p1, v1}, Landroid/service/watchdog/IExplicitHealthCheckService;->setCallback(Landroid/os/RemoteCallback;)V

    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Service initialized, syncing requests"

    .line 426
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2d} :catch_2e
    .catchall {:try_start_19 .. :try_end_2d} :catchall_3c

    goto :goto_35

    :catch_2e
    :try_start_2e
    const-string p1, "ExplicitHealthCheckController"

    const-string v1, "Could not setCallback on explicit health check service"

    .line 428
    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_3c

    .line 432
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_3c
    move-exception p0

    .line 430
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final prepareServiceLocked(Ljava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 447
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service not ready to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz p1, :cond_1e

    const-string p1, ". Binding..."

    goto :goto_20

    :cond_1e
    const-string p1, ". Disabled"

    :goto_20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExplicitHealthCheckController"

    .line 447
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    if-eqz p1, :cond_33

    .line 450
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public final request(Ljava/lang/String;)V
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request health check for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 201
    monitor-exit v0

    return-void

    :cond_1d
    const-string v1, "ExplicitHealthCheckController"

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_52

    .line 206
    :try_start_33
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    invoke-interface {p0, p1}, Landroid/service/watchdog/IExplicitHealthCheckService;->request(Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catchall {:try_start_33 .. :try_end_38} :catchall_52

    goto :goto_50

    :catch_39
    move-exception p0

    :try_start_3a
    const-string v1, "ExplicitHealthCheckController"

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to request health check for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_52

    throw p0
.end method

.method public setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_16

    :cond_f
    const-string v1, "ExplicitHealthCheckController"

    const-string v2, "Resetting health check controller callbacks"

    .line 114
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mPassedConsumer:Ljava/util/function/Consumer;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    .line 119
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/ExplicitHealthCheckController;->mNotifySyncRunnable:Ljava/lang/Runnable;

    .line 120
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public setEnabled(Z)V
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ExplicitHealthCheckController"

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Explicit health checks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v3, "enabled."

    goto :goto_16

    :cond_14
    const-string v3, "disabled."

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 100
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public syncRequests(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 141
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    if-nez v1, :cond_19

    const-string p1, "ExplicitHealthCheckController"

    const-string v0, "Health checks disabled, no supported packages"

    .line 144
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 150
    :cond_19
    new-instance v0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;)V

    invoke-virtual {p0, v0}, Lcom/android/server/ExplicitHealthCheckController;->getSupportedPackages(Ljava/util/function/Consumer;)V

    return-void

    :catchall_22
    move-exception p0

    .line 141
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final unbindService()V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_13

    .line 355
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 356
    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 357
    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Landroid/content/ServiceConnection;

    :cond_13
    const-string p0, "ExplicitHealthCheckController"

    const-string v1, "Explicit health check service is unbound"

    .line 359
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method
