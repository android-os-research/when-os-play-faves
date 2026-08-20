.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$c;
    }
.end annotation


# static fields
.field public static final CLOUD_SYNC_SUPPORTED_VERSION:J = 0x7270e0cL
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final MCFDS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds"

.field public static final MCFDS_PUBLIC_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds.McfDeviceSyncPublicService"

.field public static final MCFDS_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds.McfDeviceSyncService"

.field public static final SERVICE_STATE_AVAILABLE:I = 0x5

.field public static final SERVICE_STATE_CONNECTED:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SERVICE_STATE_DISCONNECTED:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SERVICE_STATE_NONE:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SERVICE_STATE_REQUESTED:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SERVICE_STATE_UNAVAILABLE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "ContinuityAdapterImpl"


# instance fields
.field public final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile mServiceState:I


# direct methods
.method public static synthetic $r8$lambda$7Lh6QN28WuY03knvZSjVIgOH4Ik(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$release$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O_hlSNEn0EGYKla-TjydLVipRrk(I)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$initialize$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WtT_YEbcUDqc8XSXLr8FffAMlPs(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$unbindService$3(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XuobvT2Pa_UP8mjC2J3t5UMHB_8(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$bindService$2(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/u;->a()Lcom/samsung/android/mcf/continuity/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/c;->a()Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/impl/u;->a(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Lcom/samsung/android/mcf/continuity/impl/d;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-static {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/u;->b(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)Lcom/samsung/android/mcf/continuity/impl/s;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/continuity/impl/u;->a(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;Lcom/samsung/android/mcf/continuity/impl/s;)Lcom/samsung/android/mcf/continuity/impl/g;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/g;

    invoke-static {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/u;->a(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)Lcom/samsung/android/mcf/continuity/impl/o;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/u;->b(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/r;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/u;->a(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/p;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/impl/u;->a(Lcom/samsung/android/mcf/continuity/impl/r;Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/q;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/q;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->destroy()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/d;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->trySyncCloud(Landroid/content/Context;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Z

    move-result p0

    return p0
.end method

.method public static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mcfds.ACTION_START_FROM_CONTINUITY_SDK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.mcfds"

    const-string v3, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Caller"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createStartIntentForPublicService(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "createStartIntentForPublicService"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mcfds.ACTION_ACCESS_FROM_CONTINUITY_SDK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.mcfds"

    const-string v3, "com.samsung.android.mcfds.McfDeviceSyncPublicService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Caller"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$c;->a()Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    move-result-object v0

    return-object v0
.end method

.method public static isCloudSyncSupported(Landroid/content/Context;)Z
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getServiceVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x7270e0c

    cmp-long p0, v0, v2

    if-ltz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private synthetic lambda$bindService$2(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V
    .registers 9

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    const-string v1, "bindService"

    const-string v2, "ContinuityAdapterImpl"

    if-nez v0, :cond_1f

    const-string p0, "Please initialize first"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_1f
    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    if-eqz v0, :cond_45

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid service state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_45
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_52

    const-string/jumbo p0, "packageManager is null"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createServiceConnection(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Landroid/content/ServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.mcfds"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_6b

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    move v4, v3

    goto :goto_70

    :cond_6b
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createStartIntentForPublicService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v4, 0x1

    :goto_70
    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p2, v0, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string/jumbo p1, "start bindService"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return-void

    :cond_82
    const-string v0, "fail bindService"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    iput v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$initialize$0(I)V
    .registers 4

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "initialize"

    const-string v2, "INIT_SUCCESS"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->start()V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/a;->a(I)V

    return-void
.end method

.method private synthetic lambda$release$1(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ContinuityAdapterImpl"

    const-string/jumbo v1, "release"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/a;->a(I)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdown()V

    return-void
.end method

.method private synthetic lambda$unbindService$3(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ContinuityAdapterImpl"

    const-string/jumbo v1, "unbindService"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Z
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "bindService"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public createIContinuitySyncCloudCallback(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;
    .registers 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v6, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    return-object v6
.end method

.method public final createServiceConnection(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Landroid/content/ServiceConnection;
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-object v0
.end method

.method public final destroy()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/d;->a()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/c;->b()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/g;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/g;->b()V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/q;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/q;->a()V

    return-void
.end method

.method public getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "getContinuityDiscoveryManager"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_21
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/g;

    return-object p0
.end method

.method public getContinuitySessionManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "getContinuitySessionManager"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_21
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/q;

    return-object p0
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public getServiceState()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return p0
.end method

.method public initialize(Landroid/content/Context;I)I
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->isContinuityFeatureEnabled()Z

    move-result p0

    const-string v0, "initialize"

    const-string v1, "ContinuityAdapterImpl"

    if-nez p0, :cond_12

    const-string p0, "INIT_FAIL_FEATURE_NOT_ENABLED"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x385

    return p0

    :cond_12
    const/16 p0, 0x1f

    const/4 v2, 0x1

    if-eq p2, p0, :cond_4d

    if-eq p2, v2, :cond_48

    const/4 p0, 0x2

    if-eq p2, p0, :cond_43

    const/4 p0, 0x3

    if-eq p2, p0, :cond_43

    const/4 p0, 0x4

    if-eq p2, p0, :cond_43

    const/4 p0, 0x5

    if-eq p2, p0, :cond_3e

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result p0

    if-nez p0, :cond_5a

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5b

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isMultiControlSettingEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5b

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isVideoCallContinuityEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_5b

    :cond_3e
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isVideoCallContinuityEnabled(Landroid/content/Context;)Z

    move-result v2

    goto :goto_5b

    :cond_43
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result v2

    goto :goto_5b

    :cond_48
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isMultiControlSettingEnabled(Landroid/content/Context;)Z

    move-result v2

    goto :goto_5b

    :cond_4d
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5a

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/DLog;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x0

    :cond_5b
    :goto_5b
    if-nez v2, :cond_65

    const-string p0, "INIT_FAIL_SETTING_NOT_ENABLED"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x386

    return p0

    :cond_65
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->initServiceSupportFeatures(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isServiceSupportAppId(I)Z

    move-result p0

    if-nez p0, :cond_76

    const-string p0, "INIT_FAIL_APP_ID_NOT_SUPPORTED"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x387

    return p0

    :cond_76
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    const/16 p0, 0x384

    return p0
.end method

.method public release(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final trySyncCloud(Landroid/content/Context;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Z
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->isCloudSyncSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/d;->a(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public unbindService(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unbindServiceImpl(Landroid/content/Context;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuityAdapterImpl"

    const-string/jumbo v1, "unbindServiceImpl"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v2

    if-nez v2, :cond_1a

    const-string p0, "Please initialize first"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    if-nez v2, :cond_35

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid service state "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_44

    const-string v2, "connected, unregister callback"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/d;->m()Z

    :cond_44
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_57

    :try_start_48
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_54

    :catch_4c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    :cond_57
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->destroy()V

    return-void
.end method
