.class public Lcom/android/server/pm/verify/domain/DomainVerificationService;
.super Lcom/android/server/SystemService;
.source "DomainVerificationService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.implements Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    }
.end annotation


# static fields
.field public static final DEBUG_APPROVAL:Z = false

.field public static final SETTINGS_API_V2:J = 0xa9dc3bdL

.field public static final TAG:Ljava/lang/String; = "DomainVerificationService"


# instance fields
.field public final mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;"
        }
    .end annotation
.end field

.field public mCanSendBroadcasts:Z

.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

.field public final mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

.field public final mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

.field public final mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

.field public final mLock:Ljava/lang/Object;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

.field public final mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

.field public final mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field public final mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

.field public final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method public static synthetic $r8$lambda$5TXYMKtowpXkLeRUMtNw1XMn__o(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->lambda$writeSettings$1(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iyW6jE-1PNYJ8W0myEfpP49cIEo(Lcom/android/server/pm/Computer;ILjava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->lambda$getOwnersForDomainInternal$0(Lcom/android/server/pm/Computer;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V
    .registers 5

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

    invoke-direct {v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    .line 153
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 161
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 162
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 163
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;-><init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 164
    new-instance p2, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-direct {p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 165
    new-instance p2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 166
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-direct {p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 167
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-direct {p1, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;)V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 168
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-direct {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    return-void
.end method

.method public static synthetic lambda$getOwnersForDomainInternal$0(Lcom/android/server/pm/Computer;ILjava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 832
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 833
    invoke-interface {p0, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_e

    move-wide v3, v1

    goto :goto_16

    .line 836
    :cond_e
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v3

    :goto_16
    if-nez p0, :cond_19

    goto :goto_21

    .line 839
    :cond_19
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v1

    :goto_21
    cmp-long p0, v3, v1

    if-eqz p0, :cond_28

    sub-long/2addr v3, v1

    long-to-int p0, v3

    return p0

    .line 845
    :cond_28
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$writeSettings$1(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1080
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1090
    :cond_8
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 1089
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 1403
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result p3

    if-nez p3, :cond_e

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1404
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 3

    .line 1125
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    return-void
.end method

.method public addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 18

    move-object/from16 v0, p0

    .line 954
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v1

    .line 955
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 960
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePendingState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_17

    move v7, v5

    goto :goto_37

    .line 966
    :cond_17
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeRestoredState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 967
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object v7

    .line 969
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v8

    .line 968
    invoke-static {v8}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v8

    .line 967
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    move-object v3, v4

    :cond_36
    move v7, v6

    .line 975
    :goto_37
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 976
    iget-object v9, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v9

    .line 977
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v6

    if-eqz v3, :cond_49

    goto :goto_4a

    :cond_49
    move v6, v5

    :goto_4a
    if-eqz v6, :cond_75

    .line 980
    new-instance v11, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v11, v3, v1, v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/util/UUID;Z)V

    .line 981
    invoke-virtual {v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 983
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v3

    .line 984
    invoke-virtual {v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v12

    .line 985
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    move v14, v5

    :goto_67
    if-ge v14, v13, :cond_7a

    .line 987
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v15, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->retainHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    add-int/lit8 v14, v14, 0x1

    goto :goto_67

    .line 990
    :cond_75
    new-instance v11, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v11, v2, v1, v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 993
    :cond_7a
    invoke-virtual {v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v3, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v3

    if-eqz v3, :cond_df

    if-nez v6, :cond_df

    .line 1005
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserStates(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v3

    if-nez v3, :cond_92

    move v6, v5

    goto :goto_96

    .line 1006
    :cond_92
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    :goto_96
    move v12, v5

    :goto_97
    const/4 v13, 0x2

    if-ge v12, v6, :cond_b6

    .line 1008
    invoke-virtual {v3, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 1009
    invoke-virtual {v3, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    if-ne v15, v13, :cond_b3

    if-nez v4, :cond_ac

    .line 1013
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    .line 1016
    :cond_ac
    invoke-virtual {v11, v14}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Landroid/util/ArraySet;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :cond_b3
    add-int/lit8 v12, v12, 0x1

    goto :goto_97

    .line 1020
    :cond_b6
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 1022
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatus()I

    move-result v3

    if-ne v3, v13, :cond_df

    .line 1024
    invoke-virtual {v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1025
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_cc
    if-ge v5, v4, :cond_df

    .line 1027
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x4

    .line 1028
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1027
    invoke-virtual {v3, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    .line 1033
    :cond_df
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1034
    :try_start_e2
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v2, v1, v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1035
    monitor-exit v3
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_f0

    if-eqz v7, :cond_ef

    if-eqz v10, :cond_ef

    .line 1038
    invoke-virtual {v0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    :cond_ef
    return-void

    :catchall_f0
    move-exception v0

    .line 1035
    :try_start_f1
    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v0
.end method

.method public final applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1051
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 1053
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    :goto_1d
    if-ge v0, p0, :cond_2f

    .line 1055
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1056
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1055
    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2f
    return p1

    .line 1060
    :cond_30
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    :goto_36
    if-ltz p0, :cond_4a

    .line 1062
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 1064
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_47

    .line 1065
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_47
    add-int/lit8 p0, p0, -0x1

    goto :goto_36

    :cond_4a
    return p1
.end method

.method public approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I
    .registers 12

    .line 1725
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 1726
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result p3

    if-nez p3, :cond_b

    const/4 p0, 0x0

    return p0

    .line 1733
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I
    .registers 6

    .line 1746
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomainInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result p5

    if-eqz p3, :cond_30

    if-nez p5, :cond_30

    .line 1749
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p3

    .line 1750
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p4

    if-nez p4, :cond_14

    const/4 p0, -0x4

    return p0

    .line 1754
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    if-eqz p4, :cond_30

    .line 1756
    invoke-static {p3, p4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)Z

    move-result p3

    if-nez p3, :cond_22

    const/4 p0, -0x3

    return p0

    .line 1758
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsAutoVerifyDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, -0x1

    return p0

    :cond_30
    return p5
.end method

.method public final approvalLevelForDomainInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I
    .registers 13

    .line 1770
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 1771
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_16

    if-eqz p3, :cond_16

    .line 1773
    iget-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p3, v0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsWebDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_16

    const/4 p0, -0x2

    return p0

    .line 1781
    :cond_16
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v1, 0x0

    if-nez p3, :cond_24

    return v1

    .line 1790
    :cond_24
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 1798
    :cond_2b
    invoke-static {p3, v0}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    .line 1806
    :cond_32
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_39

    return v1

    :cond_39
    const/4 p3, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_5c

    .line 1815
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v5, 0xa9dc3bd

    invoke-static {v4, v0, v5, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 1817
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v4, p5, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5b

    if-eq v4, v3, :cond_5a

    if-eq v4, v2, :cond_59

    if-eq v4, p3, :cond_5b

    goto :goto_5c

    :cond_59
    return v1

    :cond_5a
    return v3

    :cond_5b
    return v5

    .line 1831
    :cond_5c
    :goto_5c
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1832
    :try_start_5f
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, p5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez p5, :cond_6b

    .line 1837
    monitor-exit v4

    return v1

    .line 1840
    :cond_6b
    invoke-virtual {p5, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 1842
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v6

    if-nez v6, :cond_79

    .line 1847
    monitor-exit v4

    return v1

    :cond_79
    if-eqz v0, :cond_94

    .line 1855
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p1

    if-eqz p1, :cond_94

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 1856
    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_94

    const/4 p0, 0x5

    .line 1857
    monitor-exit v4

    return p0

    .line 1861
    :cond_94
    invoke-virtual {p5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 1863
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_ac

    .line 1864
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 1869
    monitor-exit v4

    return p3

    .line 1873
    :cond_ac
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    move p4, v1

    :goto_b1
    if-ge p4, p1, :cond_e1

    .line 1875
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p5}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result p5

    if-nez p5, :cond_c4

    goto :goto_de

    .line 1879
    :cond_c4
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    const-string v0, "*."

    .line 1880
    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-virtual {p5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_de

    .line 1885
    monitor-exit v4

    return p3

    :cond_de
    :goto_de
    add-int/lit8 p4, p4, 0x1

    goto :goto_b1

    :cond_e1
    if-nez v5, :cond_e5

    .line 1894
    monitor-exit v4

    return v1

    .line 1898
    :cond_e5
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object p0

    .line 1899
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 1904
    monitor-exit v4

    return v2

    .line 1908
    :cond_f1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    move p3, v1

    :goto_f6
    if-ge p3, p1, :cond_115

    .line 1910
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string p5, "*."

    .line 1911
    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_112

    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_112

    .line 1916
    monitor-exit v4

    return v2

    :cond_112
    add-int/lit8 p3, p3, 0x1

    goto :goto_f6

    .line 1923
    :cond_115
    monitor-exit v4

    return v1

    :catchall_117
    move-exception p0

    .line 1924
    monitor-exit v4
    :try_end_119
    .catchall {:try_start_5f .. :try_end_119} :catchall_117

    throw p0
.end method

.method public clearDomainVerificationState(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1436
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1437
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    if-nez p1, :cond_42

    .line 1439
    :try_start_17
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    :goto_1d
    if-ge v2, p1, :cond_6d

    .line 1441
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1442
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1443
    invoke-interface {v0, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 1444
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-nez v5, :cond_38

    goto :goto_3f

    .line 1447
    :cond_38
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1450
    :cond_42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_46
    if-ge v2, v3, :cond_6d

    .line 1452
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1453
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1454
    invoke-interface {v0, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 1455
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-nez v6, :cond_63

    goto :goto_6a

    .line 1458
    :cond_63
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1461
    :cond_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_17 .. :try_end_6e} :catchall_74

    .line 1463
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    :catchall_74
    move-exception p0

    .line 1461
    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p0
.end method

.method public clearPackage(Ljava/lang/String;)V
    .registers 4

    .line 1151
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1153
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackage(Ljava/lang/String;)V

    .line 1154
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    .line 1156
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    :catchall_14
    move-exception p0

    .line 1154
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public clearPackageForUser(Ljava/lang/String;I)V
    .registers 5

    .line 1161
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v1, :cond_10

    .line 1164
    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1167
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackageForUser(Ljava/lang/String;I)V

    .line 1168
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1c

    .line 1170
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    :catchall_1c
    move-exception p0

    .line 1168
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public clearUser(I)V
    .registers 6

    .line 1175
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 1178
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1181
    :cond_1a
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeUser(I)V

    .line 1182
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_26

    .line 1184
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    :catchall_26
    move-exception p0

    .line 1182
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public clearUserStates(Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1497
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2e

    .line 1499
    :try_start_12
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    :goto_18
    if-ge v2, p1, :cond_4e

    .line 1501
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-ne p2, v1, :cond_28

    .line 1503
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_2b

    .line 1505
    :cond_28
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1509
    :cond_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_32
    if-ge v2, v3, :cond_4e

    .line 1511
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1512
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-ne p2, v1, :cond_48

    .line 1514
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_4b

    .line 1516
    :cond_48
    invoke-virtual {v4, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1520
    :cond_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_55

    .line 1522
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    :catchall_55
    move-exception p0

    .line 1520
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public final debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V
    .registers 6

    if-eqz p4, :cond_5

    const-string p0, "approved"

    goto :goto_7

    :cond_5
    const-string p0, "denied"

    .line 1991
    :goto_7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for user "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DomainVerificationServiceApproval"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V
    .registers 6
    .param p3    # I
        .annotation build Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$ApprovalLevel;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1626
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_23

    .line 1628
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1629
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1630
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_23
    return-void
.end method

.method public final fillMapWithApprovalLevels(Landroid/util/ArrayMap;Ljava/lang/String;ILjava/util/function/Function;)I
    .registers 19
    .annotation build Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$ApprovalLevel;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)I"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    .line 1602
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_9
    if-ge v10, v8, :cond_45

    .line 1604
    invoke-virtual {p1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object/from16 v13, p4

    goto :goto_42

    .line 1609
    :cond_14
    invoke-virtual {p1, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1610
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v13, p4

    .line 1611
    invoke-interface {v13, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v1, :cond_2f

    .line 1613
    invoke-virtual {p0, p1, v12, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    goto :goto_42

    :cond_2f
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p2

    .line 1616
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v0

    .line 1617
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1618
    invoke-virtual {p0, p1, v12, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    :goto_42
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_45
    return v11
.end method

.method public filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1543
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 1546
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1547
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_28

    .line 1549
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1551
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->isAutoResolutionAllowed()Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x0

    .line 1552
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1557
    :cond_28
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillMapWithApprovalLevels(Landroid/util/ArrayMap;Ljava/lang/String;ILjava/util/function/Function;)I

    move-result p1

    if-gtz p1, :cond_3b

    .line 1560
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1564
    :cond_3b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_41
    if-ltz p2, :cond_55

    .line 1565
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_52

    .line 1566
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_52
    add-int/lit8 p2, p2, -0x1

    goto :goto_41

    :cond_55
    if-eq p1, p3, :cond_5a

    .line 1574
    invoke-virtual {p0, v0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V

    .line 1579
    :cond_5a
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 1580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_63
    if-ge v2, p2, :cond_71

    .line 1582
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_71
    if-eq p1, p3, :cond_76

    .line 1588
    invoke-virtual {p0, v1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V

    .line 1591
    :cond_76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1671
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 1672
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1673
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1674
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_21

    .line 1675
    :cond_1d
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    :goto_21
    if-nez v3, :cond_24

    goto :goto_56

    .line 1681
    :cond_24
    invoke-virtual {p0, v3, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v4

    .line 1684
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2e
    add-int/lit8 v6, v0, 0x1

    if-lt v5, v6, :cond_53

    .line 1685
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1686
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    goto :goto_50

    .line 1690
    :cond_45
    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v7

    if-le v7, v4, :cond_4d

    move-object v1, v6

    move v4, v7

    .line 1698
    :cond_4d
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_50
    add-int/lit8 v5, v5, -0x1

    goto :goto_2e

    .line 1703
    :cond_53
    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_59
    return-void
.end method

.method public final filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 1641
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_8
    if-ge v3, p0, :cond_30

    .line 1643
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1644
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1645
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v5, :cond_1f

    goto :goto_2d

    .line 1651
    :cond_1f
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v5

    .line 1650
    invoke-static {v5}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_2d

    move-object v0, v4

    move-wide v1, v5

    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1659
    :cond_30
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_36
    if-ltz p0, :cond_50

    .line 1660
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 1661
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4d

    .line 1662
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4d
    add-int/lit8 p0, p0, -0x1

    goto :goto_36

    :cond_50
    return-void
.end method

.method public generateNewId()Ljava/util/UUID;
    .registers 1

    .line 856
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public final getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_6c

    .line 1336
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v0, 0x1

    if-nez p1, :cond_12

    .line 1338
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1341
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_29

    .line 1343
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1344
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-interface {v2, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_29

    .line 1345
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1348
    :cond_29
    invoke-interface {p6, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p4

    if-eqz p4, :cond_67

    .line 1349
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p5

    if-eqz p5, :cond_67

    .line 1353
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p5

    if-nez p5, :cond_5f

    .line 1357
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    if-eqz p3, :cond_48

    .line 1359
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_4e

    .line 1360
    :cond_48
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 1362
    :goto_4e
    invoke-interface {p2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_5a

    const/4 p0, 0x2

    .line 1363
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1366
    :cond_5a
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->success(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1354
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided domain set cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1350
    :cond_67
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 1333
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "domainSetId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getApprovedPackagesLocked(Ljava/lang/String;IILcom/android/server/pm/Computer;)Landroid/util/Pair;
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    if-gez v7, :cond_c

    const/4 v0, 0x1

    move v10, v0

    goto :goto_d

    :cond_c
    move v10, v9

    .line 1936
    :goto_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1938
    iget-object v1, v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v11

    move-object v12, v0

    move v14, v7

    move v13, v9

    :goto_1a
    if-ge v13, v11, :cond_55

    .line 1940
    iget-object v0, v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1941
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1942
    invoke-interface {v8, v15}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_2f

    goto :goto_52

    :cond_2f
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object/from16 v5, p1

    .line 1947
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v0

    if-ge v0, v7, :cond_3f

    goto :goto_52

    :cond_3f
    if-le v0, v14, :cond_4b

    .line 1954
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1955
    invoke-static {v12, v15}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move v14, v0

    move-object v12, v1

    goto :goto_52

    :cond_4b
    if-ne v0, v14, :cond_52

    .line 1958
    invoke-static {v12, v15}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    :cond_52
    :goto_52
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a

    .line 1962
    :cond_55
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1963
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1966
    :cond_64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v1, -0x8000000000000000L

    .line 1968
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    :goto_6f
    if-ge v9, v3, :cond_9e

    .line 1970
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1971
    invoke-interface {v8, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-nez v5, :cond_80

    move/from16 v6, p2

    goto :goto_9b

    :cond_80
    move/from16 v6, p2

    .line 1975
    invoke-interface {v5, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v10

    cmp-long v5, v10, v1

    if-lez v5, :cond_96

    .line 1978
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1979
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v1, v10

    goto :goto_9b

    :cond_96
    if-nez v5, :cond_9b

    .line 1981
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9b
    :goto_9b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6f

    .line 1985
    :cond_9e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
    .registers 1

    .line 1296
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    return-object p0
.end method

.method public getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_16
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    move-object v0, v2

    goto :goto_23

    .line 262
    :cond_1f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    :goto_23
    if-eqz v0, :cond_89

    .line 267
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v3, :cond_31

    .line 269
    monitor-exit v1

    return-object v2

    .line 272
    :cond_31
    new-instance v4, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 275
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 277
    monitor-exit v1

    return-object v2

    .line 280
    :cond_48
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x0

    move v5, v2

    :goto_4e
    if-ge v5, v0, :cond_60

    .line 282
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 282
    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 286
    :cond_60
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result p0

    :goto_64
    if-ge v2, p0, :cond_7e

    .line 288
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 289
    invoke-static {v0}, Landroid/content/pm/verify/domain/DomainVerificationState;->convertToInfoState(I)I

    move-result v0

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 294
    :cond_7e
    new-instance p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Landroid/content/pm/verify/domain/DomainVerificationInfo;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v1

    return-object p0

    .line 264
    :cond_89
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    :catchall_8e
    move-exception p0

    .line 295
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_16 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public getDomainVerificationInfoId(Ljava/lang/String;)Ljava/util/UUID;
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz p0, :cond_13

    .line 247
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    .line 249
    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 251
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 711
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 710
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserStateQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 716
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_1d
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_26

    move-object v0, v2

    goto :goto_2a

    .line 718
    :cond_26
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    :goto_2a
    if-eqz v0, :cond_a6

    .line 723
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v3, :cond_38

    .line 725
    monitor-exit v1

    return-object v2

    .line 728
    :cond_38
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 729
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 731
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 732
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 733
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v4

    if-nez v4, :cond_56

    .line 735
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    goto :goto_5a

    :cond_56
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v5

    :goto_5a
    const/4 v6, 0x0

    move v7, v6

    :goto_5c
    const/4 v8, 0x1

    if-ge v7, v0, :cond_8b

    .line 738
    invoke-virtual {p0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 739
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_79

    .line 742
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v11

    if-eqz v11, :cond_79

    const/4 v8, 0x2

    goto :goto_81

    .line 744
    :cond_79
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    goto :goto_81

    :cond_80
    move v8, v6

    .line 750
    :goto_81
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_8b
    if-eqz v4, :cond_95

    .line 754
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result p0

    if-eqz p0, :cond_94

    goto :goto_95

    :cond_94
    move v8, v6

    .line 756
    :cond_95
    :goto_95
    new-instance p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v5

    .line 757
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/verify/domain/DomainVerificationUserState;-><init>(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/Map;)V

    monitor-exit v1

    return-object p0

    .line 720
    :cond_a6
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    :catchall_ab
    move-exception p0

    .line 758
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_1d .. :try_end_ad} :catchall_ab

    throw p0

    .line 712
    :cond_ae
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0
.end method

.method public getLegacyState(Ljava/lang/String;I)I
    .registers 6

    .line 1142
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1143
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1142
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 1146
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation

    .line 763
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertOwnerQuerent(III)V

    .line 767
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v1, 0x0

    .line 768
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object p0

    .line 770
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2a

    .line 771
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 774
    :cond_2a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 775
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, v1

    :goto_34
    if-ge v0, p2, :cond_61

    .line 777
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    move v2, v1

    .line 779
    :goto_40
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 780
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_4b
    if-ge v5, v4, :cond_5e

    .line 782
    new-instance v6, Landroid/content/pm/verify/domain/DomainOwner;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Landroid/content/pm/verify/domain/DomainOwner;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_61
    return-object p1
.end method

.method public final getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p4

    .line 798
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 800
    iget-object v9, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 801
    :try_start_b
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_13
    if-ge v12, v10, :cond_4e

    .line 803
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 804
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 805
    invoke-interface {v7, v13}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_4b

    :cond_28
    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, p1

    .line 810
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v1

    if-nez p2, :cond_38

    if-gtz v1, :cond_38

    goto :goto_4b

    .line 815
    :cond_38
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_48

    .line 817
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 818
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 820
    :cond_48
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 822
    :cond_4e
    monitor-exit v9
    :try_end_4f
    .catchall {:try_start_b .. :try_end_4f} :catchall_6c

    .line 824
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_56

    return-object v8

    :cond_56
    :goto_56
    if-ge v11, v0, :cond_6b

    .line 831
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;

    move/from16 v3, p3

    invoke-direct {v2, v7, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Computer;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_56

    :cond_6b
    return-object v8

    :catchall_6c
    move-exception v0

    .line 822
    :try_start_6d
    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    return-object p0
.end method

.method public getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;
    .registers 1

    .line 1290
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    return-object p0
.end method

.method public final hasRealVerifier()Z
    .registers 1

    .line 1315
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    instance-of p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I
    .registers 6

    .line 1709
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 1710
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_27

    .line 1712
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1713
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 1712
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    return v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 862
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 865
    iget-object v9, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 866
    :try_start_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v2

    .line 867
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v10

    .line 868
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 870
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 871
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 873
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 874
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    if-eqz v2, :cond_ca

    if-eqz v3, :cond_ca

    if-nez v4, :cond_35

    goto/16 :goto_ca

    .line 891
    :cond_35
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 892
    iget-object v7, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 893
    invoke-virtual {v7, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v7

    .line 894
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_44
    if-ge v13, v11, :cond_68

    .line 897
    invoke-virtual {v7, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 898
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_65

    .line 900
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 905
    invoke-static {v15}, Landroid/content/pm/verify/domain/DomainVerificationState;->shouldMigrate(I)Z

    move-result v16

    if-eqz v16, :cond_65

    .line 906
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    add-int/lit8 v13, v13, 0x1

    goto :goto_44

    .line 912
    :cond_68
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    .line 913
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_a4

    .line 915
    iget-object v13, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v13, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    const/4 v13, 0x0

    :goto_79
    if-ge v13, v3, :cond_a4

    .line 918
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 919
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 921
    invoke-virtual {v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v12

    move-object/from16 v16, v2

    .line 922
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v12}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 923
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 924
    new-instance v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 926
    invoke-virtual {v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v15

    invoke-direct {v12, v14, v2, v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    .line 927
    invoke-virtual {v6, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    goto :goto_79

    :cond_a4
    const/4 v2, 0x1

    if-lez v11, :cond_a9

    move v4, v2

    goto :goto_aa

    :cond_a9
    const/4 v4, 0x0

    .line 933
    :goto_aa
    invoke-virtual {v0, v1, v5, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v4, :cond_b4

    if-eqz v1, :cond_b4

    move v12, v2

    goto :goto_b5

    :cond_b4
    const/4 v12, 0x0

    .line 937
    :goto_b5
    iget-object v11, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    new-instance v13, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v7, 0x0

    move-object v1, v13

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-virtual {v11, v8, v10, v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 940
    monitor-exit v9
    :try_end_c4
    .catchall {:try_start_b .. :try_end_c4} :catchall_118

    if-eqz v12, :cond_c9

    .line 943
    invoke-virtual {v0, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    :cond_c9
    return-void

    :cond_ca
    :goto_ca
    :try_start_ca
    const-string v7, "DomainVerificationService"

    .line 878
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid state nullability old state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", old pkgSetting = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new pkgSetting = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", old pkg = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new pkg = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v7, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    new-instance v11, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 887
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, v8, v10, v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 888
    monitor-exit v9

    return-void

    :catchall_118
    move-exception v0

    .line 940
    monitor-exit v9
    :try_end_11a
    .catchall {:try_start_ca .. :try_end_11a} :catchall_118

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 190
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->hasRealVerifier()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/16 v0, 0x226

    if-eq p1, v0, :cond_19

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_13

    goto :goto_1c

    :cond_13
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    goto :goto_1c

    :cond_19
    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    :goto_1c
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    const-string v1, "domain_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 207
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    return-void
.end method

.method public final printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    .registers 11

    .line 1271
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    if-eqz p3, :cond_20

    .line 1274
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    goto :goto_20

    .line 1280
    :cond_10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1281
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, v1, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object p3

    .line 1280
    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_36

    .line 1275
    :cond_20
    :goto_20
    iget-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object p3

    array-length v2, p3

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_36

    aget v4, p3, v3

    .line 1277
    invoke-virtual {p0, p2, v1, v4, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1276
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1284
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printOwners(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1260
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1261
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1262
    :try_start_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1c

    .line 1264
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1266
    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1213
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p2, :cond_26

    .line 1215
    :try_start_b
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_2b

    const/4 v2, 0x0

    :goto_12
    if-ge v2, p2, :cond_29

    .line 1218
    :try_start_14
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 1219
    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1218
    invoke-virtual {p0, p1, v3, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_23} :catch_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_2b

    :catch_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1226
    :cond_26
    :try_start_26
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    .line 1228
    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1235
    invoke-interface {p4, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 1236
    :cond_8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_45

    .line 1241
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1b

    return-void

    .line 1247
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    :goto_33
    if-ge p2, v1, :cond_41

    .line 1251
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    .line 1254
    :cond_41
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1238
    :cond_45
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0
.end method

.method public printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 1203
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;)V

    .line 1205
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public queryValidVerificationPackageNames()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_36

    .line 232
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 233
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 234
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 237
    :cond_36
    monitor-exit v1

    return-object v0

    :catchall_38
    move-exception p0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public readLegacySettings(Landroid/util/TypedXmlPullParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1111
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readSettings(Landroid/util/TypedXmlPullParser;)V

    return-void
.end method

.method public readSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1104
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->readSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V

    .line 1105
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V
    .registers 11

    .line 474
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_46

    .line 478
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 479
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    .line 480
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_22
    if-ge v6, v5, :cond_43

    .line 482
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 484
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v7, :cond_37

    .line 485
    invoke-virtual {v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_40

    .line 491
    :cond_37
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v7, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :goto_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 494
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")V"
        }
    .end annotation

    .line 1471
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_2b

    .line 1473
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1475
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_22

    const/4 v4, 0x5

    if-eq v3, v4, :cond_22

    .line 1481
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x400

    if-lt v2, v3, :cond_20

    goto :goto_22

    :cond_20
    const/4 v2, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    move v2, v1

    :goto_23
    if-eqz v2, :cond_28

    .line 1486
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1490
    :cond_2b
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 1491
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1490
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    return-void
.end method

.method public restoreSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->restoreSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V

    .line 1119
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/Computer;",
            ")I"
        }
    .end annotation

    .line 661
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 663
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_9

    :cond_20
    const/4 v2, 0x1

    .line 668
    invoke-virtual {p0, v1, p2, v2, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getApprovedPackagesLocked(Ljava/lang/String;IILcom/android/server/pm/Computer;)Landroid/util/Pair;

    move-result-object v2

    .line 670
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_31

    return v4

    .line 675
    :cond_31
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 680
    :cond_39
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    :goto_3f
    if-ge p4, p1, :cond_75

    .line 682
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 683
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 684
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, p3

    :goto_52
    if-ge v4, v3, :cond_72

    .line 686
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 687
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 688
    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v5, :cond_65

    goto :goto_6f

    .line 694
    :cond_65
    invoke-virtual {v5, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v5

    if-nez v5, :cond_6c

    goto :goto_6f

    .line 699
    :cond_6c
    invoke-virtual {v5, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_72
    add-int/lit8 p4, p4, 0x1

    goto :goto_3f

    :cond_75
    return p3
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .registers 3

    .line 1189
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final sendBroadcast(Ljava/lang/String;)V
    .registers 2

    .line 1300
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    return-void
.end method

.method public final sendBroadcast(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1304
    iget-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    if-nez v0, :cond_5

    return-void

    .line 1311
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    return-void
.end method

.method public setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 179
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->setCallback(Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;)V

    return-void
.end method

.method public setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 500
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 499
    invoke-virtual {v0, v1, v2, p1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 503
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v1, :cond_2f

    .line 509
    invoke-virtual {v1, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p1

    .line 510
    invoke-virtual {p1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 511
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_34

    .line 513
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 506
    :cond_2f
    :try_start_2f
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    :catchall_34
    move-exception p0

    .line 511
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    throw p0

    .line 501
    :cond_37
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0
.end method

.method public setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4a

    .line 521
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 522
    :try_start_12
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    move v3, v1

    :goto_19
    if-ge v3, p1, :cond_45

    .line 524
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-ne p3, v0, :cond_3b

    .line 526
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_2d
    if-ge v7, v6, :cond_42

    aget v8, v5, v7

    .line 527
    invoke-virtual {v4, v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v8

    .line 528
    invoke-virtual {v8, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 531
    :cond_3b
    invoke-virtual {v4, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v4

    .line 532
    invoke-virtual {v4, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 535
    :cond_45
    monitor-exit v2

    goto :goto_76

    :catchall_47
    move-exception p0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_47

    throw p0

    .line 537
    :cond_4a
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 538
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v3, :cond_7c

    if-ne p3, v0, :cond_6e

    .line 544
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object p1

    array-length p3, p1

    :goto_60
    if-ge v1, p3, :cond_75

    aget v0, p1, v1

    .line 545
    invoke-virtual {v3, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    .line 546
    invoke-virtual {v0, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 549
    :cond_6e
    invoke-virtual {v3, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p1

    .line 550
    invoke-virtual {p1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 552
    :cond_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_81

    .line 555
    :goto_76
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 540
    :cond_7c
    :try_start_7c
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    :catchall_81
    move-exception p0

    .line 552
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_81

    throw p0
.end method

.method public setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .registers 5
    .annotation build Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    if-ge p3, v0, :cond_1f

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    goto :goto_1f

    .line 303
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller is not allowed to set state code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    move-result p0

    return p0
.end method

.method public setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I
    .registers 14
    .annotation build Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p1

    .line 322
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 325
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result p0

    monitor-exit v0

    return p0

    .line 328
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p2

    .line 330
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_37
    :goto_37
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5c

    .line 334
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p4, :cond_37

    .line 335
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_37

    .line 340
    :cond_5c
    invoke-static {p4}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v3

    if-eqz v3, :cond_71

    if-eqz v2, :cond_6e

    .line 342
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v2

    if-nez v2, :cond_71

    .line 343
    :cond_6e
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_71
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 351
    :cond_79
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_7f
    if-ge p4, p2, :cond_8d

    .line 353
    invoke-interface {v8, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_7f

    .line 355
    :cond_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_10 .. :try_end_8e} :catchall_94

    .line 357
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return p3

    :catchall_94
    move-exception p0

    .line 355
    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p0
.end method

.method public final setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 465
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 467
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    goto :goto_1f

    .line 373
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "State must be one of NO_RESPONSE, SUCCESS, APPROVED, or DENIED"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-nez p1, :cond_76

    .line 378
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p1

    .line 379
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_2b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 382
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    :goto_36
    if-ge v0, v3, :cond_70

    .line 384
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 385
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-interface {p1, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 387
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-nez v6, :cond_51

    goto :goto_6d

    .line 391
    :cond_51
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 393
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 395
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 396
    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v5

    if-nez p3, :cond_64

    .line 398
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_6a

    .line 400
    :cond_64
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 401
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 404
    :goto_6a
    invoke-virtual {p0, v4, p2, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    :cond_6d
    :goto_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 406
    :cond_70
    monitor-exit v1

    goto/16 :goto_f8

    :catchall_73
    move-exception p0

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_2b .. :try_end_75} :catchall_73

    throw p0

    .line 408
    :cond_76
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 410
    :try_start_7f
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v3, :cond_103

    .line 415
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 416
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_fe

    .line 420
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p3, :cond_a2

    .line 423
    iget-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p3

    goto :goto_ab

    .line 426
    :cond_a2
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    :goto_ab
    const/4 p1, 0x0

    .line 430
    invoke-static {p2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 431
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 432
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 433
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v5, v0

    :goto_c0
    if-ge v5, v4, :cond_e0

    .line 435
    invoke-virtual {p3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 436
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_da

    .line 438
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v7

    if-nez v7, :cond_dd

    .line 439
    :cond_da
    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 444
    :cond_e0
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    if-eqz p1, :cond_f7

    .line 450
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    :goto_e9
    if-ge v0, p2, :cond_f7

    .line 452
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 453
    invoke-virtual {p0, v3, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    .line 456
    :cond_f7
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_7f .. :try_end_f8} :catchall_108

    .line 459
    :goto_f8
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 417
    :cond_fe
    :try_start_fe
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 412
    :cond_103
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    :catchall_108
    move-exception p0

    .line 456
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_fe .. :try_end_10a} :catchall_108

    throw p0
.end method

.method public setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I
    .registers 14
    .annotation build Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v5

    .line 567
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v1, v2, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x1

    return p0

    .line 572
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 573
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v4, 0x0

    .line 575
    :try_start_21
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, v0

    .line 574
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p1

    .line 576
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 577
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result p0

    monitor-exit v8

    return p0

    .line 580
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object p1

    .line 581
    invoke-virtual {p1, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p1

    if-eqz p3, :cond_4b

    .line 588
    invoke-virtual {p0, p1, p4, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    move-result p4

    if-eqz p4, :cond_4b

    .line 591
    monitor-exit v8

    return p4

    :cond_4b
    if-eqz p3, :cond_51

    .line 596
    invoke-virtual {p1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_54

    .line 598
    :cond_51
    invoke-virtual {p1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 600
    :goto_54
    monitor-exit v8
    :try_end_55
    .catchall {:try_start_21 .. :try_end_55} :catchall_5c

    .line 602
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    const/4 p0, 0x0

    return p0

    :catchall_5c
    move-exception p0

    .line 600
    :try_start_5d
    monitor-exit v8
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v2, :cond_7b

    .line 618
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_26

    const/4 v3, 0x0

    goto :goto_2a

    .line 619
    :cond_26
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    :goto_2a
    if-eqz v3, :cond_76

    if-nez p4, :cond_34

    .line 625
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p4

    .line 627
    :cond_34
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5f

    .line 630
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object p1

    array-length p2, p1

    const/4 v3, 0x0

    :goto_48
    if-ge v3, p2, :cond_6f

    aget v4, p1, v3

    .line 632
    invoke-virtual {v2, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v5

    .line 633
    invoke-virtual {p0, v5, v4, p4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    if-eqz p3, :cond_59

    .line 636
    invoke-virtual {v5, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_5c

    .line 638
    :cond_59
    invoke-virtual {v5, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 643
    :cond_5f
    invoke-virtual {v2, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p2

    .line 644
    invoke-virtual {p0, p2, p1, p4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    if-eqz p3, :cond_6c

    .line 646
    invoke-virtual {p2, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_6f

    .line 648
    :cond_6c
    invoke-virtual {p2, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 651
    :cond_6f
    :goto_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_14 .. :try_end_70} :catchall_80

    .line 653
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 621
    :cond_76
    :try_start_76
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 615
    :cond_7b
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    :catchall_80
    move-exception p0

    .line 651
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public setLegacyUserState(Ljava/lang/String;II)Z
    .registers 7

    .line 1131
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1132
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1131
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 1135
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;II)V

    .line 1136
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    const/4 p0, 0x1

    return p0
.end method

.method public setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    return-void
.end method

.method public final shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z
    .registers 5

    .line 1417
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1421
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 1422
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_27

    .line 1424
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1425
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isDefault(I)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public verifyPackages(Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1372
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_31

    .line 1375
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1376
    :try_start_16
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    :goto_1c
    if-ge v1, p1, :cond_2c

    .line 1378
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1379
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1381
    :cond_2c
    monitor-exit v2

    goto :goto_51

    :catchall_2e
    move-exception p0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    throw p0

    .line 1383
    :cond_31
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1384
    :try_start_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_38
    if-ge v1, v3, :cond_50

    .line 1386
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1387
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v4, :cond_4d

    .line 1389
    invoke-virtual {p0, v0, v4, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1392
    :cond_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_34 .. :try_end_51} :catchall_5b

    .line 1395
    :goto_51
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5a

    .line 1396
    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    :cond_5a
    return-void

    :catchall_5b
    move-exception p0

    .line 1392
    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public writeSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlSerializer;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    .line 1079
    :try_start_6
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Computer;)V

    .line 1094
    :cond_b
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->writeSettings(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;ILjava/util/function/Function;)V

    .line 1095
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_19

    .line 1097
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->writeSettings(Landroid/util/TypedXmlSerializer;)V

    return-void

    :catchall_19
    move-exception p0

    .line 1095
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method
