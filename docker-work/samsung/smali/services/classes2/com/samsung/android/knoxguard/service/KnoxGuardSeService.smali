.class public Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;
.super Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.source "KnoxGuardSeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    }
.end annotation


# static fields
.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final KG_FAILCOUNT_FOR_DELAY:I = 0x1

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

.field public static mBundle:Landroid/os/Bundle;

.field public static mClientHealth:I

.field public static mClientName:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mEmailAddress:Ljava/lang/String;

.field public static mFailureCount:I

.field public static mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public static mMessage:Ljava/lang/String;

.field public static mPhoneNumber:Ljava/lang/String;

.field public static mPreFix:Ljava/lang/String;

.field public static mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

.field public static mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field public static mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

.field public static mSettedInterface:Ljava/lang/String;

.field public static mSkipPin:Z

.field public static mSkipSupport:Z

.field public static mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

.field public static mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;


# instance fields
.field public mConnectivityManagerService:Landroid/net/ConnectivityManager;

.field public mNetworkManagementService:Landroid/os/INetworkManagementService;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmFailureCount()I
    .registers 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smsetRemoteLockToLockscreen(Z)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smunlockCompleted()V
    .registers 0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unlockCompleted()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "knox.guard"

    .line 54
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPreFix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mActionList:Ljava/util/List;

    .line 58
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 59
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 66
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    const/4 v1, -0x1

    .line 68
    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 69
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 71
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    .line 73
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    .line 74
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    .line 77
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 79
    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    .line 80
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 564
    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$1;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 83
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSupportKGOnSEC()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 86
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setContext(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAState()I

    move-result p1

    .line 88
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;)V

    .line 89
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;I)V

    .line 90
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerAlarmReceiver(Landroid/content/Context;)V

    .line 91
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->setInitialState(Landroid/content/Context;I)V

    return-void

    .line 84
    :cond_2a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "KnoxGuard is unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bindAndSetToLockScreen()V
    .registers 3

    .line 528
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "bindAndSetToLockScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :try_start_7
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_17

    const-string v0, "lock_settings"

    .line 532
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 534
    :cond_17
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    const/4 v0, 0x1

    .line 535
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_23} :catch_26
    .catchall {:try_start_7 .. :try_end_23} :catchall_24

    goto :goto_2a

    :catchall_24
    move-exception v0

    .line 539
    throw v0

    :catch_26
    move-exception v0

    .line 537
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public static deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p1, "Deserialize inputstream failed IO exception"

    const-string v0, "Deserialize failed IO exception"

    const/4 v1, 0x0

    if-eqz p0, :cond_82

    .line 719
    array-length v2, p0

    if-nez v2, :cond_c

    goto/16 :goto_82

    .line 723
    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_55
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_41
    .catchall {:try_start_c .. :try_end_11} :catchall_3c

    .line 724
    :try_start_11
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_16} :catch_39
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_36
    .catchall {:try_start_11 .. :try_end_16} :catchall_31

    .line 725
    :try_start_16
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1a} :catch_2f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_2d
    .catchall {:try_start_16 .. :try_end_1a} :catchall_6a

    .line 733
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_23

    .line 735
    :catch_1e
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :goto_23
    :try_start_23
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_69

    .line 740
    :catch_27
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :catch_2d
    move-exception v3

    goto :goto_44

    :catch_2f
    move-exception v3

    goto :goto_58

    :catchall_31
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_6b

    :catch_36
    move-exception v3

    move-object p0, v1

    goto :goto_44

    :catch_39
    move-exception v3

    move-object p0, v1

    goto :goto_58

    :catchall_3c
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_6b

    :catch_41
    move-exception v3

    move-object p0, v1

    move-object v2, p0

    .line 730
    :goto_44
    :try_start_44
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_6a

    if-eqz v2, :cond_52

    .line 733
    :try_start_49
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_52

    .line 735
    :catch_4d
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    if-eqz p0, :cond_69

    goto :goto_23

    :catch_55
    move-exception v3

    move-object p0, v1

    move-object v2, p0

    .line 728
    :goto_58
    :try_start_58
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6a

    if-eqz v2, :cond_66

    .line 733
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_66

    .line 735
    :catch_61
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    if-eqz p0, :cond_69

    goto :goto_23

    :cond_69
    :goto_69
    return-object v1

    :catchall_6a
    move-exception v1

    :goto_6b
    if-eqz v2, :cond_76

    .line 733
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_76

    .line 735
    :catch_71
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    :goto_76
    if-eqz p0, :cond_81

    .line 738
    :try_start_78
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_81

    .line 740
    :catch_7c
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_81
    :goto_81
    throw v1

    :cond_82
    :goto_82
    return-object v1
.end method

.method public static getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)[B
    .registers 2

    const/4 v0, 0x0

    .line 1170
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)[B
    .registers 2

    if-eqz p1, :cond_5

    .line 1175
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V

    :cond_5
    if-eqz p0, :cond_e

    .line 1177
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p1, :cond_e

    .line 1178
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getClientHealth()I
    .registers 3

    .line 1214
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientHealth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    return v0
.end method

.method public static getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I
    .registers 2

    const/4 v0, 0x1

    .line 1144
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    move-result p0

    return p0
.end method

.method public static getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I
    .registers 3

    if-eqz p1, :cond_5

    .line 1149
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V

    :cond_5
    if-eqz p0, :cond_12

    .line 1151
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-eqz p1, :cond_f

    const/16 v0, 0x303

    if-ne p1, v0, :cond_12

    .line 1154
    :cond_f
    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public static getKGLockObject()Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    .registers 5

    .line 690
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "getKGVaultData"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 695
    :try_start_8
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)[B

    move-result-object v2

    if-nez v2, :cond_13

    return-object v1

    .line 700
    :cond_13
    array-length v3, v2

    if-nez v3, :cond_1c

    const-string v2, "No data"

    .line 701
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 705
    :cond_1c
    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    invoke-static {v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_26

    move-object v1, v0

    goto :goto_3d

    :catchall_26
    move-exception v0

    .line 708
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKGVaultData error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-object v1
.end method

.method public static getLockoutDelayTime(I)J
    .registers 3

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const-wide/32 v0, 0xea60

    goto :goto_28

    :cond_7
    const/4 v0, 0x7

    if-ne p0, v0, :cond_e

    const-wide/32 v0, 0x493e0

    goto :goto_28

    :cond_e
    const/16 v0, 0x8

    if-ne p0, v0, :cond_16

    const-wide/32 v0, 0xdbba0

    goto :goto_28

    :cond_16
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1e

    const-wide/32 v0, 0x36ee80

    goto :goto_28

    :cond_1e
    const/16 v0, 0xa

    if-lt p0, v0, :cond_26

    const-wide/32 v0, 0x5265c00

    goto :goto_28

    :cond_26
    const-wide/16 v0, 0x0

    :goto_28
    return-wide v0
.end method

.method public static getRemoteLockInfoForRetry()Lcom/android/internal/widget/RemoteLockInfo;
    .registers 3

    .line 1245
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteLockInfoForRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    return-object v0
.end method

.method public static getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;
    .registers 2

    .line 1161
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V

    .line 1162
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    if-eqz p0, :cond_10

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_10

    .line 1163
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->getStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initializeFailureCount()V
    .registers 4

    const/4 v0, 0x3

    .line 618
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_2b

    :catchall_10
    move-exception v0

    .line 621
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeFailureCount error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_2b
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailureCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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

    .line 756
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mActionList:Ljava/util/List;

    return-void
.end method

.method public static setBundle(Landroid/os/Bundle;)V
    .registers 1

    .line 1131
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static setClientHealth(I)V
    .registers 4

    .line 1219
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientHealth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    return-void
.end method

.method public static setClientName(Ljava/lang/String;)V
    .registers 1

    .line 776
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    .line 748
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setEmailAddress(Ljava/lang/String;)V
    .registers 1

    .line 788
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public static setFailureCount(I)V
    .registers 1

    .line 796
    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    return-void
.end method

.method public static setMessage(Ljava/lang/String;)V
    .registers 1

    .line 768
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static setPhoneNumber(Ljava/lang/String;)V
    .registers 1

    .line 780
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public static setPreFix(Ljava/lang/String;)V
    .registers 1

    .line 752
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPreFix:Ljava/lang/String;

    return-void
.end method

.method public static setRemoteLockToLockscreen(Z)V
    .registers 10

    .line 627
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRemoteLockToLockscreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :try_start_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_18

    const-string v1, "lock_settings"

    .line 631
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 634
    :cond_18
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    if-gez v1, :cond_1f

    .line 635
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->initializeFailureCount()V

    .line 637
    :cond_1f
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getLockoutDelayTime(I)J

    move-result-wide v1

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kgvDelayTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getKGLockObject()Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 643
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setClientName(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setPhoneNumber(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setEmailAddress(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setMessage(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getSkipPin()Z

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipPin(Z)V

    .line 648
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getSkipSupport()Z

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipSupport(Z)V

    .line 649
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setBundle(Landroid/os/Bundle;)V

    .line 655
    :cond_70
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isTabletDevice()Z

    move-result v0
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_74} :catch_128

    const-string v3, "Device Services"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_95

    .line 656
    :try_start_7a
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v6, 0x1040683

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 657
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v7, 0x1040681

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_af

    .line 659
    :cond_95
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v6, 0x1040682

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v7, 0x104067f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 663
    :goto_af
    new-instance v6, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v7, 0x3

    invoke-direct {v6, v7, p0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 664
    sget-object v7, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_b7} :catch_128

    const-string v8, ""

    if-eqz v7, :cond_c4

    :try_start_bb
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c2

    goto :goto_c4

    :cond_c2
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    :cond_c4
    :goto_c4
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 665
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    if-nez v6, :cond_cd

    move-object v6, v8

    :cond_cd
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 666
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    if-nez v6, :cond_d6

    move-object v6, v8

    :cond_d6
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 667
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    if-eqz v6, :cond_e7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e5

    goto :goto_e7

    :cond_e5
    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    :cond_e7
    :goto_e7
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 668
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 669
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 670
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    .line 671
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    .line 672
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    .line 673
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    .line 676
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/widget/ILockSettings;->setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z

    move-result v1

    if-eqz p0, :cond_12c

    if-nez v1, :cond_12c

    .line 679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 680
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->startRetryLockAlarm(Landroid/content/Context;Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 681
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_127} :catch_128

    goto :goto_12c

    :catch_128
    move-exception p0

    .line 685
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12c
    :goto_12c
    return-void
.end method

.method public static setRetryRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .registers 4

    .line 1240
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRetryRemoteLockInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    return-void
.end method

.method public static setSettedInterface(Ljava/lang/String;)V
    .registers 1

    .line 764
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    return-void
.end method

.method public static setSkipPin(Z)V
    .registers 1

    .line 772
    sput-boolean p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    return-void
.end method

.method public static setSkipSupport(Z)V
    .registers 1

    .line 784
    sput-boolean p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    return-void
.end method

.method public static setSystemReceiver(Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;)V
    .registers 1

    .line 760
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    return-void
.end method

.method public static setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V
    .registers 1

    .line 792
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    return-void
.end method

.method public static unbindFromLockScreen()V
    .registers 3

    .line 544
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindFromLockScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :try_start_8
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_18

    const-string v0, "lock_settings"

    .line 548
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 550
    :cond_18
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    const/4 v0, 0x0

    .line 551
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_24} :catch_27
    .catchall {:try_start_8 .. :try_end_24} :catchall_25

    goto :goto_2b

    :catchall_25
    move-exception v0

    .line 555
    throw v0

    :catch_27
    move-exception v0

    .line 553
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public static unlockCompleted()V
    .registers 5

    .line 901
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnlockedByPasscode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 903
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.kgclient.android.intent.action.MANUAL_UNLOCK"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 260
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 261
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

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

    .line 254
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 255
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call addPackagesToForceStopBlockList"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowFirmwareRecovery(Z)Z
    .registers 2

    .line 236
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 237
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call allowFirmwareRecovery"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowOTAUpgrade(Z)Z
    .registers 2

    .line 242
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 243
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call allowOTAUpgrade"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public allowSafeMode(Z)Z
    .registers 2

    .line 248
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 249
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call allowSafeMode"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bindToLockScreen()V
    .registers 1

    .line 524
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    return-void
.end method

.method public callKGsv()V
    .registers 2

    .line 176
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 177
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call Knox Guard sv"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 506
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call dump"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    .line 508
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    :try_start_28
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

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

    .line 514
    :goto_3a
    :try_start_3a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "data"

    .line 515
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

    .line 512
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

    .line 518
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_63

    .line 519
    :cond_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_63
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    throw p0
.end method

.method public generateHotpDHRequest()Ljava/lang/String;
    .registers 2

    .line 974
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 975
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "generateHotpDHRequest"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientData()Ljava/lang/String;
    .registers 2

    .line 1036
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1037
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getClientData"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .registers 3

    .line 165
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call getConnectivityManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "connectivity"

    .line 166
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 168
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1d

    .line 169
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 172
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getHDMVersion()Ljava/lang/String;
    .registers 2

    .line 909
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getHdmVersion() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHdmStatus()Ljava/lang/String;
    .registers 2

    .line 1078
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1079
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getHdmStatus"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getHdmStatusRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHotpChallenge()Ljava/lang/String;
    .registers 2

    .line 980
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 981
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getHotpChallenge"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKGID()Ljava/lang/String;
    .registers 2

    .line 1048
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1049
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getKGID"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKGPolicy()Ljava/lang/String;
    .registers 2

    .line 949
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 950
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getKGPolicy"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKGServiceVersion()I
    .registers 1

    const p0, 0xa21fe81

    return p0
.end method

.method public getLockAction()Ljava/lang/String;
    .registers 2

    .line 1030
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1031
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getLockAction"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .line 154
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call getNetworkManagementService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_19

    const-string v0, "network_management"

    .line 156
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 158
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 161
    :cond_19
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1185
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1186
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "getNonce"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1c

    if-nez p2, :cond_13

    goto :goto_1c

    .line 1193
    :cond_13
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_1c
    const-string p1, "getNonce null parameter!"

    .line 1189
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .registers 11

    const-string p0, "/sys/block/mmcblk0/device/cid"

    const-string v0, "/sys/block/mmcblk0/device/unique_number"

    const-string v1, "/sys/class/sec/mmc/un"

    const-string v2, "/sys/class/scsi_host/host0/unique_number"

    const-string v3, "/sys/class/sec/ufs/un"

    .line 346
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v4, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 348
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v5, "call getPBAUniqueNumber"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 354
    :try_start_1c
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_129

    const-string v7, ""

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2b

    .line 355
    :try_start_25
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 356
    :cond_2b
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v8, :cond_37

    .line 357
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 358
    :cond_37
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v8, :cond_43

    .line 359
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 360
    :cond_43
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v8, :cond_4f

    .line 361
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_117

    .line 363
    :cond_4f
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_125

    .line 365
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/sys/block/mmcblk0/device/name"

    .line 366
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
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

    .line 371
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_c4

    const-string v9, "15"

    .line 373
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 374
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    :cond_87
    const-string v2, "02"

    .line 375
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_be

    const-string v2, "45"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    goto :goto_be

    :cond_99
    const-string v2, "11"

    .line 377
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b9

    const-string v2, "90"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    goto :goto_b9

    :cond_aa
    const-string v2, "FE"

    .line 379
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/4 v2, 0x4

    const/4 v3, 0x6

    .line 380
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    .line 378
    :cond_b9
    :goto_b9
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    :cond_be
    :goto_be
    const/4 v2, 0x5

    .line 376
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    :cond_c4
    move-object v0, v7

    .line 383
    :goto_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
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

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
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

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_11d
    .catchall {:try_start_25 .. :try_end_11d} :catchall_129

    .line 403
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_121
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :cond_125
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_129
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    throw p0
.end method

.method public getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1121
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1123
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTAError()I
    .registers 2

    .line 1135
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1137
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    if-eqz p0, :cond_e

    .line 1138
    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public getTAInfo(I)Ljava/lang/String;
    .registers 4

    .line 1197
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1198
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTAInfo: infoFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTAState()I
    .registers 2

    const/4 v0, 0x0

    .line 921
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAStateSetError(Z)I

    move-result p0

    return p0
.end method

.method public getTAStateSetError(Z)I
    .registers 4

    .line 926
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    move-result p0

    .line 927
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTAState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    if-ltz p0, :cond_23

    if-le p0, p1, :cond_24

    :cond_23
    move p0, p1

    :cond_24
    return p0
.end method

.method public final isKgOtpBitStateEnabled()Z
    .registers 4

    const-string/jumbo p0, "ro.boot.kg.bit"

    const-string v0, "FF"

    .line 486
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 487
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKgOtpBitStateEnabled, KG Bit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "01"

    .line 488
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSkipSupportContainerSupported()Z
    .registers 2

    .line 340
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call isSkipSupportContainerSupported"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSkipSupportContainerSupported()Z

    move-result p0

    return p0
.end method

.method public isVpnExceptionRequired()Z
    .registers 8

    .line 408
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "knox.kg.state"

    .line 410
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v5, v3, v4

    invoke-static {v2, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 413
    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    const/4 v6, 0x2

    aget-object v6, v3, v6

    .line 414
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    const/4 v6, 0x3

    aget-object v6, v3, v6

    .line 415
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    aget-object v3, v3, v4

    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->isKgOtpBitStateEnabled()Z

    move-result p0

    if-eqz p0, :cond_39

    :cond_38
    const/4 v5, 0x1

    .line 420
    :cond_39
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call isVpnExceptionRequired, state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , result : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_5b

    .line 423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_5b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 424
    throw p0
.end method

.method public lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .registers 10

    .line 1000
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1001
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "lockScreen"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setClientName(Ljava/lang/String;)V

    .line 1004
    invoke-static {p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setPhoneNumber(Ljava/lang/String;)V

    .line 1005
    invoke-static {p4}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setEmailAddress(Ljava/lang/String;)V

    .line 1006
    invoke-static {p5}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setMessage(Ljava/lang/String;)V

    .line 1007
    invoke-static {p6}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipPin(Z)V

    .line 1008
    invoke-static {p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSkipSupport(Z)V

    .line 1009
    invoke-static {p8}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setBundle(Landroid/os/Bundle;)V

    .line 1012
    invoke-static/range {p1 .. p8}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    .line 1013
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 1014
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    return p0
.end method

.method public final makeRotReturn(II)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 1127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "<%d>:<%d>"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1203
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1204
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "provisionCert"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1206
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_31

    .line 1210
    :cond_28
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0

    :cond_31
    :goto_31
    const-string/jumbo p1, "provisionCert failed: input null"

    .line 1207
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final registerAlarmReceiver(Landroid/content/Context;)V
    .registers 4

    .line 140
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call registerAlarmReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->needClientHealthCheck()Z

    move-result p0

    if-nez p0, :cond_e

    return-void

    .line 144
    :cond_e
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.knoxguard.RETRY_LOCK"

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;-><init>()V

    const/4 v1, 0x4

    .line 149
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
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

    .line 181
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unRegisterIntent()V

    .line 184
    new-instance p0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSystemReceiver(Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;)V

    .line 185
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setPreFix(Ljava/lang/String;)V

    .line 188
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setActionList(Ljava/util/List;)V

    .line 190
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 191
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_21

    .line 193
    :cond_31
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "KG registerIntent"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .registers 8

    .line 96
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call registerReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;-><init>()V

    .line 99
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x0

    const-string/jumbo v5, "package"

    if-eqz v1, :cond_2d

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 101
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4d

    .line 104
    :cond_2d
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kgclient"

    .line 105
    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 107
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 109
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 110
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    :goto_4d
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 114
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x5f5e101

    .line 115
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v5, "com.android.systemui"

    .line 119
    invoke-virtual {p0, v5, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 125
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;I)V
    .registers 4

    .line 129
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call registerReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    if-ne p0, p2, :cond_2c

    .line 130
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 131
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    new-instance p2, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-direct {p2}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;-><init>()V

    sput-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 133
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const p2, 0x5f5e101

    .line 134
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 135
    sget-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2c
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 3

    .line 296
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 297
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call removeActiveAdmin"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_23

    .line 299
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 300
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_23
    return-void
.end method

.method public final resetKnoxGuardExemptRule(I)V
    .registers 5

    .line 492
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call resetKnoxGuardExemptRule"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_7
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKnoxGuardExemptRule - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    const/4 p0, 0x0

    .line 497
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_30

    goto :goto_4b

    :catch_30
    move-exception p0

    .line 500
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

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

    :cond_4b
    :goto_4b
    return-void
.end method

.method public resetRPMB()I
    .registers 2

    .line 1054
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1055
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetRPMB"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1057
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    .line 1058
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public resetRPMB2(Ljava/lang/String;)I
    .registers 3

    .line 1063
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1064
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetRPMB2"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 314
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 316
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call revokeRuntimePermission"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 319
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_19
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .registers 3

    .line 287
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 288
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call setActiveAdmin"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_24

    .line 290
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    :cond_24
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .registers 2

    .line 230
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 231
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call setAdminRemovable"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAirplaneMode(Z)V
    .registers 6

    .line 272
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 273
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call setAirplaneMode"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 277
    :try_start_12
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 278
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_25
    .catchall {:try_start_12 .. :try_end_1f} :catchall_23

    .line 282
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_41

    :catchall_23
    move-exception p0

    goto :goto_42

    :catch_25
    move-exception p0

    .line 280
    :try_start_26
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

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

    .line 282
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw p0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .registers 2

    .line 266
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 267
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string p1, "call setApplicationUninstallationDisabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckingState()I
    .registers 2

    .line 1069
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1070
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setCheckingState"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    .line 1073
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public setClientData(Ljava/lang/String;)I
    .registers 3

    .line 1042
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1043
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setClientData"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0
.end method

.method public setClientHealthOK()V
    .registers 3

    .line 1224
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1225
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setClientHealthOK"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    .line 1228
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientHealth:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    .line 1230
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object p0

    .line 1231
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    if-eqz p0, :cond_29

    const/4 p0, 0x0

    .line 1232
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V

    :cond_29
    const/4 p0, 0x1

    .line 1236
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setClientHealth(I)V

    return-void
.end method

.method public setKnoxGuardExemptRule(Z)V
    .registers 10

    const-string v0, ", "

    .line 460
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v2, "call setKnoxGuardExemptRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-wide/16 v3, -0x1

    .line 465
    :try_start_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 466
    invoke-virtual {p0, v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->resetKnoxGuardExemptRule(I)V

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    .line 468
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    if-nez v5, :cond_39

    const-string/jumbo p0, "setKnoxGuardExemptRule - There is no active network"

    .line 470
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_35} :catch_76
    .catchall {:try_start_16 .. :try_end_35} :catchall_74

    .line 481
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 473
    :cond_39
    :try_start_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxGuardExemptRule - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_91

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, v2}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    .line 476
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setSettedInterface(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_73} :catch_76
    .catchall {:try_start_39 .. :try_end_73} :catchall_74

    goto :goto_91

    :catchall_74
    move-exception p0

    goto :goto_95

    :catch_76
    move-exception p0

    .line 479
    :try_start_77
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

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
    :try_end_91
    .catchall {:try_start_77 .. :try_end_91} :catchall_74

    .line 481
    :cond_91
    :goto_91
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_95
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    throw p0
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .registers 30

    .line 324
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 326
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call setRemoteLockToLockscreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-static/range {v2 .. v15}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .registers 32

    .line 332
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 334
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call setRemoteLockToLockscreen with skipSupportContainer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-static/range {v2 .. v16}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 305
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 306
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call setRuntimePermission"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 309
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_19
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .registers 5

    .line 446
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    const-string v2, "knox.kg.state"

    invoke-static {v2, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 449
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v3, 0x2

    aget-object v3, v0, v3

    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v3, 0x3

    aget-object v0, v0, v3

    .line 451
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->isKgOtpBitStateEnabled()Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    const/4 v2, 0x1

    .line 455
    :cond_2d
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call shouldBlockCustomRom, state : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public showInstallmentStatus()Z
    .registers 7

    .line 428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "knox.kg.state"

    .line 430
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v2, v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 433
    aget-object v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    const/4 v5, 0x3

    aget-object v3, v3, v5

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 435
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->isKgOtpBitStateEnabled()Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_28
    const/4 v4, 0x1

    .line 438
    :cond_29
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call showInstallmentStatus, state : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , result : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_4b

    .line 441
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_4b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    throw p0
.end method

.method public unRegisterIntent()V
    .registers 3

    .line 199
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAState()I

    move-result v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unRegisterIntent(I)V

    const/4 p0, 0x0

    .line 204
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setActionList(Ljava/util/List;)V

    .line 205
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    if-eqz p0, :cond_26

    .line 207
    :try_start_16
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_26

    :catchall_1c
    move-exception p0

    .line 209
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    :cond_26
    :goto_26
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "KG unRegisterIntent"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unRegisterIntent(I)V
    .registers 3

    const/4 p0, 0x3

    if-eq p0, p1, :cond_1a

    .line 218
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    if-eqz p0, :cond_1a

    .line 220
    :try_start_7
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 221
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_1a

    :catchall_10
    move-exception p0

    .line 223
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method

.method public unlockScreen()I
    .registers 2

    .line 1019
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1020
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unlockScreen"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unbindFromLockScreen()V

    .line 1023
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    const/4 v0, 0x0

    .line 1024
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setFailureCount(I)V

    .line 1025
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public verifyCompleteToken(Ljava/lang/String;)I
    .registers 4

    .line 963
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 964
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    .line 965
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyCompleteToken result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    if-nez p0, :cond_2e

    .line 968
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unbindFromLockScreen()V

    :cond_2e
    return p0
.end method

.method public verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 955
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 956
    invoke-static {p1, p2, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    .line 957
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "verifyHOTPDHChallenge result : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return p0
.end method

.method public verifyHOTPPin(Ljava/lang/String;)I
    .registers 3

    .line 936
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 937
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPPin"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setFailureCount(I)V

    .line 939
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    return p0
.end method

.method public verifyHOTPsecret(Ljava/lang/String;)I
    .registers 3

    .line 943
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 944
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPsecret"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    return p0
.end method

.method public verifyKgRot()Ljava/lang/String;
    .registers 6

    .line 1084
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1085
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "verifyKgRot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1088
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1092
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "com.samsung.android.kgclient"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_72

    .line 1096
    :cond_52
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_61

    const/16 v1, 0x1772

    .line 1098
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_78

    .line 1099
    :cond_61
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_70

    const/16 v1, 0x1771

    .line 1101
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_78

    :cond_70
    const/4 v2, 0x1

    goto :goto_79

    :cond_72
    :goto_72
    const/16 v1, 0x1770

    .line 1095
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object v1

    :goto_78
    move v2, v0

    :goto_79
    if-eqz v2, :cond_93

    .line 1107
    :try_start_7b
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object v1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_83} :catch_84

    goto :goto_93

    :catch_84
    move-exception v1

    const/16 v2, 0x1773

    .line 1110
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    move-result-object p0

    .line 1112
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v2, "Error verifyKgRot - "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p0

    .line 1116
    :cond_93
    :goto_93
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 994
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 995
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyPolicy"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 986
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knoxguard.STATUS"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 987
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyRegistrationInfo"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object p0

    .line 989
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    return-object p0
.end method
