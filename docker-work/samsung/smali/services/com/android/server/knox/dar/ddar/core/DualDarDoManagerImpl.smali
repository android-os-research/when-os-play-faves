.class public Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;
.super Ljava/lang/Object;
.source "DualDarDoManagerImpl.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "DualDarManagerImpl"

.field public static final TAG:Ljava/lang/String; = "DualDarManagerImpl"


# instance fields
.field public mHasTokenSetForInner:Z

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public mNonClearablePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Cq8Nyz_BUVmnxQnxK3py217vyl4(Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->lambda$sendDpmStateChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$uKOgh8hM1MpOh4h86WEP-IC581Q(Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->lambda$getPasswordMinimumLengthForInner$0(Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .registers 11

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    const-string v2, "com.google.android.gms"

    const-string v3, "com.samsung.android.knox.containercore"

    const-string v4, "com.samsung.android.knox.containeragent"

    const-string v5, "com.google.android.providers.media.module"

    const-string v6, "com.google.android.apps.work.clouddpc"

    const-string v7, "com.samsung.sec.android.application.csc"

    const-string v8, "com.google.android.webview"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mNonClearablePackages:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    return-void
.end method

.method public static synthetic lambda$getPasswordMinimumLengthForInner$0(Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Integer;
    .registers 2

    .line 201
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {p0, v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendDpmStateChanged$1()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addBlockedClearablePackages(ILjava/lang/String;)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string v1, "addBlockedClearablePackages"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object v0

    const-string/jumbo v1, "pkg_blocked_clearable"

    const-string v2, "empty"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->putString(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 104
    :cond_3a
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->putString(ILjava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 220
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 222
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p2}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result p2

    .line 223
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz p2, :cond_31

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DualDAR at DO: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_25

    const-string v1, "Enabled"

    goto :goto_27

    :cond_25
    const-string v1, "Not enabled"

    :goto_27
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_31
    if-eqz v0, :cond_8f

    .line 228
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result p2

    .line 229
    iget-object p3, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p3

    .line 230
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inner Auth User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Credential Type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/knox/dar/DarUtil;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Has Token Set: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 238
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 240
    :cond_8f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public getBlockedClearablePackages(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string v1, "getBlockedClearablePackages"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 114
    invoke-virtual {v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object v1

    const-string/jumbo v2, "pkg_blocked_clearable"

    const-string v3, "empty"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/knox/dar/DarDatabaseCache;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, ","

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_2e
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mNonClearablePackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getInnerAuthUserId(I)I
    .registers 4

    .line 62
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.auth.userid"

    const/16 v1, -0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMainUserId(I)I
    .registers 4

    .line 73
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.main.userid"

    const/16 v1, -0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v0, "getPackageListForDualDarPolicy"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 128
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 130
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    :cond_17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPasswordMinimumLengthForInner()I
    .registers 3

    .line 198
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 199
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_25
    return v1
.end method

.method public isInnerAuthRequired(I)Z
    .registers 5

    .line 138
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 142
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->isInnerLayerLockedState()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    .line 146
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-nez v0, :cond_15

    return v1

    .line 150
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result p1

    .line 151
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p1

    if-eqz p1, :cond_26

    return v2

    .line 154
    :cond_26
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    return v1
.end method

.method public final isInnerLayerLockedState()Z
    .registers 3

    .line 160
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getDualDARLockstate()Z

    move-result p0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInnerLayerLockedState - result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDarManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onClearResetPasswordToken(I)V
    .registers 4

    .line 188
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_16

    .line 190
    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-eqz p1, :cond_16

    .line 191
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->sendDpmStateChanged()V

    :cond_16
    return-void
.end method

.method public onEscrowTokenActivated(JI)V
    .registers 6

    .line 177
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v1

    if-ne v1, p3, :cond_31

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Token(%x) activated for user %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualDarManagerImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-eqz p1, :cond_31

    .line 181
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 182
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->sendDpmStateChanged()V

    :cond_31
    return-void
.end method

.method public onSetResetPasswordToken(I)V
    .registers 3

    .line 167
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_17

    .line 169
    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    if-nez p1, :cond_17

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->sendDpmStateChanged()V

    :cond_17
    return-void
.end method

.method public final sendDpmStateChanged()V
    .registers 2

    .line 212
    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setDualDarInfo(II)Z
    .registers 5

    .line 48
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "setDualDarInfo"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 50
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->setDualDarInfo(II)Z

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public setInnerAuthUserId(II)V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "setInnerAuthUserId"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.auth.userid"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setMainUserId(II)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v1, "setMainUserId"

    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getDarDatabaseCache()Lcom/android/server/knox/dar/DarDatabaseCache;

    move-result-object p0

    const-string v0, "ddar.inner.main.userid"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInt(ILjava/lang/String;I)V

    return-void
.end method
