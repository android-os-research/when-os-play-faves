.class public Lcom/android/server/ambientcontext/AmbientContextManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "AmbientContextManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;,
        Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/ambientcontext/AmbientContextManagerService;",
        "Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_SERVICE_ENABLED:Z = true

.field public static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field public static final MAX_TEMPORARY_SERVICE_DURATION_MS:I = 0x7530

.field public static final TAG:Ljava/lang/String; = "AmbientContextManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mExistingClientRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mIsServiceEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$M4zDGqwQ524eyvId3nxnRjfHFvo(Lcom/android/server/ambientcontext/AmbientContextManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 111
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040312

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 118
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 119
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/ambientcontext/AmbientContextManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/lang/Object;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static isDetectionServiceConfigured()Z
    .registers 4

    .line 225
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    .line 228
    array-length v0, v0

    if-eqz v0, :cond_13

    const/4 v2, 0x1

    .line 229
    :cond_13
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detection service configured: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private synthetic lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 133
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public clientRemoved(ILjava/lang/String;)V
    .registers 6

    .line 155
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->findExistingRequests(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public enforceCallingPermissionForManagement()V
    .registers 3

    .line 214
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final findExistingRequests(ILjava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 161
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 162
    invoke-virtual {v1, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 163
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public getComponentName(I)Landroid/content/ComponentName;
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    if-eqz p0, :cond_11

    .line 314
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 316
    :cond_11
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .registers 1

    const/16 p0, 0x7530

    return p0
.end method

.method public getPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    .line 171
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 172
    invoke-virtual {v0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 173
    invoke-virtual {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 8

    .line 143
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New client added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 147
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->findExistingRequests(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 150
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;-><init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public newServiceLocked(IZ)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    .registers 4

    .line 190
    new-instance p2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newServiceLocked(IZ)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_20

    .line 132
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    const-string v1, "ambient_context_manager_service"

    .line 130
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 p1, 0x1

    const-string/jumbo v0, "service_enabled"

    .line 135
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    :cond_20
    return-void
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "service_enabled"

    .line 180
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    const-string v1, "ambient_context_manager_service"

    .line 181
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    :cond_12
    return-void
.end method

.method public onServicePackageRestartedLocked(I)V
    .registers 4

    .line 202
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Restoring remote request. Reason: Service package restarted."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->restorePreviouslyEnabledClients(I)V

    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .registers 4

    .line 208
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Restoring remote request. Reason: Service package updated."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->restorePreviouslyEnabledClients(I)V

    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;I)V
    .registers 3

    .line 196
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onServiceRemoved"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->destroyLocked()V

    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 57
    check-cast p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->onServiceRemoved(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 124
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal-IA;)V

    const-string v1, "ambient_context"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V
    .registers 8

    .line 279
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    if-eqz p0, :cond_18

    .line 284
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    goto :goto_2d

    .line 286
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "query service not available for user_id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final restorePreviouslyEnabledClients(I)V
    .registers 8

    .line 292
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 294
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 296
    invoke-virtual {v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserId(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 297
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring detection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getRequest()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v3

    .line 299
    invoke-virtual {v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual {v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;

    move-result-object v5

    .line 301
    invoke-virtual {v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getClientStatusCallback()Landroid/os/RemoteCallback;

    move-result-object v2

    .line 298
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    goto :goto_f

    .line 304
    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 9

    .line 241
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    if-eqz p0, :cond_18

    .line 246
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    goto :goto_2d

    .line 249
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "service not available for user_id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public stopAmbientContextEvent(ILjava/lang/String;)V
    .registers 6

    .line 260
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    if-eqz p0, :cond_18

    .line 265
    invoke-virtual {p0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    goto :goto_2d

    .line 267
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "service not available for user_id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_2f

    throw p0
.end method
