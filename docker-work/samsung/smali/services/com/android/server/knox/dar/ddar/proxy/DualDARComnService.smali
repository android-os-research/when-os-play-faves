.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService$Stub;
.source "DualDARComnService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;,
        Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;
    }
.end annotation


# static fields
.field public static final DUAL_DAR_AGENT_METADATA:Ljava/lang/String; = "proxyAgent.class"

.field public static final DUAL_DAR_CORE_AGENT:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final MSG_AGENT_DIED:I = 0x1

.field public static final MSG_CHECK_BINDING:I = 0x2

.field public static final SYSTEM_PROXY_AGENT:Ljava/lang/String; = "SYSTEM_PROXY_AGENT"

.field public static final TAG:Ljava/lang/String; = "DualDARComnService"


# instance fields
.field public mBackgroundHandler:Landroid/os/Handler;

.field public final mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

.field public mContext:Landroid/content/Context;

.field public mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

.field public mHandler:Landroid/os/Handler;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mProxyAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;",
            "Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mProxyAgentsLock:Ljava/lang/Object;

.field public mRegisteredProxyAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRegisteredProxyAgentsLock:Ljava/lang/Object;

.field public mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$ZSdWxu0RTCFr01jRWc_ORBJksLo(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;ILcom/samsung/android/knox/ddar/IDualDARPolicy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->lambda$addKPUAppToWhitelist$1(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$it8I5_qtx0UgS_eIfgomylAMeGA(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->lambda$relayAsync$0(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBindingChecker(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddKPUAppToWhitelist(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->addKPUAppToWhitelist(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckProxyAgentBound(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->checkProxyAgentBound(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mconnectAgentsByUser(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectAgentsByUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasKnoxKPUInternalPermission(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->hasKnoxKPUInternalPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDualDAREnabled(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->isDualDAREnabled(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreConnectAgentsByPkgName(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->reConnectAgentsByPkgName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 78
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    .line 81
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 138
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 141
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "DualDARComnService"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "DualDARComnService-bgThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 163
    new-instance p1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    .line 165
    const-class p1, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;

    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService-IA;)V

    invoke-static {p1, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$addKPUAppToWhitelist$1(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)V
    .registers 8

    const-string v0, "dualdar-config-datalock-whitelistpackages"

    const-string v1, "DualDARComnService"

    .line 561
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    .line 563
    :try_start_9
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_34

    :catch_18
    move-exception p0

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addKPUAppToWhitelist failed ! Component may be null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, -0x1

    .line 569
    :goto_34
    :try_start_34
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p2, v2}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 571
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 572
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 573
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 574
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p2, v0, v4}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_53} :catch_54

    goto :goto_5b

    :catch_54
    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "addKPUAppToWhitelist Failed"

    .line 577
    invoke-static {v1, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method private synthetic lambda$relayAsync$0(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentSync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    move-result-object p0

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "relayAsync from bg thread, relay start to agent : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARComnService"

    invoke-static {v2, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p0, :cond_28

    .line 545
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2f

    :cond_28
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "ProxyAgentWrapper is NULL !"

    .line 547
    invoke-static {v2, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 550
    :goto_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "relayAsync from bg thread, relay end to agent : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public final addKPUAppToWhitelist(I)V
    .registers 4

    .line 559
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final checkProxyAgentBound(Ljava/lang/String;)Z
    .registers 4

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_11

    const-string p0, "DualDARComnService"

    const-string p1, "Registered agent not found"

    new-array v1, v0, [Ljava/lang/Object;

    .line 264
    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 269
    :cond_11
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_14
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 271
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_2e

    if-nez p0, :cond_29

    const-string p0, "DualDARComnService"

    const-string p1, "Bound agent not found"

    new-array v1, v0, [Ljava/lang/Object;

    .line 273
    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 276
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result p0

    return p0

    :catchall_2e
    move-exception p0

    .line 271
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final connectAgentsByUser(I)V
    .registers 6

    const-string v0, "DualDARComnService"

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAgentsByUser User : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 592
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 594
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 596
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 597
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 598
    iget v3, v2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    if-ne v3, p1, :cond_26

    .line 599
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    goto :goto_26

    .line 602
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_1c .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
    .registers 7

    const-string v0, "DualDARComnService"

    const-string v1, "connectProxyAgentASync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 693
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 694
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_d
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 696
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 697
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBindPending()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_33

    .line 704
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 705
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_33
    :goto_33
    const-string p0, "DualDARComnService"

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy Agent is already bound or pending bound: Agent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 700
    monitor-exit v0

    return-object v1

    .line 708
    :cond_4f
    :goto_4f
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    .line 709
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v3

    if-nez v3, :cond_7b

    const-string p0, "DualDARComnService"

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    .line 711
    monitor-exit v0

    return-object p0

    .line 714
    :cond_7b
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    monitor-exit v0

    return-object v1

    :catchall_82
    move-exception p0

    .line 716
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_d .. :try_end_84} :catchall_82

    throw p0
.end method

.method public final connectProxyAgentSync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
    .registers 7

    const-string v0, "DualDARComnService"

    const-string v1, "connectProxyAgentSync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 626
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 628
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_d
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 630
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_d1

    const/4 v0, 0x0

    if-eqz v1, :cond_74

    .line 635
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string p0, "DualDARComnService"

    const-string p1, "Proxy Agent is already bound. So Noop"

    new-array v0, v2, [Ljava/lang/Object;

    .line 637
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    .line 641
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBindPending()Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string p0, "DualDARComnService"

    const-string v3, "Bind Pending. So just wait"

    new-array v4, v2, [Ljava/lang/Object;

    .line 642
    invoke-static {p0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    move-result p0

    if-nez p0, :cond_5b

    const-string p0, "DualDARComnService"

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    :cond_5b
    return-object v1

    .line 651
    :cond_5c
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 654
    :try_start_5f
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_6f

    .line 658
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 659
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_6f
    monitor-exit v3

    goto :goto_74

    :catchall_71
    move-exception p0

    monitor-exit v3
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_71

    throw p0

    .line 668
    :cond_74
    :goto_74
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    .line 669
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    move-result v3

    if-nez v3, :cond_9e

    const-string p0, "DualDARComnService"

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .line 674
    :cond_9e
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 675
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 677
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 679
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    goto :goto_cc

    .line 682
    :cond_c1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cc

    .line 686
    :cond_c7
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :goto_cc
    monitor-exit v2

    return-object v1

    :catchall_ce
    move-exception p0

    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_a1 .. :try_end_d0} :catchall_ce

    throw p0

    :catchall_d1
    move-exception p0

    .line 630
    :try_start_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw p0
.end method

.method public deregisterAgent(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string v2, "deregisterAgent"

    .line 454
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 455
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->deregisterAgentInternal(Ljava/lang/String;)V

    return-void
.end method

.method public final deregisterAgentInternal(Ljava/lang/String;)V
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    if-nez p1, :cond_2d

    const-string p0, "DualDARComnService"

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox Proxy Agent Not Registered Agent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "No action taken"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 465
    monitor-exit v0

    return-void

    .line 468
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->disconnectProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    .line 469
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final disconnectProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V
    .registers 5

    .line 474
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 476
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 477
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 479
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->disconnect()V

    .line 483
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 484
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final enforceCallingUser()V
    .registers 3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "DualDARComnService"

    const-string v1, "enforceCallingUser"

    .line 320
    invoke-static {v0, v1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 323
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_17

    return-void

    .line 326
    :cond_17
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_22

    return-void

    .line 327
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ensureProxyAgentBinding(Ljava/lang/String;)V
    .registers 6

    const-string v0, "DualDARComnService"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureProxyAgentBinding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v0

    if-nez v0, :cond_29

    const-string p0, "DualDARComnService"

    const-string p1, "Stop to ensure binding due to agent not registered"

    new-array v0, v2, [Ljava/lang/Object;

    .line 289
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 293
    :cond_29
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 294
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 296
    :cond_37
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->getCheckerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 298
    :try_start_44
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_62

    .line 300
    :try_start_49
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->getCheckerLock()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_52} :catch_53
    .catchall {:try_start_49 .. :try_end_52} :catchall_62

    goto :goto_57

    :catch_53
    move-exception p0

    .line 302
    :try_start_54
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 304
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_62

    const-string p0, "DualDARComnService"

    const-string p1, "ensureProxyAgentBinding: finished"

    new-array v0, v2, [Ljava/lang/Object;

    .line 305
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_62
    move-exception p0

    .line 304
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public ensureProxyAgentBindingIfRequired(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 253
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->checkProxyAgentBound(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    if-eqz v0, :cond_1d

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->ensureProxyAgentBinding(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public final findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 282
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final findProxyAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
    .registers 10

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findProxyAgentByAction : agent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARComnService"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 359
    :try_start_32
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 362
    invoke-virtual {p0, v2, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of Apps with action = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 364
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9b

    .line 365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_74
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 366
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 367
    new-instance p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 368
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_95} :catch_97

    move-object v0, p0

    goto :goto_9b

    :catch_97
    move-exception p0

    .line 374
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9b
    :goto_9b
    if-nez v0, :cond_c4

    .line 378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Knox Proxy Agent Not Found : for package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_da

    .line 381
    :cond_c4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Knox Proxy Agent Found =   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_da
    return-object v0
.end method

.method public final findProxyAgentByMetaData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
    .registers 10

    const-string/jumbo p0, "package"

    .line 420
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 419
    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x80

    const/4 v2, 0x0

    .line 423
    :try_start_e
    invoke-interface {p0, p3, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 426
    invoke-interface {p0, p3, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_72

    const/4 v1, 0x0

    const-string v3, "DualDARComnService"

    if-eqz p0, :cond_52

    if-nez v0, :cond_1e

    goto :goto_52

    .line 435
    :cond_1e
    :try_start_1e
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_23

    return-object v2

    .line 438
    :cond_23
    iget-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 439
    invoke-virtual {p0, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    if-nez p3, :cond_2e

    goto :goto_51

    .line 443
    :cond_2e
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " appInfo.uid:"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p4, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    new-instance p4, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, p1, p2, v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    return-object p4

    :cond_51
    :goto_51
    return-object v2

    .line 427
    :cond_52
    :goto_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found user:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_71} :catch_72

    return-object v2

    :catch_72
    move-exception p0

    .line 446
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getDualDARPolicyService()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/ddar/IDualDARPolicy;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public handleAgentDied(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V
    .registers 6

    const-string v0, "DualDARComnService"

    const-string/jumbo v1, "handleAgentDied"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 720
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 721
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_e
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 724
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 725
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_80

    :try_start_27
    const-string/jumbo v0, "package"

    .line 731
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 730
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 732
    iget-object v1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-interface {v0, v1, v3}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string p0, "DualDARComnService"

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not installed service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 737
    :cond_5d
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    move-result-object p0

    if-eqz p0, :cond_67

    .line 739
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->enableReconnectionFlag()V

    goto :goto_7f

    :cond_67
    const-string p0, "DualDARComnService"

    const-string p1, "ProxyAgentWrapper is NULL !"

    new-array v0, v2, [Ljava/lang/Object;

    .line 741
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_70} :catch_71

    goto :goto_7f

    :catch_71
    move-exception p0

    const-string p1, "DualDARComnService"

    const-string/jumbo v0, "reconnectService remote exception"

    new-array v1, v2, [Ljava/lang/Object;

    .line 744
    invoke-static {p1, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 745
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_7f
    return-void

    :catchall_80
    move-exception p0

    .line 727
    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public final hasKnoxKPUInternalPermission(Ljava/lang/String;)Z
    .registers 4

    .line 750
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 751
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2a

    .line 753
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasKnoxKPUInternalPermission "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "DualDARComnService"

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v0
.end method

.method public final init()V
    .registers 16

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "initialize"

    .line 181
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_STARTED"

    .line 183
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 184
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    .line 185
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 188
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 189
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 190
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 191
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 192
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 193
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 194
    iget-object v9, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->init()V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->initKnownProxyAgents()V

    return-void
.end method

.method public final initDualDARAgentsIfRequired()V
    .registers 5

    .line 240
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 241
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "KNOXCORE_PROXY_AGENT"

    const-string v2, "com.samsung.android.knox.containercore"

    const-string/jumbo v3, "proxyAgent.class"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    :cond_17
    return-void
.end method

.method public final initKnownProxyAgents()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "initKnownProxyAgents"

    .line 222
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->initDualDARAgentsIfRequired()V

    return-void
.end method

.method public final isDualDAREnabled(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final reConnectAgentsByPkgName(Ljava/lang/String;)V
    .registers 8

    const-string v0, "DualDARComnService"

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reConnectAgentsByPkgName:: package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 607
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 609
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 611
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 612
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 613
    iget-object v4, v3, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 614
    invoke-virtual {p0, v3}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 616
    invoke-virtual {v3}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->enableReconnectionFlag()V

    goto :goto_27

    :cond_55
    const-string v3, "DualDARComnService"

    const-string v4, "ProxyAgentWrapper is NULL !"

    new-array v5, v2, [Ljava/lang/Object;

    .line 618
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_27

    .line 622
    :cond_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_1d .. :try_end_63} :catchall_61

    throw p0
.end method

.method public registerAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "registerAgentByAction"

    .line 313
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 314
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 316
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->registerAgentByActionInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final registerAgentByActionInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    .line 334
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    const-string p0, "DualDARComnService"

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Knox Proxy Agent Already Registered Agent = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "No action taken"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 338
    monitor-exit v0

    return v2

    .line 341
    :cond_2e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findProxyAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object p1

    if-nez p1, :cond_3f

    const-string p0, "DualDARComnService"

    const-string p1, "Knox Proxy Agent Not found"

    new-array p2, v3, [Ljava/lang/Object;

    .line 343
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    monitor-exit v0

    return v3

    .line 346
    :cond_3f
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object p3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_4d

    if-eqz p5, :cond_4c

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    :cond_4c
    return v2

    :catchall_4d
    move-exception p0

    .line 347
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "registerAgentByMetadata"

    .line 388
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 389
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 391
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->registerAgentByMetadataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final registerAgentByMetadataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    .line 397
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    const-string p0, "DualDARComnService"

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Knox Proxy Agent Already Registered Agent = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "No action taken"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 401
    monitor-exit v0

    return v2

    .line 404
    :cond_2a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findProxyAgentByMetaData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object p1

    if-nez p1, :cond_3b

    const-string p0, "DualDARComnService"

    const-string p1, "Knox Proxy Agent Not found"

    new-array p2, v3, [Ljava/lang/Object;

    .line 406
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    monitor-exit v0

    return v3

    .line 409
    :cond_3b
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object p3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_49

    if-eqz p5, :cond_48

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    :cond_48
    return v2

    :catchall_49
    move-exception p0

    .line 410
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public relay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    const-string v0, "SYSTEM_PROXY_AGENT"

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 495
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_4f

    .line 497
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DualDARComnService"

    if-nez v0, :cond_38

    .line 499
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "relay: Agent not found, agent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4e

    .line 501
    :cond_38
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentSync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_4f

    :cond_47
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "ProxyAgentWrapper is NULL !"

    .line 505
    invoke-static {v2, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_4e
    const/4 p0, 0x0

    :goto_4f
    if-eqz p4, :cond_54

    .line 510
    invoke-virtual {p4}, Landroid/os/Bundle;->clear()V

    :cond_54
    return-object p0
.end method

.method public relayAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    const-string v0, "SYSTEM_PROXY_AGENT"

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "dual_dar_response"

    if-eqz v0, :cond_24

    .line 519
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 530
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    .line 534
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v5

    if-nez v5, :cond_46

    .line 536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "relay: Agent not found, agent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "DualDARComnService"

    invoke-static {p2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0

    .line 540
    :cond_46
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda1;

    move-object v3, v10

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 554
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public systemReady()V
    .registers 3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "DualDARComnService"

    const-string v1, "device does not support DualDAR"

    .line 176
    invoke-static {v0, v1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
