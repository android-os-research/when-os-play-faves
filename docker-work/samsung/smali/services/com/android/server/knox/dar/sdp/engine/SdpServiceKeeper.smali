.class public Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;
    }
.end annotation


# static fields
.field public static final SDP_LICENSE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

.field public static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String; = "SdpServiceKeeper"

.field public static _instance:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

.field public static mWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAM:Landroid/app/ActivityManager;

.field public mContext:Landroid/content/Context;

.field public mPM:Landroid/content/pm/IPackageManager;

.field public mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

.field public final mSdpPolicyDbLock:Ljava/lang/Object;

.field public mSdpPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public final mSdpPolicyMapLock:Ljava/lang/Object;

.field public mUM:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .registers 5

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    .line 70
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    .line 71
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mContext:Landroid/content/Context;

    .line 111
    new-instance v2, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-direct {v2, v1, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Landroid/content/Context;Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase-IA;)V

    iput-object v2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    .line 112
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->initWhitelist()V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/server/knox/dar/DarManagerService$Injector;)Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    monitor-enter v0

    .line 102
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->_instance:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    if-nez v1, :cond_e

    .line 103
    new-instance v1, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    sput-object v1, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->_instance:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;

    .line 105
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->_instance:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static safe(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    .line 198
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_4
    return-object p0
.end method


# virtual methods
.method public addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;)I"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->policyExistsLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string p0, "SdpServiceKeeper"

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addPolicy :: error, policy["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] already exists!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    .line 146
    monitor-exit v0

    return p0

    .line 148
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_7f

    .line 153
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_3a

    const/4 p0, -0x7

    return p0

    .line 156
    :cond_3a
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getDefaultEngineOwner(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object p1

    goto :goto_56

    .line 157
    :cond_43
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 160
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_56
    new-instance p2, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    invoke-direct {p2, p4, p1, p5}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V

    .line 168
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 169
    :try_start_5e
    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {p3, p4, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mputPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result p3

    .line 170
    monitor-exit p1
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_79

    if-nez p3, :cond_78

    .line 173
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 174
    :try_start_6a
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit p1

    goto :goto_78

    :catchall_75
    move-exception p0

    monitor-exit p1
    :try_end_77
    .catchall {:try_start_6a .. :try_end_77} :catchall_75

    throw p0

    :cond_78
    :goto_78
    return p3

    :catchall_79
    move-exception p0

    .line 170
    :try_start_7a
    monitor-exit p1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p0

    :cond_7c
    const/16 p0, -0x63

    return p0

    :catchall_7f
    move-exception p0

    .line 148
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I
    .registers 6

    .line 253
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 255
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 256
    :try_start_9
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 258
    invoke-virtual {p2, p5}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result p3

    if-eqz p3, :cond_1b

    const/4 p3, 0x0

    goto :goto_1d

    :cond_1b
    const/16 p3, -0x63

    .line 260
    :goto_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_25

    if-nez p3, :cond_29

    .line 262
    invoke-virtual {p0, p4, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result p3

    goto :goto_29

    :catchall_25
    move-exception p0

    .line 260
    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    const/4 p3, -0x7

    :cond_29
    :goto_29
    return p3
.end method

.method public final checkPermission(Landroid/content/Context;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    .line 368
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->enforceCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final enforceCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    .line 373
    :try_start_1
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    const/4 p0, 0x1

    return p0

    :catch_6
    const/4 p0, 0x0

    return p0
.end method

.method public final getDefaultEngineOwner(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .registers 3

    .line 123
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string/jumbo v0, "system_server"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_5

    return-object v0

    .line 321
    :cond_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public final getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6

    .line 305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 307
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mContext:Landroid/content/Context;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 308
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_18
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    :catchall_16
    move-exception p0

    goto :goto_35

    :catch_18
    move-exception p0

    :try_start_19
    const-string p1, "SdpServiceKeeper"

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "getPackageName exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_16

    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_34
    return-object p0

    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    throw p0
.end method

.method public final getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 291
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 382
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 383
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public final initWhitelist()V
    .registers 2

    .line 361
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v0, "com.samsung.android.email.provider"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v0, "com.samsung.android.spay"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 7

    .line 469
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_69

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_69

    .line 473
    :cond_16
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1e

    return p3

    .line 478
    :cond_1e
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 480
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 481
    :try_start_27
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    .line 482
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_65

    if-nez p0, :cond_4d

    const-string p0, "SdpServiceKeeper"

    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t find policy for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 490
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_68

    if-eqz v0, :cond_68

    .line 492
    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5d} :catch_60

    if-eqz p0, :cond_68

    return p2

    :catch_60
    move-exception p0

    .line 495
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    :catchall_65
    move-exception p0

    .line 482
    :try_start_66
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0

    :cond_68
    :goto_68
    return p3

    :cond_69
    :goto_69
    return p2
.end method

.method public isLicensed(Landroid/content/Context;II)Z
    .registers 8

    .line 439
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 444
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v2, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v2, p3

    const-string p2, "Check permission { Package : %s, PID : %d, UID : %d, UserId : %d }"

    .line 442
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SdpServiceKeeper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isWhitelisted(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3a

    const-string p0, "Identified as whitelisted"

    .line 447
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 451
    :cond_3a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_46

    const-string p0, "Identified as system app"

    .line 452
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 456
    :cond_46
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->checkPermission(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_51

    const-string p1, "License activation required"

    .line 458
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return p0
.end method

.method public isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 5

    .line 509
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_c

    return p3

    .line 516
    :cond_c
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 518
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p2

    .line 519
    :try_start_15
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    if-nez p0, :cond_21

    .line 521
    monitor-exit p2

    return p3

    .line 522
    :cond_21
    monitor-exit p2
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_4b

    .line 524
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object p0

    if-eqz p1, :cond_4e

    if-eqz p0, :cond_4e

    .line 527
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 528
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 529
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_42} :catch_46

    if-eqz p2, :cond_2e

    const/4 p0, 0x1

    return p0

    :catch_46
    move-exception p0

    .line 535
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e

    :catchall_4b
    move-exception p0

    .line 522
    :try_start_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    :goto_4e
    return p3
.end method

.method public final isSystemApp(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 331
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mPM:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_36

    .line 333
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 336
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v1, "android"

    invoke-interface {p0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p1, :cond_31

    .line 339
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v0

    aget-object p1, p1, v0

    .line 341
    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_32

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    :cond_31
    return v0

    :catch_32
    move-exception p0

    .line 344
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    return v0
.end method

.method public isSystemComponent(Landroid/content/Context;II)Z
    .registers 5

    .line 396
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_17

    .line 399
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 6

    .line 415
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_17

    .line 418
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public final isSystemServer(Landroid/content/Context;II)Z
    .registers 4

    .line 183
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 184
    iget p3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p3, p2, :cond_e

    .line 185
    iget-object p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz p0, :cond_2d

    const-string/jumbo p1, "system"

    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method public final isWhitelisted(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1c

    .line 352
    sget-object p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .registers 6

    .line 209
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v1, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mgetPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object v1

    .line 211
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3a

    if-eqz v1, :cond_38

    const-string v0, "SdpServiceKeeper"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadPolicy :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v0

    return-object v1

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    const/4 p0, 0x0

    return-object p0

    :catchall_3a
    move-exception p0

    .line 211
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final policyExistsLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 5

    .line 227
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 228
    :try_start_3
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {p2, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mremovePolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 229
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    .line 231
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p2

    .line 232
    :try_start_c
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    monitor-exit p2

    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception p0

    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw p0

    :catchall_1b
    move-exception p0

    .line 229
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I
    .registers 6

    .line 272
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 274
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 275
    :try_start_9
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 277
    invoke-virtual {p2, p5}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result p3

    if-eqz p3, :cond_1b

    const/4 p3, 0x0

    goto :goto_1d

    :cond_1b
    const/16 p3, -0x63

    .line 279
    :goto_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_25

    if-nez p3, :cond_29

    .line 281
    invoke-virtual {p0, p4, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result p3

    goto :goto_29

    :catchall_25
    move-exception p0

    .line 279
    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    const/4 p3, -0x7

    :cond_29
    :goto_29
    return p3
.end method

.method public final updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v1, p1, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->-$$Nest$mputPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result v1

    .line 241
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    if-nez v1, :cond_1d

    .line 244
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_f
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return v1

    :catchall_1e
    move-exception p0

    .line 241
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method
