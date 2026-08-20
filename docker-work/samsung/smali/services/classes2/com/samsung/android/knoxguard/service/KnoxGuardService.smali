.class public Lcom/samsung/android/knoxguard/service/KnoxGuardService;
.super Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.source "KnoxGuardService.java"


# static fields
.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final KNOXGUARD_SERVICE:Ljava/lang/String; = "knoxguard_service"

.field public static final LOG:Z = false

.field public static final SUCCESS:I

.field public static final TAG:Ljava/lang/String;

.field public static mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

.field public static mPreFix:Ljava/lang/String;

.field public static mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

.field public static mSettedInterface:Ljava/lang/String;

.field public static mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;


# instance fields
.field public mConnectivityManagerService:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mNetworkManagementService:Landroid/os/INetworkManagementService;

.field public mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "knox.guard"

    .line 44
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    .line 48
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    .line 49
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    .line 55
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 529
    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;-><init>(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    .line 59
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSupportKGOnSEC()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 62
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    .line 64
    :try_start_17
    new-instance p1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setKGVM(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    :try_end_23
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_17 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception p1

    .line 66
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_2e
    iget-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->registerReceiver(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->registerReceiver(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->setInitialState(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_44
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "KnoxGuard is unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getActionList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    return-object v0
.end method

.method public static getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .registers 1

    .line 490
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-object v0
.end method

.method public static setActionList(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 498
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    return-void
.end method

.method public static setKGVM(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    .registers 1

    .line 486
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-void
.end method

.method public static setPreFix(Ljava/lang/String;)V
    .registers 1

    .line 494
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    return-void
.end method

.method public static setSettedInterface(Ljava/lang/String;)V
    .registers 1

    .line 510
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    return-void
.end method

.method public static setSystemReceiver(Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;)V
    .registers 1

    .line 506
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    return-void
.end method


# virtual methods
.method public addPackagesToClearCacheBlockList(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 222
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call addPackagesToClearCacheBlockList"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToForceStopBlockList(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 215
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 216
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call addPackagesToForceStopBlockList"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowFirmwareRecovery(Z)Z
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 198
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call allowFirmwareRecovery"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowOTAUpgrade(Z)Z
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 204
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call allowOTAUpgrade"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowSafeMode(Z)Z
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 210
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call allowSafeMode"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bindToLockScreen()V
    .registers 3

    .line 473
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    if-nez v0, :cond_17

    .line 474
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "mKGVM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setKGVM(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V

    .line 477
    :cond_17
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V
    :try_end_1c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_1c} :catch_28
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    goto :goto_32

    :catchall_1d
    move-exception p0

    .line 481
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_28
    move-exception p0

    .line 479
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public callKGsv()V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 138
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "call Knox Guard sv"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 454
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p3, "call dump"

    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p3, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_10

    return-void

    .line 456
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    :try_start_28
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_63

    if-eqz p0, :cond_5a

    .line 462
    :goto_3a
    :try_start_3a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "data"

    .line 463
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4e

    goto :goto_3a

    :catchall_4e
    move-exception p1

    if-eqz p0, :cond_59

    .line 460
    :try_start_51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p0

    :try_start_56
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw p1

    :cond_5a
    if-eqz p0, :cond_5f

    .line 466
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_63

    .line 467
    :cond_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_63
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    throw p0
.end method

.method public generateHotpDHRequest()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientData()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .registers 3

    const-string v0, "connectivity"

    .line 127
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 129
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_16

    .line 130
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 133
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getHDMVersion()Ljava/lang/String;
    .registers 2

    .line 518
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "getHdmVersion() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHdmStatus()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHotpChallenge()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKGID()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKGPolicy()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKGServiceVersion()I
    .registers 1

    const p0, 0xa21fe81

    return p0
.end method

.method public getLockAction()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_12

    const-string v0, "network_management"

    .line 118
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 120
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 123
    :cond_12
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .registers 11

    const-string v0, "/sys/block/mmcblk0/device/cid"

    const-string v1, "/sys/block/mmcblk0/device/unique_number"

    const-string v2, "/sys/class/sec/mmc/un"

    const-string v3, "/sys/class/scsi_host/host0/unique_number"

    const-string v4, "/sys/class/sec/ufs/un"

    .line 307
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 309
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v5, "call getPBAUniqueNumber"

    invoke-static {p0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 315
    :try_start_1c
    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_129

    const-string v7, ""

    const/4 v8, 0x1

    if-ne p0, v8, :cond_2b

    .line 316
    :try_start_25
    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 317
    :cond_2b
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v8, :cond_37

    .line 318
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 319
    :cond_37
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v8, :cond_43

    .line 320
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 321
    :cond_43
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v8, :cond_4f

    .line 322
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 324
    :cond_4f
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v8, :cond_125

    .line 326
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/sys/block/mmcblk0/device/name"

    .line 327
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_116

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 332
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_c4

    const-string v9, "15"

    .line 334
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 335
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    :cond_87
    const-string v2, "02"

    .line 336
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_be

    const-string v2, "45"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    goto :goto_be

    :cond_99
    const-string v2, "11"

    .line 338
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b9

    const-string v2, "90"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    goto :goto_b9

    :cond_aa
    const-string v2, "FE"

    .line 340
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x4

    const/4 v3, 0x6

    .line 341
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    .line 339
    :cond_b9
    :goto_b9
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    :cond_be
    :goto_be
    const/4 v2, 0x5

    .line 337
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    :cond_c4
    move-object v0, v7

    .line 344
    :goto_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x12

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_117

    :cond_116
    move-object p0, v1

    :goto_117
    if-eqz p0, :cond_121

    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_11d
    .catchall {:try_start_25 .. :try_end_11d} :catchall_129

    .line 364
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_121
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :cond_125
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_129
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    throw p0
.end method

.method public getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 636
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 638
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTAError()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getTAInfo(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTAState()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getTAStateSetError(Z)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public isSkipSupportContainerSupported()Z
    .registers 2

    .line 301
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "call isSkipSupportContainerSupported"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSkipSupportContainerSupported()Z

    move-result p0

    return p0
.end method

.method public isVpnExceptionRequired()Z
    .registers 4

    .line 369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 371
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 373
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "Checking"

    .line 374
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "Completed"

    .line 375
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_2a

    if-eqz p0, :cond_23

    goto :goto_28

    :cond_23
    const/4 p0, 0x1

    .line 380
    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    goto :goto_24

    :catchall_2a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    throw p0
.end method

.method public lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .registers 9

    const/4 p0, -0x1

    return p0
.end method

.method public provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->unRegisterIntent()V

    .line 145
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setSystemReceiver(Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;)V

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setPreFix(Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setActionList(Ljava/util/List;)V

    .line 151
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 152
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_21

    .line 154
    :cond_31
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "KG registerIntent"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .registers 8

    .line 75
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    .line 77
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x0

    const-string/jumbo v5, "package"

    if-eqz v1, :cond_26

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 79
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_46

    .line 82
    :cond_26
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kgclient"

    .line 83
    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 88
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    :goto_46
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x5f5e101

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 94
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v5, "com.android.systemui"

    .line 97
    invoke-virtual {p0, v5, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 103
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_2c

    const-string p0, "Locked"

    .line 107
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 108
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    new-instance p2, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {p2}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    sput-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 110
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const p2, 0x5f5e101

    .line 111
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 112
    sget-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2c
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 258
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call removeActiveAdmin"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_23

    .line 260
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 261
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_23
    return-void
.end method

.method public final resetKnoxGuardExemptRule(I)V
    .registers 5

    .line 442
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 443
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKnoxGuardExemptRule - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    const/4 p0, 0x0

    .line 445
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_46

    :catch_2b
    move-exception p0

    .line 448
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method

.method public resetRPMB()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public resetRPMB2(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 277
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call revokeRuntimePermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_19
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 249
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call setActiveAdmin"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_24

    .line 251
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    :cond_24
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 192
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call setAdminRemovable"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAirplaneMode(Z)V
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 234
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call setAirplaneMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 238
    :try_start_12
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 239
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_25
    .catchall {:try_start_12 .. :try_end_1f} :catchall_23

    .line 243
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_41

    :catchall_23
    move-exception p0

    goto :goto_42

    :catch_25
    move-exception p0

    .line 241
    :try_start_26
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_23

    goto :goto_1f

    :goto_41
    return-void

    .line 243
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw p0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 228
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string p1, "call setApplicationUninstallationDisabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckingState()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public setClientData(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public setClientHealthOK()V
    .registers 1

    return-void
.end method

.method public setKnoxGuardExemptRule(Z)V
    .registers 10

    const-string v0, ", "

    .line 416
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-wide/16 v2, -0x1

    .line 420
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 421
    invoke-virtual {p0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->resetKnoxGuardExemptRule(I)V

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-nez v4, :cond_34

    .line 425
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setKnoxGuardExemptRule - There is no active network"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_73
    .catchall {:try_start_f .. :try_end_30} :catchall_71

    .line 436
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 428
    :cond_34
    :try_start_34
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxGuardExemptRule - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8e

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, v1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    .line 431
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_70} :catch_73
    .catchall {:try_start_34 .. :try_end_70} :catchall_71

    goto :goto_8e

    :catchall_71
    move-exception p0

    goto :goto_92

    :catch_73
    move-exception p0

    .line 434
    :try_start_74
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_71

    .line 436
    :cond_8e
    :goto_8e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_92
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    throw p0
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .registers 31

    move-object/from16 v0, p0

    .line 285
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 287
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setRemoteLockToLockscreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    invoke-static/range {v3 .. v16}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .registers 33

    move-object/from16 v0, p0

    .line 293
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 295
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setRemoteLockToLockscreen with skipSupportContainer"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v3 .. v17}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 267
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call setRuntimePermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_19
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .registers 2

    .line 403
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    const-string v0, ""

    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "Checking"

    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "Completed"

    .line 407
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method public showInstallmentStatus()Z
    .registers 4

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 387
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    const-string v2, ""

    .line 390
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "Prenormal"

    .line 391
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "Checking"

    .line 392
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "Completed"

    .line 393
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_34

    if-eqz p0, :cond_2d

    goto :goto_32

    :cond_2d
    const/4 p0, 0x1

    .line 398
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x0

    goto :goto_2e

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    throw p0
.end method

.method public unRegisterIntent()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 162
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->unRegisterIntent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 165
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->setActionList(Ljava/util/List;)V

    .line 166
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    if-eqz v0, :cond_28

    .line 168
    :try_start_18
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    goto :goto_28

    :catchall_1e
    move-exception p0

    .line 170
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_28
    :goto_28
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "KG unRegisterIntent"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unRegisterIntent(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_a

    const-string v0, "Locked"

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 179
    :cond_a
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    if-eqz p1, :cond_21

    .line 181
    :try_start_e
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 182
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    goto :goto_21

    :catchall_17
    move-exception p0

    .line 184
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void
.end method

.method public unlockScreen()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public verifyCompleteToken(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public verifyHOTPPin(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public verifyHOTPsecret(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public verifyHotpChallenge(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public verifyKgRot()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method
