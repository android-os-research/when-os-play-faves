.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DualDARPlatformProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DualDARPlatformProxy"

.field public static mInstance:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;


# direct methods
.method public static synthetic $r8$lambda$LVrnAyAabJU402TYpQ8Iwnb51K0(Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;Landroid/os/Bundle;Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->lambda$getConfig$0(Landroid/os/Bundle;Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pGxtDpooimbzURoTivbeDe-1huc(Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;Landroid/os/Bundle;Lcom/samsung/android/knox/ddar/IDualDARPolicy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->lambda$setClientInfo$1(Landroid/os/Bundle;Lcom/samsung/android/knox/ddar/IDualDARPolicy;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARPlatformProxy"

    const-string v2, "DualDARPlatformProxy() constructor"

    .line 29
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 30
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    monitor-enter v0

    .line 34
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    if-nez v1, :cond_e

    .line 35
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    .line 37
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$getConfig$0(Landroid/os/Bundle;Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;
    .registers 7

    const-string v0, "DualDARPlatformProxy"

    const-string/jumbo v1, "user_id"

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 77
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    :try_start_e
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 80
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_39

    :catch_1d
    move-exception p0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig failed ! Component may be null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, -0x1

    .line 86
    :goto_39
    :try_start_39
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p2, v1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_43

    return-object p0

    :catch_43
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "getConfig Failed"

    .line 88
    invoke-static {v0, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$setClientInfo$1(Landroid/os/Bundle;Lcom/samsung/android/knox/ddar/IDualDARPolicy;)V
    .registers 10

    const-string/jumbo v0, "null"

    const-string v1, "DualDARPlatformProxy"

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_7
    const-string/jumbo v4, "user_id"

    .line 103
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_5d

    :try_start_e
    const-string v5, "DUAL_DAR_ADMIN_PACKAGE"

    .line 104
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 106
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 109
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setClientInfo adminPackage : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setClientInfo adminUid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5a} :catch_5b

    goto :goto_7a

    :catch_5b
    move-exception p0

    goto :goto_5f

    :catch_5d
    move-exception p0

    move v4, v2

    .line 113
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setClientInfo failed ! Component may be null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_7a
    const-string p0, "CLIENT_PACKAGE_NAME"

    .line 116
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CLIENT_PACKAGE_SIGNATURE"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "CLIENT_VERSION"

    .line 118
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setClientInfo packageName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "packageSig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "client version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    :try_start_bd
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p2, v5, p0, v0, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c5} :catch_c6

    goto :goto_ce

    :catch_c6
    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo p1, "setClientInfo Failed"

    .line 126
    invoke-static {v1, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_ce
    return-void
.end method


# virtual methods
.method public final getConfig(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 74
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

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

    .line 45
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    :try_start_0
    const-string p1, "DualDARPlatformProxy"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x1

    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x67735fdb

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3a

    const v1, -0x21c8630f

    if-eq v2, v1, :cond_30

    goto :goto_43

    :cond_30
    const-string v1, "GET_DUALDAR_CONFIG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    move v1, v4

    goto :goto_44

    :cond_3a
    const-string v2, "SET_CLIENT_INFO"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_5a

    if-eqz p2, :cond_43

    goto :goto_44

    :cond_43
    :goto_43
    move v1, v0

    :goto_44
    const-string p2, "dual_dar_response"

    if-eqz v1, :cond_53

    if-eq v1, v4, :cond_4b

    goto :goto_59

    .line 59
    :cond_4b
    :try_start_4b
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->getConfig(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_59

    .line 55
    :cond_53
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->setClientInfo(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_59} :catch_5a

    :goto_59
    return-object p1

    :catch_5a
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setClientInfo(Landroid/os/Bundle;)V
    .registers 4

    .line 98
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
