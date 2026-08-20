.class public Lcom/android/server/biometrics/log/BiometricContextProvider;
.super Ljava/lang/Object;
.source "BiometricContextProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/log/BiometricContext;


# static fields
.field public static final SESSION_TYPES:I = 0x3

.field public static final TAG:Ljava/lang/String; = "BiometricContextProvider"

.field public static sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;


# instance fields
.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public mIsDozing:Z

.field public final mSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_2MYC_po3MuhMoWo9cfk_J8sJdM(Lcom/android/server/biometrics/log/BiometricContextProvider;Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/log/BiometricContextProvider;->lambda$notifySubscribers$0(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDozing(Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySubscribers(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->notifySubscribers()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    .line 84
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 86
    :try_start_16
    new-instance p1, Lcom/android/server/biometrics/log/BiometricContextProvider$1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;Landroid/os/Handler;)V

    invoke-interface {p2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    const/4 p1, 0x3

    .line 101
    new-instance p3, Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-interface {p2, p1, p3}, Lcom/android/internal/statusbar/IStatusBarService;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p0

    const-string p1, "BiometricContextProvider"

    const-string p2, "Unable to register biometric context listener"

    .line 116
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method

.method public static defaultProvider(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;
    .registers 5

    .line 56
    const-class v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2d

    if-nez v1, :cond_29

    .line 59
    :try_start_7
    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    new-instance v2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v2, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "statusbar"

    .line 61
    invoke-static {p0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/biometrics/log/BiometricContextProvider;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_1f
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_1f} :catch_20
    .catchall {:try_start_7 .. :try_end_1f} :catchall_2d

    goto :goto_29

    :catch_20
    move-exception p0

    .line 64
    :try_start_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find required service"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :cond_29
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2d

    .line 68
    sget-object p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-object p0

    :catchall_2d
    move-exception p0

    .line 67
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method private synthetic lambda$notifySubscribers$0(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAod()Z

    move-result p0

    iput-boolean p0, p1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 181
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBiometricPromptSessionId()Ljava/lang/Integer;
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/InstanceId;

    if-eqz p0, :cond_18

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public getKeyguardEntrySessionId()Ljava/lang/Integer;
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/InstanceId;

    if-eqz p0, :cond_18

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public isAod()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsDozing:Z

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final notifySubscribers()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final setFirstSessionId(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getKeyguardEntrySessionId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    const/4 p0, 0x2

    .line 133
    iput-byte p0, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    .line 137
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->getBiometricPromptSessionId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 139
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    const/4 p0, 0x1

    .line 140
    iput-byte p0, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    :cond_20
    const/4 p0, 0x0

    .line 144
    iput p0, p1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 145
    iput-byte p0, p1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void
.end method

.method public subscribe(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/common/OperationContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unsubscribe(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateContext(Landroid/hardware/biometrics/common/OperationContext;Z)Landroid/hardware/biometrics/common/OperationContext;
    .registers 4

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAod()Z

    move-result v0

    iput-boolean v0, p1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 124
    iput-boolean p2, p1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->setFirstSessionId(Landroid/hardware/biometrics/common/OperationContext;)V

    return-object p1
.end method
