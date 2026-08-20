.class public Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;,
        Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;
    }
.end annotation


# static fields
.field public static final PROCESS_STATE_STATS_FORMAT:[I

.field public static final TAG:Ljava/lang/String; = "ContentProviderHelper"


# instance fields
.field public final mLaunchingProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessStateStatsLongs:[J

.field public final mProviderMap:Lcom/android/server/am/ProviderMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSystemProvidersInstalled:Z


# direct methods
.method public static synthetic $r8$lambda$CAwNLBeZVdF6JjfiVytvR_5jw18(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ContentProviderHelper;->lambda$installEncryptionUnawareProviders$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cw-mLIk9odFBZnEyoO6G66ftq3Q(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$checkContentProviderAssociation$3(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GhmQuasr_hrtilsPbwLJWABdB2o(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$decProviderCountLocked$2(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$g45MLM-M0O4bf6DUATzDShTA1sg(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderHelper;->lambda$getProviderMimeTypeAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1728
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x20
        0x220
        0x2820
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 1734
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    .line 112
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_19

    .line 113
    new-instance p2, Lcom/android/server/am/ProviderMap;

    invoke-direct {p2, p1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-void
.end method

.method private synthetic lambda$checkContentProviderAssociation$3(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1684
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p3, p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_13

    .line 1686
    iget-object p0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$decProviderCountLocked$2(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 4

    .line 1546
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method private synthetic lambda$getProviderMimeTypeAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 8

    .line 1145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1147
    :try_start_5
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    .line 1149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    invoke-virtual {p3, p4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :catchall_f
    move-exception p0

    .line 1149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    throw p0
.end method

.method private synthetic lambda$installEncryptionUnawareProviders$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 15

    .line 1449
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0x40008

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1450
    invoke-interface {v0, p2, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 1451
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz p2, :cond_9e

    .line 1452
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 1453
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_9e

    aget-object v4, p2, v3

    .line 1455
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1456
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_36

    iget-boolean v5, v4, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v5, :cond_34

    goto :goto_36

    :cond_34
    move v5, v2

    goto :goto_37

    :cond_36
    :goto_36
    move v5, v6

    .line 1458
    :goto_37
    iget-object v7, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v11, v4, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4e

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v7, :cond_4c

    goto :goto_4e

    :cond_4c
    move v7, v2

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v7, v6

    .line 1461
    :goto_4f
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    .line 1462
    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v9, :cond_65

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1463
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_61} :catch_9e

    if-eqz v9, :cond_64

    goto :goto_65

    :cond_64
    move v6, v2

    :cond_65
    :goto_65
    const-string v9, "ContentProviderHelper"

    if-eqz v5, :cond_87

    if-eqz v7, :cond_87

    if-eqz v8, :cond_6f

    if-eqz v6, :cond_87

    .line 1467
    :cond_6f
    :try_start_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto :goto_9b

    .line 1470
    :cond_87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_9b} :catch_9e

    :goto_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :catch_9e
    :cond_9e
    return-void
.end method


# virtual methods
.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 7

    .line 1010
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string v2, "appNotRespondingViaProvider()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;

    const-string v0, "ContentProviderHelper"

    if-nez p1, :cond_15

    const-string p0, "ContentProviderConnection is null"

    .line 1015
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1021
    :cond_15
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_20

    .line 1022
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_22

    :cond_20
    const-string v1, ""

    :goto_22
    const-wide/16 v2, 0x40

    const-string v4, "appNotRespondingViaProvider: "

    .line 1019
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 1024
    :try_start_29
    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_38

    const-string p0, "Failed to find hosting ProcessRecord"

    .line 1026
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_45

    .line 1032
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1030
    :cond_38
    :try_start_38
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    const-string v0, "ContentProvider not responding"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_45

    .line 1032
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_45
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1033
    throw p0
.end method

.method public final canClearIdentity(III)Z
    .registers 5

    .line 1165
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, p3, :cond_8

    return v0

    :cond_8
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    const/4 p3, -0x1

    .line 1168
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1171
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public checkAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    .line 1914
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1915
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 1916
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public checkAppInLaunchingProvidersMARsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    .line 1925
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_29

    .line 1927
    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_1b

    .line 1929
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_16} :catch_1e

    if-eqz v2, :cond_1b

    if-ne v2, p1, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :catch_1e
    move-exception p0

    .line 1933
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public final checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .registers 16

    .line 734
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_32

    const-string p3, "getContentProviderImpl: before checkContentProviderPermission"

    .line 738
    invoke-virtual {p0, p7, p8, p3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 740
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p1, :cond_1a

    .line 741
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    move-object v6, p1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p5

    .line 739
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2c

    const-string p1, "getContentProviderImpl: after checkContentProviderPermission"

    .line 745
    invoke-virtual {p0, p7, p8, p1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    return-void

    .line 743
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 735
    :cond_32
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Content provider lookup "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: association not allowed with package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 1183
    iget-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "ContentProviderHelper"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    .line 1187
    :cond_12
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1188
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1189
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1191
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1192
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    const/4 v0, 0x1

    :goto_33
    move v5, p2

    move v6, v0

    const/4 p2, 0x0

    .line 1198
    :try_start_36
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc0e00

    invoke-interface {v0, p1, v1, v2, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_41

    :catch_41
    move-object v2, p2

    if-nez v2, :cond_63

    .line 1208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find provider "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; expected to find a valid ContentProvider for this authority"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1212
    :cond_63
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1215
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p1

    .line 1216
    :try_start_6c
    iget-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p2

    if-nez p2, :cond_89

    .line 1218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find PID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit p1

    return-object p0

    .line 1220
    :cond_89
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1221
    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_6c .. :try_end_8e} :catchall_98

    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_98
    move-exception p0

    .line 1221
    :try_start_99
    monitor-exit p1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p0
.end method

.method public final checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_15

    .line 1680
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const-string v0, "<null>"

    :goto_14
    return-object v0

    .line 1683
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p2

    new-instance v0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p5

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v12, :cond_59

    .line 1607
    iget-object v2, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v5, p4

    invoke-virtual {v2, v5}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v15

    .line 1608
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v15, v2, :cond_2d

    .line 1609
    iget-object v2, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v2, v11, v1, v15, v12}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v14

    :cond_29
    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_2f

    :cond_2d
    move/from16 v16, v13

    .line 1615
    :goto_2f
    iget-object v2, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkContentProviderPermissionLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v15, :cond_56

    goto :goto_5c

    :cond_56
    move/from16 v13, v16

    goto :goto_5c

    :cond_59
    move/from16 v5, p4

    move v2, v5

    .line 1626
    :goto_5c
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, v10, v11, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_6b

    return-object v14

    .line 1631
    :cond_6b
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, v10, v11, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_7a

    return-object v14

    .line 1637
    :cond_7a
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v3, :cond_ab

    .line 1639
    array-length v4, v3

    :cond_7f
    if-lez v4, :cond_ab

    add-int/lit8 v4, v4, -0x1

    .line 1642
    aget-object v5, v3, v4

    .line 1643
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_98

    .line 1644
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v6, v10, v11, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v6

    if-nez v6, :cond_98

    return-object v14

    .line 1649
    :cond_98
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 1650
    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v5, v10, v11, v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v5

    if-nez v5, :cond_7f

    return-object v14

    :cond_ab
    if-nez v13, :cond_b8

    .line 1657
    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1658
    invoke-interface {v0, v11, v1, v2, v12}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v0

    if-eqz v0, :cond_b8

    return-object v14

    .line 1663
    :cond_b8
    iget-boolean v0, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_d2

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " that is not exported from UID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fc

    .line 1665
    :cond_d2
    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    const-string v0, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    goto :goto_fc

    .line 1668
    :cond_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1670
    :goto_fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: opening provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_115

    move-object/from16 v1, p6

    goto :goto_117

    :cond_115
    const-string v1, "(null)"

    .line 1671
    :goto_117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentProviderHelper"

    .line 1673
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v0, p3

    .line 1228
    iget-object v1, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "ContentProviderHelper"

    const/4 v11, -0x1

    if-eqz v1, :cond_24

    .line 1229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to check Uri permission because caller is holding WM lock; assuming permission denied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11

    .line 1234
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    .line 1235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    const/4 v3, 0x0

    const/4 v15, 0x0

    :try_start_2e
    const-string v5, "*checkContentProviderUriPermission*"

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v4, p3

    move/from16 v6, p2

    .line 1238
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3b} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_91
    .catchall {:try_start_2e .. :try_end_3b} :catchall_8e

    if-eqz v1, :cond_7e

    .line 1242
    :try_start_3d
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4d} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4d} :catch_7a
    .catchall {:try_start_3d .. :try_end_4d} :catchall_dd

    if-nez v2, :cond_5c

    .line 1264
    :try_start_4f
    invoke-virtual {v7, v12, v15, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_56

    .line 1267
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :catchall_56
    move-exception v0

    move-object v1, v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v1

    .line 1250
    :cond_5c
    :try_start_5c
    new-instance v3, Landroid/content/AttributionSource;

    .line 1251
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2, v15}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v2, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move/from16 v4, p4

    invoke-interface {v2, v3, v8, v0, v4}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v0
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6d} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6d} :catch_7a
    .catchall {:try_start_5c .. :try_end_6d} :catchall_dd

    .line 1264
    :try_start_6d
    invoke-virtual {v7, v12, v15, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_74

    .line 1267
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_74
    move-exception v0

    move-object v1, v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v1

    :catch_7a
    move-exception v0

    goto :goto_93

    :catch_7c
    move-exception v0

    goto :goto_b9

    :cond_7e
    if-eqz v1, :cond_8a

    .line 1264
    :try_start_80
    invoke-virtual {v7, v12, v15, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_8a

    :catchall_84
    move-exception v0

    move-object v1, v0

    .line 1267
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v1

    .line 1267
    :cond_8a
    :goto_8a
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :catchall_8e
    move-exception v0

    move-object v1, v15

    goto :goto_de

    :catch_91
    move-exception v0

    move-object v1, v15

    .line 1259
    :goto_93
    :try_start_93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while determining type of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_93 .. :try_end_a7} :catchall_dd

    if-eqz v1, :cond_b3

    .line 1264
    :try_start_a9
    invoke-virtual {v7, v12, v15, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_ad

    goto :goto_b3

    :catchall_ad
    move-exception v0

    move-object v1, v0

    .line 1267
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v1

    .line 1267
    :cond_b3
    :goto_b3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :catch_b7
    move-exception v0

    move-object v1, v15

    .line 1256
    :goto_b9
    :try_start_b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content provider dead retrieving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_b9 .. :try_end_cd} :catchall_dd

    if-eqz v1, :cond_d9

    .line 1264
    :try_start_cf
    invoke-virtual {v7, v12, v15, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_d9

    :catchall_d3
    move-exception v0

    move-object v1, v0

    .line 1267
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v1

    .line 1267
    :cond_d9
    :goto_d9
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :catchall_dd
    move-exception v0

    :goto_de
    if-eqz v1, :cond_ea

    .line 1264
    :try_start_e0
    invoke-virtual {v7, v12, v15, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_ea

    :catchall_e4
    move-exception v0

    move-object v1, v0

    .line 1267
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v1

    .line 1267
    :cond_ea
    :goto_ea
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    throw v0
.end method

.method public final checkTime(JLjava/lang/String;)V
    .registers 6

    .line 1978
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_2a

    .line 1981
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Slow operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 9

    .line 1946
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_39

    .line 1947
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 1948
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_18

    goto :goto_36

    .line 1952
    :cond_18
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_21

    move p2, v1

    :cond_21
    if-nez p2, :cond_33

    .line 1956
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v4

    if-eqz v4, :cond_33

    move v2, v1

    goto :goto_36

    .line 1959
    :cond_33
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_39
    return v2
.end method

.method public cleanupLaunchingProvidersLocked()V
    .registers 4

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    .line 1967
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 1968
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1969
    monitor-enter v1

    const/4 v2, 0x0

    .line 1970
    :try_start_22
    iput-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 1971
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1972
    monitor-exit v1

    goto :goto_2c

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2f
    return-void
.end method

.method public final decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1534
    invoke-virtual {p2, p3}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    return v0

    .line 1538
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->totalRefCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_12

    .line 1539
    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    return v0

    :cond_12
    if-eqz p5, :cond_23

    .line 1545
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p5, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    const-wide/16 p0, 0x1388

    invoke-virtual {p2, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    .line 1549
    :cond_23
    invoke-virtual {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    :goto_26
    return p3
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 14

    .line 2029
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    .line 2038
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProviderMap;->dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dumpProvidersLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 10

    .line 1987
    new-instance p1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 1988
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    const-string p1, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    .line 1990
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p1, p2, p5, p6}, Lcom/android/server/am/ProviderMap;->dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    move-result p1

    .line 1995
    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_62

    const/4 p3, 0x0

    .line 1997
    iget-object p4, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 p5, 0x1

    sub-int/2addr p4, p5

    move v0, p4

    move p4, p3

    move p3, p1

    :goto_27
    if-ltz v0, :cond_62

    .line 1998
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p6, :cond_40

    .line 1999
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_5f

    :cond_40
    if-nez p4, :cond_4f

    if-eqz p3, :cond_47

    .line 2003
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_47
    const-string p1, "  Launching content providers:"

    .line 2005
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p1, p5

    move p3, p1

    move p4, p3

    :cond_4f
    const-string v2, "  Launching #"

    .line 2009
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_62
    if-nez p1, :cond_69

    const-string p0, "  (nothing)"

    .line 2015
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method public generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1285
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-wide/32 v6, 0x10000c00

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1289
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_19} :catch_10c

    if-nez v3, :cond_1c

    return-object v2

    .line 1297
    :cond_1c
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v5, "ActivityManager_MU"

    if-eqz v4, :cond_38

    .line 1298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateApplicationProvidersLocked, app.info.uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_38
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1302
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1303
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->ensureProviderCapacity(I)V

    const/4 v8, 0x0

    :goto_47
    if-ge v8, v4, :cond_104

    .line 1306
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ProviderInfo;

    .line 1307
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v14, v9, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_6e

    .line 1309
    iget v10, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eqz v10, :cond_6e

    .line 1314
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_68
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_100

    .line 1319
    :cond_6e
    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v10

    .line 1320
    iget-object v11, v9, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v11, :cond_85

    iget-object v12, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_83

    goto :goto_85

    :cond_83
    const/4 v11, 0x0

    goto :goto_87

    :cond_85
    :goto_85
    move/from16 v11, v16

    :goto_87
    if-eqz v10, :cond_8f

    if-nez v11, :cond_8f

    .line 1325
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_68

    .line 1331
    :cond_8f
    new-instance v14, Landroid/content/ComponentName;

    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v14, v11}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v10

    if-nez v10, :cond_bc

    .line 1334
    new-instance v13, Lcom/android/server/am/ContentProviderRecord;

    iget-object v11, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v10, v13

    move-object/from16 v17, v12

    move-object v12, v9

    move-object v7, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    .line 1335
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v11, v17

    invoke-virtual {v10, v11, v7}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    move-object v10, v7

    .line 1337
    :cond_bc
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v7, :cond_d6

    .line 1338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateApplicationProvidersLocked, cpi.uid = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_d6
    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 1341
    iget-boolean v7, v9, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v7, :cond_e9

    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v10, "android"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f6

    .line 1346
    :cond_e9
    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v11, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1, v10, v11, v12, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1349
    :cond_f6
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    :goto_100
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_47

    .line 1352
    :cond_104
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10b

    goto :goto_10c

    :cond_10b
    move-object v2, v3

    :catch_10c
    :goto_10c
    return-object v2
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .registers 15

    .line 122
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "getContentProvider"

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const-string v3, "ContentProviderHelper"

    if-eqz v1, :cond_38

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sdk sandbox process "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is accessing content provider "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". This access will most likely be blocked in the future"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    if-eqz p1, :cond_77

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eqz p2, :cond_6a

    .line 138
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_6a

    .line 140
    :cond_4b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given calling package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p2

    move v7, p5

    move v8, p4

    .line 143
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    .line 131
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "null IApplicationThread when getting content provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .registers 15

    .line 149
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v3, "Do not have permission in call getContentProviderExternal()"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "getContentProvider"

    const/4 v9, 0x0

    move v5, p2

    .line 152
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p4, :cond_27

    move-object v4, p4

    goto :goto_2a

    :cond_27
    const-string v1, "*external*"

    move-object v4, v1

    :goto_2a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method public getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;
    .registers 15

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v8, p5

    .line 161
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;
    .registers 19

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 169
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method public final getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;
    .registers 56

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p4

    move/from16 v10, p8

    move/from16 v1, p9

    .line 187
    iget-object v11, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_9f3

    if-eqz v15, :cond_53

    .line 192
    :try_start_18
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object v6, v2

    goto :goto_54

    .line 194
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when getting content provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_4d
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v11

    goto/16 :goto_9f7

    :cond_53
    const/4 v6, 0x0

    :goto_54
    const/4 v5, -0x1

    if-nez v15, :cond_6d

    if-eq v1, v5, :cond_6d

    .line 203
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_5e
    .catchall {:try_start_18 .. :try_end_5e} :catchall_4d

    .line 204
    :try_start_5e
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 205
    monitor-exit v2

    move-object v4, v1

    goto :goto_6e

    :catchall_69
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_69

    :try_start_6c
    throw v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_4d

    :cond_6d
    move-object v4, v6

    :goto_6e
    :try_start_6e
    const-string v1, "getContentProviderImpl: getProviderByName"

    .line 214
    invoke-virtual {v14, v8, v9, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 217
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v13, v10}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_9f3

    const/4 v2, 0x0

    if-nez v1, :cond_e5

    if-eqz v10, :cond_e5

    .line 221
    :try_start_7e
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v13, v2}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    if-eqz v1, :cond_df

    .line 223
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 225
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v1

    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v12, v2, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v3, v5, v7, v1, v12}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v6, :cond_a1

    move/from16 v3, p4

    goto :goto_a3

    .line 228
    :cond_a1
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_a3
    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 227
    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v1

    if-eqz v1, :cond_b3

    move-object/from16 v12, v19

    const/4 v7, 0x0

    const/16 v26, 0x0

    goto :goto_ea

    .line 231
    :cond_b3
    invoke-static/range {p2 .. p2}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 232
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 234
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_d3

    .line 236
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 237
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v1

    const/4 v3, 0x0

    goto :goto_d5

    :cond_d3
    move v1, v10

    const/4 v3, 0x1

    :goto_d5
    move v7, v1

    move/from16 v26, v3

    move-object/from16 v12, v19

    goto :goto_ea

    :cond_db
    move v7, v10

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_e8

    :cond_df
    move-object/from16 v19, v1

    move v7, v10

    move-object/from16 v12, v19

    goto :goto_e7

    :cond_e5
    move-object v12, v1

    move v7, v10

    :goto_e7
    const/4 v2, 0x0

    :goto_e8
    const/16 v26, 0x1

    :goto_ea
    if-eqz v12, :cond_135

    .line 248
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_135

    .line 249
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v1

    if-nez v1, :cond_f8

    const/4 v1, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v1, 0x0

    .line 256
    :goto_f9
    iget-object v3, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-eqz v3, :cond_12f

    iget-object v3, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-eqz v3, :cond_12f

    const-string v3, "ContentProviderHelper"

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v1

    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was killed by AM but isn\'t really dead"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_129
    .catchall {:try_start_7e .. :try_end_129} :catchall_4d

    move-object/from16 v28, v1

    move-object v1, v2

    move/from16 v27, v19

    goto :goto_13a

    :cond_12f
    move/from16 v19, v1

    move-object v1, v2

    move/from16 v27, v19

    goto :goto_138

    :cond_135
    move-object v1, v2

    const/16 v27, 0x0

    :goto_138
    const/16 v28, 0x0

    :goto_13a
    if-eqz v27, :cond_2dc

    .line 264
    :try_start_13c
    iget-object v5, v12, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 267
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z
    :try_end_140
    .catchall {:try_start_13c .. :try_end_140} :catchall_9f3

    if-eqz v1, :cond_184

    if-eqz v5, :cond_184

    .line 270
    :try_start_144
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eqz v4, :cond_15d

    .line 271
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_15d

    .line 272
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 273
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v21, v1

    move/from16 v22, v2

    goto :goto_161

    :cond_15d
    move/from16 v22, v1

    const/16 v21, 0x0

    .line 276
    :goto_161
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v19

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "provider"

    const/16 v24, 0x0

    move-object/from16 v20, v1

    move/from16 v25, v7

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 278
    monitor-exit v11
    :try_end_17e
    .catchall {:try_start_144 .. :try_end_17e} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v18, 0x0

    return-object v18

    :cond_184
    const/16 v18, 0x0

    if-eqz v6, :cond_1af

    .line 284
    :try_start_188
    invoke-virtual {v12, v6}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 285
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 286
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v1, p0

    move-object v2, v6

    const/4 v13, 0x1

    move-object v3, v5

    move/from16 v4, p4

    move v5, v7

    move/from16 v6, v26

    move-object/from16 v14, v18

    move-object v7, v10

    .line 285
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 292
    invoke-virtual {v12, v14, v13}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    .line 294
    iput-object v14, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 295
    monitor-exit v11
    :try_end_1ab
    .catchall {:try_start_188 .. :try_end_1ab} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_1af
    move-object/from16 v2, v18

    const/4 v3, 0x1

    .line 300
    :try_start_1b2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_1b6
    .catch Landroid/os/RemoteException; {:try_start_1b2 .. :try_end_1b6} :catch_1c5
    .catchall {:try_start_1b2 .. :try_end_1b6} :catchall_4d

    move-object/from16 v16, v4

    const-wide/16 v3, 0x0

    .line 301
    :try_start_1ba
    invoke-interface {v1, v13, v3, v4, v7}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_1be} :catch_1c9
    .catchall {:try_start_1ba .. :try_end_1be} :catchall_4d

    if-nez v1, :cond_1c9

    .line 302
    :try_start_1c0
    monitor-exit v11
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catch_1c5
    move-object/from16 v16, v4

    const-wide/16 v3, 0x0

    .line 307
    :catch_1c9
    :cond_1c9
    :try_start_1c9
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 308
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v1, p0

    move-object v3, v2

    const/4 v4, 0x0

    move-object v2, v6

    move-object v15, v3

    move-object v3, v5

    move-object/from16 v31, v16

    move/from16 v4, p4

    move-object/from16 v16, v5

    move v5, v7

    move-object/from16 p9, v6

    move/from16 v6, v26

    move/from16 v34, v7

    move-object/from16 v7, v19

    move-wide/from16 v19, v8

    .line 307
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21
    :try_end_1ee
    .catchall {:try_start_1c9 .. :try_end_1ee} :catchall_9f3

    :try_start_1ee
    const-string v1, "getContentProviderImpl: incProviderCountLocked"

    move-wide/from16 v8, v19

    .line 312
    invoke-virtual {v14, v8, v9, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    const/16 v17, 0x1

    .line 315
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_1fb
    .catchall {:try_start_1ee .. :try_end_1fb} :catchall_2d4

    move-object/from16 v1, p0

    move-object/from16 v2, p9

    move-object v3, v12

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v19, v7

    move-object/from16 v7, p6

    move-wide/from16 v23, v8

    move/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v17, v11

    move-wide/from16 v10, v23

    move-object v15, v12

    move-object/from16 v12, v19

    move/from16 v13, p8

    :try_start_219
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v2

    const-string v1, "getContentProviderImpl: before updateOomAdj"

    move-wide/from16 v12, v23

    .line 319
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 320
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getVerifiedAdj()I

    move-result v1

    .line 321
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v5, "updateOomAdj_getProvider"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24c

    .line 328
    iget-object v4, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v1, v4, :cond_24c

    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 329
    invoke-virtual {v14, v1}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_24c

    const/4 v3, 0x0

    .line 332
    :cond_24c
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v10, p2

    move-object/from16 v11, p9

    invoke-virtual {v14, v11, v1, v10}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "getContentProviderImpl: after updateOomAdj"

    .line 333
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 334
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_276

    const-string v1, "ContentProviderHelper"

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adjust success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_276
    if-nez v3, :cond_2bb

    const-string v1, "ContentProviderHelper"

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is crashing; detaching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v4, p3

    move/from16 v5, p7

    .line 348
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v1
    :try_end_2a9
    .catchall {:try_start_219 .. :try_end_2a9} :catchall_2d2

    if-nez v1, :cond_2b4

    .line 363
    :try_start_2ab
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v17
    :try_end_2af
    .catchall {:try_start_2ab .. :try_end_2af} :catchall_9fc

    .line 353
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    .line 358
    :cond_2b4
    :try_start_2b4
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v28, v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_2c9

    .line 360
    :cond_2bb
    iget-object v1, v15, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V
    :try_end_2c6
    .catchall {:try_start_2b4 .. :try_end_2c6} :catchall_2d2

    move-object v7, v2

    move/from16 v2, v27

    .line 363
    :goto_2c9
    :try_start_2c9
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v2

    move-object/from16 v2, v16

    move-object/from16 v9, v28

    goto :goto_2ec

    :catchall_2d2
    move-exception v0

    goto :goto_2d7

    :catchall_2d4
    move-exception v0

    move-object/from16 v17, v11

    :goto_2d7
    move-object v1, v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    throw v1
    :try_end_2dc
    .catchall {:try_start_2c9 .. :try_end_2dc} :catchall_9fc

    :cond_2dc
    move-object/from16 v31, v4

    move/from16 v34, v7

    move-object/from16 v17, v11

    move-object v15, v12

    move-object v10, v13

    move-object v11, v6

    move-wide v12, v8

    move-object v2, v1

    move/from16 v8, v27

    move-object/from16 v9, v28

    const/4 v7, 0x0

    :goto_2ec
    if-nez v8, :cond_7cd

    const-wide/16 v3, 0xc00

    :try_start_2f0
    const-string v1, "getContentProviderImpl: before resolveContentProvider"

    .line 369
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 370
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_2f9
    .catch Landroid/os/RemoteException; {:try_start_2f0 .. :try_end_2f9} :catch_305
    .catchall {:try_start_2f0 .. :try_end_2f9} :catchall_9fc

    move/from16 v5, v34

    :try_start_2fb
    invoke-interface {v1, v10, v3, v4, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    const-string v1, "getContentProviderImpl: after resolveContentProvider"

    .line 374
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_304
    .catch Landroid/os/RemoteException; {:try_start_2fb .. :try_end_304} :catch_307
    .catchall {:try_start_2fb .. :try_end_304} :catchall_9fc

    goto :goto_307

    :catch_305
    move/from16 v5, v34

    .line 379
    :catch_307
    :goto_307
    :try_start_307
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_32b

    .line 380
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_327

    const/16 v1, 0x3e8

    move/from16 v15, p4

    if-eq v15, v1, :cond_329

    const-string/jumbo v1, "media"

    .line 381
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_324
    .catchall {:try_start_307 .. :try_end_324} :catchall_9fc

    if-eqz v1, :cond_32d

    goto :goto_329

    :cond_327
    move/from16 v15, p4

    :cond_329
    :goto_329
    const/4 v1, 0x1

    goto :goto_32e

    :cond_32b
    move/from16 v15, p4

    :cond_32d
    const/4 v1, 0x0

    :goto_32e
    if-eqz v1, :cond_348

    if-nez v2, :cond_348

    :try_start_332
    const-string v1, "getContentProviderImpl: before resolveContentProvider - dualApp"

    .line 384
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 385
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1
    :try_end_33b
    .catch Landroid/os/RemoteException; {:try_start_332 .. :try_end_33b} :catch_348
    .catchall {:try_start_332 .. :try_end_33b} :catchall_9fc

    const/4 v7, 0x0

    :try_start_33c
    invoke-interface {v1, v10, v3, v4, v7}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    const-string v1, "getContentProviderImpl: after resolveContentProvider - dualApp"

    .line 388
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_345
    .catch Landroid/os/RemoteException; {:try_start_33c .. :try_end_345} :catch_349
    .catchall {:try_start_33c .. :try_end_345} :catchall_9fc

    move-object v6, v2

    move v2, v7

    goto :goto_34b

    :catch_348
    :cond_348
    const/4 v7, 0x0

    :catch_349
    move-object v6, v2

    move v2, v5

    :goto_34b
    if-nez v6, :cond_353

    .line 396
    :try_start_34d
    monitor-exit v17
    :try_end_34e
    .catchall {:try_start_34d .. :try_end_34e} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    .line 401
    :cond_353
    :try_start_353
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v7, v6, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_378

    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v11, :cond_369

    move v3, v15

    goto :goto_36b

    .line 404
    :cond_369
    iget v3, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_36b
    iget-object v4, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 403
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v1

    if-eqz v1, :cond_378

    const/16 v26, 0x1

    goto :goto_37a

    :cond_378
    const/16 v26, 0x0

    :goto_37a
    if-eqz v26, :cond_37e

    const/4 v7, 0x0

    goto :goto_37f

    :cond_37e
    move v7, v2

    .line 408
    :goto_37f
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v7}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "getContentProviderImpl: got app info for user"

    .line 409
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v26, :cond_393

    const/16 v16, 0x1

    goto :goto_395

    :cond_393
    const/16 v16, 0x0

    :goto_395
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v6

    move/from16 v4, p4

    move v5, v7

    move-object v15, v6

    move/from16 v6, v16

    move-object/from16 v16, v11

    const/4 v10, 0x0

    move v11, v7

    move-object/from16 v7, p2

    move/from16 v41, v8

    move-object/from16 v42, v9

    move-wide v8, v12

    .line 411
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 414
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_3c7

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3bf

    goto :goto_3c7

    .line 418
    :cond_3bf
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempt to launch content provider before system ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_3c7
    :goto_3c7
    monitor-enter p0
    :try_end_3c8
    .catchall {:try_start_353 .. :try_end_3c8} :catchall_9fc

    .line 425
    :try_start_3c8
    iget-boolean v1, v14, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    if-nez v1, :cond_3fe

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_3fe

    const-string/jumbo v1, "system"

    iget-object v2, v15, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e0

    goto :goto_3fe

    .line 427
    :cond_3e0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access system provider: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' before system providers are installed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_3fe
    :goto_3fe
    monitor-exit p0
    :try_end_3ff
    .catchall {:try_start_3c8 .. :try_end_3ff} :catchall_7c9

    .line 434
    :try_start_3ff
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1, v11, v10}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_44c

    const-string v1, "ContentProviderHelper"

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-exit v17
    :try_end_447
    .catchall {:try_start_3ff .. :try_end_447} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    :cond_44c
    move v9, v10

    move-object/from16 v10, p2

    .line 442
    :try_start_44f
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v1, :cond_494

    .line 444
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    move-object/from16 v8, v31

    if-eqz v8, :cond_46e

    .line 445
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_46e

    .line 446
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 447
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v37, v1

    move-object/from16 v36, v7

    goto :goto_472

    :cond_46e
    move/from16 v37, v1

    const/16 v36, 0x0

    .line 449
    :goto_472
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v34

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "provider"

    const/16 v39, 0x0

    move-object/from16 v35, v1

    move/from16 v40, v11

    invoke-virtual/range {v34 .. v40}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_496

    .line 451
    monitor-exit v17
    :try_end_48f
    .catchall {:try_start_44f .. :try_end_48f} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    :cond_494
    move-object/from16 v8, v31

    .line 456
    :cond_496
    :try_start_496
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getContentProviderImpl: before getProviderByClass"

    .line 457
    invoke-virtual {v14, v12, v13, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 458
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v2, v1, v11}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    const-string v3, "getContentProviderImpl: after getProviderByClass"

    .line 459
    invoke-virtual {v14, v12, v13, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v2, :cond_4bc

    .line 466
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v4, v42

    if-ne v4, v3, :cond_4ba

    if-eqz v4, :cond_4ba

    goto :goto_4bc

    :cond_4ba
    move v3, v9

    goto :goto_4bd

    :cond_4bc
    :goto_4bc
    const/4 v3, 0x1

    :goto_4bd
    if-eqz v3, :cond_53c

    .line 468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 473
    iget-object v6, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v7, v16

    invoke-virtual {v14, v15, v7, v11, v6}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4d5

    .line 475
    monitor-exit v17
    :try_end_4d0
    .catchall {:try_start_496 .. :try_end_4d0} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    :cond_4d5
    :try_start_4d5
    const-string v6, "getContentProviderImpl: before getApplicationInfo"

    .line 479
    invoke-virtual {v14, v12, v13, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 480
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v9, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_4e2
    .catch Landroid/os/RemoteException; {:try_start_4d5 .. :try_end_4e2} :catch_534
    .catchall {:try_start_4d5 .. :try_end_4e2} :catchall_52e

    move-object/from16 v16, v2

    move/from16 v19, v3

    const-wide/16 v2, 0x400

    :try_start_4e8
    invoke-interface {v6, v9, v2, v3, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "getContentProviderImpl: after getApplicationInfo"

    .line 483
    invoke-virtual {v14, v12, v13, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v2, :cond_514

    const-string v2, "ContentProviderHelper"

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package info for content provider "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50b
    .catch Landroid/os/RemoteException; {:try_start_4e8 .. :try_end_50b} :catch_538
    .catchall {:try_start_4e8 .. :try_end_50b} :catchall_52e

    .line 493
    :try_start_50b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v17
    :try_end_50f
    .catchall {:try_start_50b .. :try_end_50f} :catchall_9fc

    .line 486
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    .line 488
    :cond_514
    :try_start_514
    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v11}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    .line 489
    new-instance v2, Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v15

    move-object/from16 v25, v1

    invoke-direct/range {v21 .. v26}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_529
    .catch Landroid/os/RemoteException; {:try_start_514 .. :try_end_529} :catch_538
    .catchall {:try_start_514 .. :try_end_529} :catchall_52e

    .line 493
    :try_start_529
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v9, v2

    goto :goto_544

    :catchall_52e
    move-exception v0

    move-object v1, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    throw v1

    :catch_534
    move-object/from16 v16, v2

    move/from16 v19, v3

    .line 493
    :catch_538
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_542

    :cond_53c
    move/from16 v19, v3

    move-object/from16 v7, v16

    move-object/from16 v16, v2

    :goto_542
    move-object/from16 v9, v16

    :goto_544
    const-string v2, "getContentProviderImpl: now have ContentProviderRecord"

    .line 497
    invoke-virtual {v14, v12, v13, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v7, :cond_55c

    .line 499
    invoke-virtual {v9, v7}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_55c

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 504
    invoke-virtual {v9, v3, v2}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    monitor-exit v17
    :try_end_558
    .catchall {:try_start_529 .. :try_end_558} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 507
    :cond_55c
    :try_start_55c
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v2, :cond_5a5

    const-string v2, "ContentProviderHelper"

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAUNCHING REMOTE PROVIDER (myuid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_575

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_576

    :cond_575
    const/4 v4, 0x0

    :goto_576
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pruid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    .line 510
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_5a5
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5ac
    if-ge v3, v2, :cond_5ba

    .line 518
    iget-object v4, v14, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_5b7

    goto :goto_5ba

    :cond_5b7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5ac

    :cond_5ba
    :goto_5ba
    if-lt v3, v2, :cond_756

    .line 525
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_5c0
    .catchall {:try_start_55c .. :try_end_5c0} :catchall_9fc

    .line 528
    :try_start_5c0
    iget-object v4, v9, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v6, p5

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d9

    .line 530
    iget-object v4, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v5, v9, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1f

    invoke-virtual {v4, v5, v11, v6}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V
    :try_end_5d9
    .catchall {:try_start_5c0 .. :try_end_5d9} :catchall_750

    :cond_5d9
    :try_start_5d9
    const-string v4, "getContentProviderImpl: before set stopped state"

    .line 536
    invoke-virtual {v14, v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 538
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, v9, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v11}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V

    const-string v4, "getContentProviderImpl: after set stopped state"

    .line 540
    invoke-virtual {v14, v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_5ef
    .catch Landroid/os/RemoteException; {:try_start_5d9 .. :try_end_5ef} :catch_5ef
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d9 .. :try_end_5ef} :catch_5f2
    .catchall {:try_start_5d9 .. :try_end_5ef} :catchall_750

    :catch_5ef
    move-object/from16 v31, v8

    goto :goto_618

    :catch_5f2
    move-exception v0

    move-object v4, v0

    :try_start_5f4
    const-string v5, "ContentProviderHelper"

    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v8

    const-string v8, "Failed trying to unstop package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_618
    const-string v4, "getContentProviderImpl: looking for process record"

    .line 548
    invoke-virtual {v14, v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 549
    iget-object v4, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_6c4

    .line 552
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_6c4

    .line 553
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v6

    if-nez v6, :cond_6c4

    .line 554
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v6, :cond_654

    const-string v6, "ContentProviderHelper"

    .line 555
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v11

    const-string v11, "Installing in existing process "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_656

    :cond_654
    move/from16 v16, v11

    .line 557
    :goto_656
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 558
    iget-object v8, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/server/am/ProcessProviderRecord;->hasProvider(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6bd

    const-string v8, "getContentProviderImpl: scheduling install"

    .line 559
    invoke-virtual {v14, v12, v13, v8}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 560
    iget-object v8, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    :try_end_66a
    .catchall {:try_start_5f4 .. :try_end_66a} :catchall_750

    .line 562
    :try_start_66a
    invoke-interface {v5, v15}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_66d
    .catch Landroid/os/RemoteException; {:try_start_66a .. :try_end_66d} :catch_66d
    .catchall {:try_start_66a .. :try_end_66d} :catchall_750

    .line 567
    :catch_66d
    :try_start_66d
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v5

    move-object v11, v7

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_695

    const/4 v8, 0x0

    .line 568
    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 569
    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    const-string v5, "ContentProviderHelper"

    .line 570
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reset AL flag for provider call"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_695
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v5

    if-nez v5, :cond_6be

    const/4 v5, -0x1

    .line 573
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    const-wide/16 v5, -0x1

    .line 574
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    const-string v5, "ContentProviderHelper"

    .line 575
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " reset ML flag for provider call"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6be

    :cond_6bd
    move-object v11, v7

    :cond_6be
    :goto_6be
    move-object/from16 v32, v1

    move-object/from16 v30, v11

    goto/16 :goto_745

    :cond_6c4
    move/from16 v16, v11

    move-object v11, v7

    const-string v4, "getContentProviderImpl: before start process"

    .line 581
    invoke-virtual {v14, v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 582
    iget-object v4, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v24, 0x0

    const/16 v25, 0x0

    new-instance v7, Lcom/android/server/am/HostingRecord;

    const-string v8, "content provider"

    move-object/from16 v30, v11

    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v32, v1

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v9

    iget-object v9, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, v11}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    invoke-virtual/range {v21 .. v29}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    const-string v1, "getContentProviderImpl: after start process"

    .line 588
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v4, :cond_743

    const-string v1, "ContentProviderHelper"

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": process is bad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73a
    .catchall {:try_start_66d .. :try_end_73a} :catchall_750

    .line 600
    :try_start_73a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v17
    :try_end_73e
    .catchall {:try_start_73a .. :try_end_73e} :catchall_9fc

    .line 594
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    :cond_743
    move-object/from16 v9, v33

    .line 597
    :goto_745
    :try_start_745
    iput-object v4, v9, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 598
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74c
    .catchall {:try_start_745 .. :try_end_74c} :catchall_750

    .line 600
    :try_start_74c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_75e

    :catchall_750
    move-exception v0

    move-object v1, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw v1

    :cond_756
    move-object/from16 v32, v1

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v16, v11

    :goto_75e
    const-string v1, "getContentProviderImpl: updating data structures"

    .line 604
    invoke-virtual {v14, v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v19, :cond_76c

    .line 609
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v2, v32

    invoke-virtual {v1, v2, v9}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 612
    :cond_76c
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v10, v9}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    const/4 v11, 0x0

    .line 613
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    move-object v3, v9

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v21, v8

    move-object/from16 v19, v15

    move-object/from16 v15, v31

    const/16 v22, 0x0

    move/from16 v8, p7

    move-object v15, v9

    move v9, v11

    move-wide v10, v12

    move-wide/from16 v43, v12

    move-object/from16 v12, v21

    move/from16 v13, p8

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v7

    if-eqz v7, :cond_7a0

    const/4 v1, 0x1

    .line 616
    iput-boolean v1, v7, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_7a1

    :cond_7a0
    const/4 v1, 0x1

    .line 621
    :goto_7a1
    iget-object v2, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7a8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7bf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    .line 622
    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderConnection;->getStableCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderConnection;->getUnstableCount()I

    move-result v4
    :try_end_7bc
    .catchall {:try_start_74c .. :try_end_7bc} :catchall_9fc

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_7a8

    :cond_7bf
    move v4, v3

    move-object v5, v7

    move-object v12, v15

    move/from16 v7, v16

    move-object/from16 v2, v19

    move/from16 v3, p4

    goto :goto_7e0

    :catchall_7c9
    move-exception v0

    move-object v1, v0

    .line 430
    :try_start_7cb
    monitor-exit p0
    :try_end_7cc
    .catchall {:try_start_7cb .. :try_end_7cc} :catchall_7c9

    :try_start_7cc
    throw v1

    :cond_7cd
    move/from16 v3, p4

    move/from16 v41, v8

    move-wide/from16 v43, v12

    move-object/from16 v19, v15

    move/from16 v5, v34

    const/4 v1, 0x1

    move-object/from16 v12, v19

    const/4 v4, 0x0

    move-object/from16 v45, v7

    move v7, v5

    move-object/from16 v5, v45

    :goto_7e0
    const-string v6, "getContentProviderImpl: done!"

    move-wide/from16 v8, v43

    .line 627
    invoke-virtual {v14, v8, v9, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 629
    iget-object v6, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 630
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/4 v9, 0x0

    .line 629
    invoke-virtual {v6, v7, v9, v3, v8}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    move v3, v1

    move-object/from16 v1, p1

    if-eqz v1, :cond_8a4

    .line 634
    monitor-enter v12
    :try_end_7fb
    .catchall {:try_start_7cc .. :try_end_7fb} :catchall_9fc

    .line 635
    :try_start_7fb
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v1, :cond_895

    .line 636
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_850

    const-string v1, "ContentProviderHelper"

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": launching app became null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 642
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 641
    invoke-static {v1, v3, v2, v4}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 645
    monitor-exit v12
    :try_end_84a
    .catchall {:try_start_7fb .. :try_end_84a} :catchall_8a0

    :try_start_84a
    monitor-exit v17
    :try_end_84b
    .catchall {:try_start_84a .. :try_end_84b} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    :cond_850
    if-le v4, v3, :cond_87b

    :try_start_852
    const-string v1, "ContentProviderHelper"

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wait for provider publish: waiters="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callerApp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v31

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cpr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87b
    if-eqz v5, :cond_87f

    .line 655
    iput-boolean v3, v5, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 657
    :cond_87f
    iget-object v1, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 659
    iput-object v12, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 660
    iget-object v2, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 663
    :cond_895
    monitor-exit v12
    :try_end_896
    .catchall {:try_start_852 .. :try_end_896} :catchall_8a0

    const/4 v6, 0x0

    .line 667
    :try_start_897
    invoke-virtual {v12, v5, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    monitor-exit v17
    :try_end_89c
    .catchall {:try_start_897 .. :try_end_89c} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_8a0
    move-exception v0

    move-object v1, v0

    .line 663
    :try_start_8a2
    monitor-exit v12
    :try_end_8a3
    .catchall {:try_start_8a2 .. :try_end_8a3} :catchall_8a0

    :try_start_8a3
    throw v1

    :cond_8a4
    move-object/from16 v4, p2

    const/4 v6, 0x0

    .line 669
    monitor-exit v17
    :try_end_8a8
    .catchall {:try_start_8a3 .. :try_end_8a8} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget v9, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 676
    monitor-enter v12

    .line 677
    :goto_8b4
    :try_start_8b4
    iget-object v9, v12, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v9, :cond_971

    .line 678
    iget-object v9, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v9, :cond_903

    const-string v1, "ContentProviderHelper"

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch app "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for provider "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": launching app became null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 683
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 682
    invoke-static {v1, v3, v2, v4}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 685
    monitor-exit v12
    :try_end_901
    .catchall {:try_start_8b4 .. :try_end_901} :catchall_9ef

    const/4 v1, 0x0

    return-object v1

    .line 688
    :cond_903
    :try_start_903
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_907
    .catch Ljava/lang/InterruptedException; {:try_start_903 .. :try_end_907} :catch_963
    .catchall {:try_start_903 .. :try_end_907} :catchall_95b

    sub-long v9, v7, v9

    move-wide/from16 p3, v7

    const-wide/16 v6, 0x0

    :try_start_90d
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 689
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v10, :cond_942

    const-string v10, "ActivityManager_MU"

    .line 690
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Waiting to start provider "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " launchingApp="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " ms"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_942
    if-eqz v5, :cond_946

    .line 694
    iput-boolean v3, v5, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 696
    :cond_946
    invoke-virtual {v12, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 697
    iget-object v8, v12, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_94b
    .catch Ljava/lang/InterruptedException; {:try_start_90d .. :try_end_94b} :catch_967
    .catchall {:try_start_90d .. :try_end_94b} :catchall_95b

    if-nez v8, :cond_955

    if-eqz v5, :cond_953

    const/4 v8, 0x0

    .line 704
    :try_start_950
    iput-boolean v8, v5, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_972

    :cond_953
    const/4 v8, 0x0

    goto :goto_972

    :cond_955
    const/4 v8, 0x0

    if-eqz v5, :cond_96c

    iput-boolean v8, v5, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_96c

    :catchall_95b
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_962

    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 706
    :cond_962
    throw v1

    :catch_963
    move-wide/from16 p3, v7

    const-wide/16 v6, 0x0

    :catch_967
    if-eqz v5, :cond_96c

    const/4 v8, 0x0

    .line 704
    iput-boolean v8, v5, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    :cond_96c
    :goto_96c
    move-wide/from16 v7, p3

    const/4 v6, 0x0

    goto/16 :goto_8b4

    :cond_971
    const/4 v3, 0x0

    .line 708
    :goto_972
    monitor-exit v12
    :try_end_973
    .catchall {:try_start_950 .. :try_end_973} :catchall_9ef

    if-eqz v3, :cond_9e9

    const-string/jumbo v3, "unknown"

    if-eqz v1, :cond_99b

    .line 713
    iget-object v5, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v5

    :try_start_97f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 714
    iget-object v6, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 715
    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_98f

    .line 717
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, v1

    .line 719
    :cond_98f
    monitor-exit v5
    :try_end_990
    .catchall {:try_start_97f .. :try_end_990} :catchall_994

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_99b

    :catchall_994
    move-exception v0

    move-object v1, v0

    :try_start_996
    monitor-exit v5
    :try_end_997
    .catchall {:try_start_996 .. :try_end_997} :catchall_994

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    :cond_99b
    :goto_99b
    const-string v1, "ContentProviderHelper"

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout waiting for provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for provider "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " providerRunning="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v41

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " caller="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_9e9
    const/4 v1, 0x0

    .line 728
    invoke-virtual {v12, v5, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    return-object v1

    :catchall_9ef
    move-exception v0

    move-object v1, v0

    .line 708
    :try_start_9f1
    monitor-exit v12
    :try_end_9f2
    .catchall {:try_start_9f1 .. :try_end_9f2} :catchall_9ef

    throw v1

    :catchall_9f3
    move-exception v0

    move-object/from16 v17, v11

    :goto_9f6
    move-object v1, v0

    .line 669
    :goto_9f7
    :try_start_9f7
    monitor-exit v17
    :try_end_9f8
    .catchall {:try_start_9f7 .. :try_end_9f8} :catchall_9fc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_9fc
    move-exception v0

    goto :goto_9f6
.end method

.method public getProviderInfoLocked(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 6

    .line 1694
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1696
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    return-object p0

    .line 1699
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    or-int/lit16 p3, p3, 0x800

    int-to-long v0, p3

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProviderMap()Lcom/android/server/am/ProviderMap;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-object p0
.end method

.method public getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v13, "ContentProviderHelper"

    .line 1051
    iget-object v0, v11, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "getProviderMimeType"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    .line 1053
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1057
    iget-object v0, v11, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v15

    .line 1058
    invoke-virtual {v11, v10, v5, v15}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    .line 1060
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    goto :goto_33

    :cond_30
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_33
    move/from16 v16, v0

    move-wide/from16 v17, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_3b
    const-string/jumbo v7, "getmimetype"
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_c0
    .catchall {:try_start_3b .. :try_end_3e} :catchall_bd

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v3, v14

    move v9, v15

    .line 1066
    :try_start_43
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;

    move-result-object v9
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_47} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_b5
    .catchall {:try_start_43 .. :try_end_47} :catchall_b0

    if-eqz v9, :cond_99

    .line 1074
    :try_start_49
    iget-object v0, v9, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 1075
    iget-object v1, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v1}, Landroid/content/pm/ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1080
    new-instance v2, Lcom/android/server/am/ContentProviderHelper$1;

    invoke-direct {v2, v11, v1, v0}, Lcom/android/server/am/ContentProviderHelper$1;-><init>(Lcom/android/server/am/ContentProviderHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1087
    iget-object v0, v11, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5f} :catch_96
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5f} :catch_93
    .catchall {:try_start_49 .. :try_end_5f} :catchall_8f

    .line 1089
    :try_start_5f
    iget-object v0, v9, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0, v12}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_80

    .line 1091
    :try_start_65
    iget-object v1, v11, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6c} :catch_96
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_93
    .catchall {:try_start_65 .. :try_end_6c} :catchall_8f

    if-nez v16, :cond_72

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :cond_72
    const/4 v1, 0x0

    .line 1107
    :try_start_73
    invoke-virtual {v11, v14, v1, v15}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_7a

    .line 1110
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_7a
    move-exception v0

    move-object v1, v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    throw v1

    :catchall_80
    move-exception v0

    const/4 v1, 0x0

    .line 1091
    :try_start_82
    iget-object v3, v11, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1092
    throw v0
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8a} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8a} :catch_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_118

    :catch_8a
    move-exception v0

    goto :goto_c2

    :catch_8c
    move-exception v0

    goto/16 :goto_ee

    :catchall_8f
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_119

    :catch_93
    move-exception v0

    const/4 v1, 0x0

    goto :goto_c2

    :catch_96
    move-exception v0

    const/4 v1, 0x0

    goto :goto_ee

    :cond_99
    const/4 v1, 0x0

    if-nez v16, :cond_a0

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :cond_a0
    if-eqz v9, :cond_ac

    .line 1107
    :try_start_a2
    invoke-virtual {v11, v14, v1, v15}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_ac

    :catchall_a6
    move-exception v0

    move-object v1, v0

    .line 1110
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    throw v1

    .line 1110
    :cond_ac
    :goto_ac
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_b0
    move-exception v0

    const/4 v1, 0x0

    move-object v9, v1

    goto/16 :goto_119

    :catch_b5
    move-exception v0

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_c2

    :catch_b9
    move-exception v0

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_ee

    :catchall_bd
    move-exception v0

    move-object v1, v9

    goto :goto_119

    :catch_c0
    move-exception v0

    move-object v1, v9

    .line 1098
    :goto_c2
    :try_start_c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while determining type of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d6
    .catchall {:try_start_c2 .. :try_end_d6} :catchall_118

    if-nez v16, :cond_dc

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :cond_dc
    if-eqz v9, :cond_e8

    .line 1107
    :try_start_de
    invoke-virtual {v11, v14, v1, v15}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e2

    goto :goto_e8

    :catchall_e2
    move-exception v0

    move-object v1, v0

    .line 1110
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    throw v1

    .line 1110
    :cond_e8
    :goto_e8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_ec
    move-exception v0

    move-object v1, v9

    .line 1095
    :goto_ee
    :try_start_ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content provider dead retrieving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_102
    .catchall {:try_start_ee .. :try_end_102} :catchall_118

    if-nez v16, :cond_108

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :cond_108
    if-eqz v9, :cond_114

    .line 1107
    :try_start_10a
    invoke-virtual {v11, v14, v1, v15}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10e

    goto :goto_114

    :catchall_10e
    move-exception v0

    move-object v1, v0

    .line 1110
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    throw v1

    .line 1110
    :cond_114
    :goto_114
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_118
    move-exception v0

    :goto_119
    if-nez v16, :cond_11f

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :cond_11f
    if-eqz v9, :cond_12b

    .line 1107
    :try_start_121
    invoke-virtual {v11, v14, v1, v15}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_125

    goto :goto_12b

    :catchall_125
    move-exception v0

    move-object v1, v0

    .line 1110
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    throw v1

    .line 1110
    :cond_12b
    :goto_12b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    throw v0
.end method

.method public getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v9, p2

    move-object/from16 v12, p3

    .line 1124
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "getProviderMimeTypeAsync"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1127
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1128
    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1, v9}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v14

    .line 1129
    invoke-virtual {v0, v10, v5, v9}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    goto :goto_31

    :cond_2f
    const-wide/16 v1, 0x0

    :goto_31
    move-wide v15, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_35
    const-string/jumbo v7, "getmimetype"

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v3, v13

    move/from16 v9, p2

    .line 1136
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 1144
    iget-object v1, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v13, v14, v12}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v11, v2}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    goto :goto_59

    .line 1154
    :cond_54
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_59} :catch_5f
    .catchall {:try_start_35 .. :try_end_59} :catchall_5d

    .line 1160
    :goto_59
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7c

    :catchall_5d
    move-exception v0

    goto :goto_7d

    :catch_5f
    move-exception v0

    :try_start_60
    const-string v1, "ContentProviderHelper"

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content provider dead retrieving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_5d

    goto :goto_59

    :goto_7c
    return-void

    .line 1160
    :goto_7d
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1161
    throw v0
.end method

.method public final handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .registers 13

    .line 1566
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_81

    .line 1568
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_81

    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    move-result p2

    if-eqz p2, :cond_14

    goto/16 :goto_81

    .line 1572
    :cond_14
    iget-object p2, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 1573
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    .line 1574
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1575
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_31

    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1576
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1578
    :cond_31
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    .line 1579
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_51

    .line 1584
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_51

    .line 1585
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProviderRecord;->setLastProviderTime(J)V

    .line 1588
    :cond_51
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v2, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, p2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object p2, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move v2, v3

    move-object v3, v4

    move v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p3, :cond_7c

    .line 1591
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo p2, "updateOomAdj_removeProvider"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 1594
    :cond_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1569
    :cond_81
    :goto_81
    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_86
    move-exception p0

    .line 1594
    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1556
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_8
    if-ltz p0, :cond_1c

    .line 1557
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    return v0

    :cond_19
    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .registers 33
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move-wide/from16 v4, p9

    const/4 v6, 0x0

    if-nez v1, :cond_17

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    .line 1488
    invoke-virtual {v2, v7, v8, v9}, Lcom/android/server/am/ContentProviderRecord;->addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V

    return-object v6

    .line 1493
    :cond_17
    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1494
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_1f
    if-ge v10, v8, :cond_30

    .line 1495
    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v11

    .line 1496
    iget-object v12, v11, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-ne v12, v2, :cond_2d

    .line 1497
    invoke-virtual {v11, v3}, Lcom/android/server/am/ContentProviderConnection;->incrementCount(Z)I

    return-object v11

    :cond_2d
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 1503
    :cond_30
    new-instance v8, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v10, p5

    move/from16 v11, p12

    invoke-direct {v8, v2, v1, v10, v11}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 1505
    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    .line 1506
    invoke-virtual {v8, v3}, Lcom/android/server/am/ContentProviderConnection;->initializeCount(Z)V

    .line 1507
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4f

    .line 1509
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v10, 0x40

    invoke-virtual {v3, v10}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1511
    :cond_4f
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessProviderRecord;->addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V

    .line 1512
    iget-object v11, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v14

    iget v15, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-wide/from16 v16, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    if-eqz p8, :cond_95

    .line 1514
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_95

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1515
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_95

    const-string v1, "getContentProviderImpl: before updateLruProcess"

    .line 1522
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 1523
    iget-object v1, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v2, p11

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v9, v3}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    const-string v1, "getContentProviderImpl: after updateLruProcess"

    .line 1524
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    :cond_95
    return-object v8
.end method

.method public installEncryptionUnawareProviders(I)V
    .registers 13

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1436
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1437
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 1438
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_52

    .line 1440
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 1441
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v3

    :goto_27
    if-ge v7, v6, :cond_4f

    .line 1442
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1443
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, p1, :cond_4c

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_4c

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isUnlocked()Z

    move-result v9

    if-eqz v9, :cond_40

    goto :goto_4c

    .line 1447
    :cond_40
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    new-instance v10, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    :cond_4c
    :goto_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1479
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_57
    move-exception p0

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final installSystemProviders()V
    .registers 9

    .line 1390
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1391
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1392
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    const-string/jumbo v2, "system"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1393
    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_57

    .line 1395
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_25
    if-ltz v3, :cond_57

    .line 1396
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 1397
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_54

    const-string v5, "ContentProviderHelper"

    .line 1398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not installing system proc provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": not system .apk"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    .line 1404
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_64

    .line 1407
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    .line 1409
    :cond_64
    monitor-enter p0

    .line 1410
    :try_start_65
    iput-boolean v2, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    .line 1411
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_a6

    .line 1413
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerConstants;->start(Landroid/content/ContentResolver;)V

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/CoreSettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    .line 1415
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->installSystemProviders()V

    .line 1416
    new-instance v0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    .line 1417
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->initSettings()V

    .line 1421
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/RescueParty;->onSettingsProviderPublished(Landroid/content/Context;)V

    return-void

    :catchall_a6
    move-exception v0

    .line 1411
    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0

    :catchall_a9
    move-exception p0

    .line 1404
    :try_start_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 10

    .line 1737
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-gtz v0, :cond_22

    .line 1739
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_21

    .line 1740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Process hasn\'t started yet: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v2

    .line 1744
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1745
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 1746
    sget-object v5, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_60

    .line 1748
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_5f

    .line 1749
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UNABLE TO RETRIEVE STATE FOR "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return v2

    .line 1754
    :cond_60
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    aget-wide v4, p0, v2

    .line 1755
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_86

    .line 1756
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RETRIEVED STATE FOR "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    const-wide/16 v6, 0x5a

    cmp-long p0, v4, v6

    if-eqz p0, :cond_a7

    const-wide/16 v6, 0x58

    cmp-long p0, v4, v6

    if-eqz p0, :cond_a7

    const-wide/16 v6, 0x78

    cmp-long p0, v4, v6

    if-eqz p0, :cond_a7

    const-wide/16 v6, 0x4b

    cmp-long p0, v4, v6

    if-eqz p0, :cond_a7

    .line 1760
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result p0

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p0, p1, :cond_a7

    const/4 v2, 0x1

    :cond_a7
    return v2
.end method

.method public final maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_4c

    .line 1709
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_c

    goto :goto_4c

    .line 1714
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    .line 1716
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1717
    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_34

    .line 1718
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    sub-long v5, v1, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4c

    .line 1719
    :cond_34
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_43

    .line 1721
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, p3, p2, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1724
    :cond_43
    iget-object p0, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    :goto_4c
    return-void
.end method

.method public processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1275
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 1276
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x0

    const-string/jumbo v6, "timeout publishing content providers"

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    return-void
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List<",
            "Landroid/app/ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "publishContentProviders"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedOrSdkSandboxCaller(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 755
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 756
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v2, :cond_33

    const-string v2, "ActivityManager_MU"

    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProcessRecord uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-eqz v1, :cond_140

    .line 765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 767
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_40
    if-ge v5, p1, :cond_10d

    .line 768
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ContentProviderHolder;

    const/4 v8, 0x1

    if-eqz v7, :cond_109

    .line 769
    iget-object v9, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v9, :cond_109

    iget-object v10, v7, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v10, :cond_55

    goto/16 :goto_109

    .line 772
    :cond_55
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessProviderRecord;->getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v9

    if-nez v9, :cond_61

    goto/16 :goto_109

    .line 776
    :cond_61
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v6, :cond_7d

    const-string v6, "ActivityManager_MU"

    .line 777
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ContentProviderRecord uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_7d
    new-instance v6, Landroid/content/ComponentName;

    iget-object v10, v9, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v10, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v10, v6, v9}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 783
    iget-object v6, v9, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v10, v4

    .line 784
    :goto_98
    array-length v11, v6

    if-ge v10, v11, :cond_a5

    .line 785
    iget-object v11, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v12, v6, v10

    invoke-virtual {v11, v12, v9}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    .line 789
    :cond_a5
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v10, v4

    move v11, v10

    :goto_ad
    if-ge v10, v6, :cond_c3

    .line 790
    iget-object v12, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v9, :cond_c1

    .line 791
    iget-object v11, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v6, v6, -0x1

    move v11, v8

    :cond_c1
    add-int/2addr v10, v8

    goto :goto_ad

    :cond_c3
    if-eqz v11, :cond_d7

    .line 798
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x49

    invoke-virtual {v6, v10, v9}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 800
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x39

    invoke-virtual {v6, v10, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 808
    :cond_d7
    iget-object v6, v9, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v11, v6, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1, v10, v11, v12, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 810
    monitor-enter v9
    :try_end_e7
    .catchall {:try_start_e .. :try_end_e7} :catchall_168

    .line 811
    :try_start_e7
    iget-object v6, v7, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iput-object v6, v9, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 812
    invoke-virtual {v9, v1}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 813
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 814
    invoke-virtual {v9, v8}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 815
    monitor-exit v9
    :try_end_f5
    .catchall {:try_start_e7 .. :try_end_f5} :catchall_106

    .line 816
    :try_start_f5
    iput v4, v9, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 817
    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 818
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V
    :try_end_104
    .catchall {:try_start_f5 .. :try_end_104} :catchall_168

    :cond_104
    move v6, v8

    goto :goto_109

    :catchall_106
    move-exception p0

    .line 815
    :try_start_107
    monitor-exit v9
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    :try_start_108
    throw p0

    :cond_109
    :goto_109
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_40

    :cond_10d
    if-eqz v6, :cond_138

    .line 824
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "updateOomAdj_getProvider"

    invoke-virtual {p1, v1, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 825
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_11b
    if-ge v4, p1, :cond_138

    .line 826
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ContentProviderHolder;

    if-eqz v5, :cond_135

    .line 827
    iget-object v6, v5, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_135

    iget-object v5, v5, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v5, :cond_12e

    goto :goto_135

    .line 830
    :cond_12e
    iget-object v5, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    :goto_135
    add-int/lit8 v4, v4, 0x1

    goto :goto_11b

    .line 835
    :cond_138
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    monitor-exit v0
    :try_end_13c
    .catchall {:try_start_108 .. :try_end_13c} :catchall_168

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 760
    :cond_140
    :try_start_140
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find app for caller "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (pid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") when publishing content providers"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_168
    move-exception p0

    .line 836
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_140 .. :try_end_16a} :catchall_168

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .registers 7

    const-string/jumbo p0, "refContentProvider: "

    .line 918
    :try_start_3
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_31

    if-eqz p1, :cond_29

    .line 929
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_12

    .line 930
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_14

    :cond_12
    const-string v0, ""

    :goto_14
    const-wide/16 v1, 0x40

    .line 928
    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 932
    :try_start_19
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ContentProviderConnection;->adjustCounts(II)V

    .line 933
    iget-boolean p0, p1, Lcom/android/server/am/ContentProviderConnection;->dead:Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_24

    xor-int/lit8 p0, p0, 0x1

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_24
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 936
    throw p0

    .line 925
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 920
    :catch_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a ContentProviderConnection"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    .line 921
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .registers 14

    .line 843
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "removeContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedOrSdkSandboxCaller(Ljava/lang/String;)V

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 848
    :try_start_c
    move-object v3, p1

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_f} :catch_55
    .catchall {:try_start_c .. :try_end_f} :catchall_53

    if-eqz v3, :cond_4b

    :try_start_11
    const-string/jumbo p1, "removeContentProvider: "

    .line 860
    iget-object v2, v3, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_1f

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_1f

    .line 861
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    const-wide/16 v9, 0x40

    .line 858
    invoke-static {v9, v10, p1, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_53

    .line 863
    :try_start_26
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_46

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move v6, p2

    .line 864
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    .line 865
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_40

    :try_start_36
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_46

    .line 867
    :try_start_39
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_53

    .line 870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_40
    move-exception p0

    .line 865
    :try_start_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    .line 867
    :try_start_47
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 868
    throw p0

    .line 856
    :cond_4b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_53
    move-exception p0

    goto :goto_77

    .line 850
    :catch_55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeContentProvider: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a ContentProviderConnection"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    .line 852
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_77
    .catchall {:try_start_47 .. :try_end_77} :catchall_53

    .line 870
    :goto_77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    throw p0
.end method

.method public removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 7

    .line 875
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call removeContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 880
    :try_start_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 883
    throw p0
.end method

.method public removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 7

    .line 887
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 888
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    if-nez p1, :cond_13

    .line 894
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 898
    :cond_13
    :try_start_13
    new-instance v1, Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p1, v1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    .line 900
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result p3

    if-eqz p3, :cond_5f

    .line 901
    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 902
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo p2, "updateOomAdj_removeProvider"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    goto :goto_7a

    :cond_3b
    const-string p0, "ContentProviderHelper"

    .line 905
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove content provider "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external reference for token: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :cond_5f
    const-string p0, "ContentProviderHelper"

    .line 909
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to remove content provider: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external references."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_13 .. :try_end_7b} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_7f
    move-exception p0

    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1832
    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    if-nez p3, :cond_1b

    .line 1833
    iget v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_1b

    move v5, v4

    goto :goto_1d

    :cond_1b
    move/from16 v5, p3

    :goto_1d
    const/4 v6, 0x0

    if-eqz v3, :cond_22

    if-eqz v5, :cond_6f

    .line 1839
    :cond_22
    monitor-enter p2

    const/4 v7, 0x0

    .line 1840
    :try_start_24
    iput-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 1841
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notifyAll()V

    .line 1842
    invoke-virtual {v2, v6}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 1843
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x49

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1845
    monitor-exit p2
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_14d

    .line 1846
    iget v7, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1849
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v8

    if-ne v8, v2, :cond_4d

    .line 1850
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/ProviderMap;->removeProviderByClass(Landroid/content/ComponentName;I)V

    .line 1852
    :cond_4d
    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v9, v6

    .line 1853
    :goto_58
    array-length v10, v8

    if-ge v9, v10, :cond_6f

    .line 1856
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11, v7}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v10

    if-ne v10, v2, :cond_6c

    .line 1857
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11, v7}, Lcom/android/server/am/ProviderMap;->removeProviderByName(Ljava/lang/String;I)V

    :cond_6c
    add-int/lit8 v9, v9, 0x1

    goto :goto_58

    .line 1862
    :cond_6f
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_76
    if-ltz v7, :cond_140

    .line 1863
    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ContentProviderConnection;

    .line 1864
    iget-boolean v9, v8, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v9, :cond_8a

    if-eqz v3, :cond_8a

    if-nez v5, :cond_8a

    goto/16 :goto_13c

    .line 1872
    :cond_8a
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1873
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    .line 1874
    iput-boolean v4, v8, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    .line 1875
    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderConnection;->stableCount()I

    move-result v11

    if-lez v11, :cond_f2

    .line 1876
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    .line 1877
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v11

    if-nez v11, :cond_13c

    if-eqz v10, :cond_13c

    if-eqz v8, :cond_13c

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v10, :cond_13c

    .line 1879
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "depends on provider "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 1880
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in dying proc "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c7

    .line 1881
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_c9

    :cond_c7
    const-string v10, "??"

    :goto_c9
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (adj "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_de

    .line 1882
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_e0

    :cond_de
    const-string v10, "??"

    :goto_e0
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xc

    .line 1879
    invoke-virtual {v9, v8, v10, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_13c

    :cond_f2
    if-eqz v10, :cond_13c

    .line 1887
    iget-object v11, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v11, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eqz v11, :cond_13c

    .line 1889
    :try_start_fa
    invoke-interface {v11}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_101} :catch_101

    .line 1894
    :catch_101
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1895
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_119

    invoke-virtual {v0, v10}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v10

    if-nez v10, :cond_119

    .line 1896
    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1898
    :cond_119
    iget-object v10, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v10, v8}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    move-result v8

    if-eqz v8, :cond_13c

    .line 1899
    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v12, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v14, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    :cond_13c
    :goto_13c
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_76

    :cond_140
    if-eqz v3, :cond_14c

    if-eqz v5, :cond_14c

    .line 1906
    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1907
    iput v6, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    move v3, v6

    :cond_14c
    return v3

    :catchall_14d
    move-exception v0

    .line 1845
    :try_start_14e
    monitor-exit p2
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    throw v0
.end method

.method public final requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .registers 10

    .line 1784
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    .line 1796
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v0

    :cond_1d
    :goto_1d
    const-string/jumbo p2, "u"

    const-string v2, "ContentProviderHelper"

    if-nez v1, :cond_46

    .line 1803
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Instantiating a provider in package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires a permissions review"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1808
    :cond_46
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10800000

    .line 1809
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1810
    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1812
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v3, :cond_79

    .line 1813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Launching permission review for package "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_79
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1818
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p2, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    invoke-direct {p2, p4, v1, p1}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .registers 9

    .line 942
    :try_start_0
    check-cast p1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_f2

    if-eqz p1, :cond_ea

    const-string/jumbo v0, "unstableProviderDied: "

    .line 954
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_12

    .line 955
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_14

    :cond_12
    const-string v1, ""

    :goto_14
    const-wide/16 v2, 0x40

    .line 952
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 960
    :try_start_19
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_e5

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 961
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 962
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_df

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_e5

    if-nez v1, :cond_2d

    .line 1005
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 970
    :cond_2d
    :try_start_2d
    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 972
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_e5

    :try_start_3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v0, "ContentProviderHelper"

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unstableProviderDied: caller "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " says "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " died, but we don\'t agree"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_3a .. :try_end_66} :catchall_6d

    .line 1005
    :goto_66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_6d
    move-exception p1

    .line 976
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 980
    :cond_73
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_e5

    :try_start_76
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 981
    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, p1, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eq v4, v1, :cond_81

    .line 983
    monitor-exit v0

    goto :goto_66

    .line 986
    :cond_81
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_d7

    .line 987
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-nez v1, :cond_8c

    goto :goto_d7

    .line 994
    :cond_8c
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") early provider death"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 994
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_bf
    .catchall {:try_start_76 .. :try_end_bf} :catchall_d9

    .line 999
    :try_start_bf
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "unstable content provider"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_d2

    .line 1001
    :try_start_c7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1003
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_d9

    :try_start_cb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_e5

    .line 1005
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_d2
    move-exception p0

    .line 1001
    :try_start_d3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    throw p0

    .line 989
    :cond_d7
    :goto_d7
    monitor-exit v0

    goto :goto_66

    :catchall_d9
    move-exception p0

    .line 1003
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_d3 .. :try_end_db} :catchall_d9

    :try_start_db
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_e5

    :catchall_df
    move-exception p0

    .line 962
    :try_start_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    :try_start_e1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_e5

    :catchall_e5
    move-exception p0

    .line 1005
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1006
    throw p0

    .line 949
    :cond_ea
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 944
    :catch_f2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refContentProvider: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a ContentProviderConnection"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    .line 945
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
