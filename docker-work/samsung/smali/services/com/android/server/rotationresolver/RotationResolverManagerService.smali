.class public Lcom/android/server/rotationresolver/RotationResolverManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "RotationResolverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;,
        Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/rotationresolver/RotationResolverManagerService;",
        "Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_SERVICE_ENABLED:Z = true

.field public static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field public static final ORIENTATION_UNKNOWN:I = 0x0

.field public static final RESOLUTION_DISABLED:I = 0x6

.field public static final RESOLUTION_FAILURE:I = 0x8

.field public static final RESOLUTION_UNAVAILABLE:I = 0x7

.field public static final TAG:Ljava/lang/String; = "RotationResolverManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsServiceEnabled:Z

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static synthetic $r8$lambda$MLMghaLFdC2bHtTHRxQgqFPFLlE(Lcom/android/server/rotationresolver/RotationResolverManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrivacyManager(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/hardware/SensorPrivacyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 91
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040329

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 97
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/rotationresolver/RotationResolverManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static errorCodeToProto(I)I
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/16 p0, 0x8

    return p0

    :cond_e
    const/4 p0, 0x7

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isServiceConfigured(Landroid/content/Context;)Z
    .registers 1

    .line 143
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 106
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public static logRotationStats(III)V
    .registers 4

    .line 257
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result p1

    .line 258
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result p0

    const/16 v0, 0x148

    .line 256
    invoke-static {v0, p1, p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public static logRotationStatsWithTimeToCalculate(IIIJ)V
    .registers 11

    .line 248
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v1

    .line 249
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v2

    const/16 v0, 0x148

    move v3, p2

    move-wide v4, p3

    .line 247
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    return-void
.end method

.method public static surfaceRotationToProto(I)I
    .registers 4

    const/4 v0, 0x2

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_10

    if-eq p0, v2, :cond_e

    const/16 p0, 0x8

    return p0

    :cond_e
    const/4 p0, 0x5

    return p0

    :cond_10
    const/4 p0, 0x4

    return p0

    :cond_12
    return v2

    :cond_13
    return v0
.end method


# virtual methods
.method public getComponentNameShellCommand(I)Landroid/content/ComponentName;
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    if-eqz p0, :cond_11

    .line 150
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 152
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

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->newServiceLocked(IZ)Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .registers 4

    .line 130
    new-instance p2, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_21

    .line 105
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    const-string/jumbo v1, "rotation_resolver"

    .line 104
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 p1, 0x1

    const-string/jumbo v0, "service_enabled"

    .line 108
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    :cond_21
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

    .line 114
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    const-string/jumbo v1, "rotation_resolver"

    .line 115
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    :cond_13
    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 66
    check-cast p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->onServiceRemoved(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;I)V

    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;I)V
    .registers 3

    .line 136
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 137
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->destroyLocked()V

    .line 138
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public onStart()V
    .registers 4

    .line 122
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService-IA;)V

    const-string/jumbo v2, "resolver"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 123
    const-class v0, Landroid/rotationresolver/RotationResolverInternal;

    new-instance v2, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public resolveRotationShellCommand(ILandroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;)V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    if-eqz p0, :cond_14

    .line 162
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    goto :goto_2b

    .line 164
    :cond_14
    sget-object p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "service not available for user_id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method
