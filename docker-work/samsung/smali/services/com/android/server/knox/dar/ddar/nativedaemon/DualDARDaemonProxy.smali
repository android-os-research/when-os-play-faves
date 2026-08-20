.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;
    }
.end annotation


# static fields
.field public static final CLEAR_APP_DATA:Ljava/lang/String; = "CLEAR_APP_DATA"

.field public static final CLEAR_SECRET:Ljava/lang/String; = "CLEAR_SECRET"

.field public static final DATA_USER_CE_PATH:Ljava/lang/String; = "/data/user"

.field public static final DATA_USER_DE_PATH:Ljava/lang/String; = "/data/user_de"

.field public static final DE_ACCESS_RESTRICTION_POLICY:I = 0x9

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final FS_DUMPSTATE_PATH:Ljava/lang/String; = "/data/log/ddar_log.txt"

.field public static final GET_CLIENTLIB_VERSION:Ljava/lang/String; = "GET_CLIENTLIB_VERSION"

.field public static final LOAD_CLIENT_LIBRARY:Ljava/lang/String; = "LOAD_CLIENT_LIBRARY"

.field public static final NUMBER_OF_THREADS:I = 0x10

.field public static final PROPERTY_DDAR_DAEMON_CONTROL:Ljava/lang/String; = "persist.sys.knox.dualdard"

.field public static final PUSH_SECRET:Ljava/lang/String; = "PUSH_SECRET"

.field public static final SET_DUALDAR_POLICY_MANAGED_DEVICE:Ljava/lang/String; = "SET_DUALDAR_DO_POLICY"

.field public static final SET_DUALDAR_POLICY_MANAGED_PROFILE:Ljava/lang/String; = "SET_DUALDAR_POLICY"

.field public static final SET_EVICTION:Ljava/lang/String; = "SET_EVICTION"

.field public static final START_CLIENT_LIBRARY:Ljava/lang/String; = "START_CLIENT_LIBRARY"

.field public static final START_DAEMON:Ljava/lang/String; = "START_DAEMON"

.field public static final STOP_DAEMON:Ljava/lang/String; = "STOP_DAEMON"

.field public static final TAG:Ljava/lang/String; = "DualDARDaemonProxy"

.field public static final UNLOAD_CLIENT_LIBRARY:Ljava/lang/String; = "UNLOAD_CLIENT_LIBRARY"

.field public static final ZIPPED_OVERLAY_SUPPORT:Z = true

.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# instance fields
.field public isDaemonConnectionFailed:Z

.field public mAm:Landroid/app/ActivityManager;

.field public final mBlockedClearablePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

.field public mConnectorThread:Ljava/lang/Thread;

.field public final mDualDARDOPolicyPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 98
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 99
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 105
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "DualDARDaemonProxy() called"

    .line 115
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    sput-object p1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 118
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    :cond_38
    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 764
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 765
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_29

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 766
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 768
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "DualDARDaemonProxy"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 859
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_72
    .catchall {:try_start_4 .. :try_end_d} :catchall_6f

    .line 862
    :try_start_d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 863
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_6b
    .catchall {:try_start_d .. :try_end_16} :catchall_67

    .line 865
    :try_start_16
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_63
    .catchall {:try_start_16 .. :try_end_20} :catchall_5f

    .line 867
    :try_start_20
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    :goto_24
    if-eqz p0, :cond_3c

    const/16 v1, 0x400

    new-array v3, v1, [B

    if-le p0, v1, :cond_32

    add-int/lit16 p0, p0, -0x400

    move v5, v1

    move v1, p0

    move p0, v5

    goto :goto_33

    :cond_32
    move v1, v2

    .line 880
    :goto_33
    invoke-virtual {p1, v3, v2, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    .line 881
    invoke-virtual {v4, v3, v2, p0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3a} :catch_5d
    .catchall {:try_start_20 .. :try_end_3a} :catchall_5b

    move p0, v1

    goto :goto_24

    :cond_3c
    const/4 p0, 0x1

    .line 892
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_4b

    :catch_41
    move-exception v1

    .line 895
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 899
    :goto_4b
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_59

    :catch_4f
    move-exception p1

    .line 902
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_59
    move v2, p0

    goto :goto_a4

    :catchall_5b
    move-exception p0

    goto :goto_61

    :catch_5d
    move-exception p0

    goto :goto_65

    :catchall_5f
    move-exception p0

    move-object p1, v1

    :goto_61
    move-object v1, v4

    goto :goto_a6

    :catch_63
    move-exception p0

    move-object p1, v1

    :goto_65
    move-object v1, v4

    goto :goto_74

    :catchall_67
    move-exception p0

    move-object p1, v1

    move-object v1, v3

    goto :goto_a6

    :catch_6b
    move-exception p0

    move-object p1, v1

    move-object v1, v3

    goto :goto_74

    :catchall_6f
    move-exception p0

    move-object p1, v1

    goto :goto_a6

    :catch_72
    move-exception p0

    move-object p1, v1

    :goto_74
    :try_start_74
    const-string v3, "fail to open inputstream from FileDescriptor"

    new-array v4, v2, [Ljava/lang/Object;

    .line 887
    invoke-static {v0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 888
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_a5

    if-eqz v1, :cond_94

    .line 892
    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_94

    :catch_8a
    move-exception p0

    .line 895
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_94
    :goto_94
    if-eqz p1, :cond_a4

    .line 899
    :try_start_96
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_a4

    :catch_9a
    move-exception p0

    .line 902
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_a4
    :goto_a4
    return v2

    :catchall_a5
    move-exception p0

    :goto_a6
    if-eqz v1, :cond_b6

    .line 892
    :try_start_a8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_b6

    :catch_ac
    move-exception v1

    .line 895
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_b6
    :goto_b6
    if-eqz p1, :cond_c6

    .line 899
    :try_start_b8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_c6

    :catch_bc
    move-exception p1

    .line 902
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 904
    :cond_c6
    :goto_c6
    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    if-nez v1, :cond_e

    .line 109
    new-instance v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 111
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSystemPropertyBoolean(Ljava/lang/String;)Z
    .registers 5

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "DualDARDaemonProxy"

    const-string v2, "Invalid property"

    .line 318
    invoke-static {v0, v2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 323
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 325
    :try_start_15
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_27
    .catchall {:try_start_15 .. :try_end_24} :catchall_25

    goto :goto_2b

    :catchall_25
    move-exception p0

    goto :goto_2f

    :catch_27
    move-exception p0

    .line 328
    :try_start_28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 330
    :goto_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw p0
.end method

.method public static setSystemPropertyBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 301
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string v0, "Invalid property"

    .line 302
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 306
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 308
    :try_start_15
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_22
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 312
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_20
    move-exception p0

    goto :goto_28

    :catch_22
    move-exception p0

    .line 310
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    goto :goto_1c

    :goto_27
    return-void

    .line 312
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    throw p0
.end method


# virtual methods
.method public cancelTimer()V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    return-void
.end method

.method public final clearApplicationUserDataForPackages(ILjava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "DualDARDaemonProxy"

    const/4 v1, 0x0

    if-nez p1, :cond_86

    .line 543
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_86

    .line 547
    :cond_d
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "clearApplicationUserDataForPackages - there is no package to clear"

    .line 548
    invoke-static {v0, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    .line 552
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 554
    :try_start_22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 555
    invoke-virtual {p0, v2, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearUserData(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearApplicationUserData failed! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_26

    .line 558
    :cond_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearApplicationUserData success! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_65} :catch_73
    .catchall {:try_start_22 .. :try_end_65} :catchall_71

    goto :goto_26

    .line 566
    :cond_66
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "clear app user data for initialize DualDAR at DO. success"

    .line 569
    invoke-static {v0, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    :catchall_71
    move-exception p0

    goto :goto_82

    :catch_73
    move-exception p0

    :try_start_74
    const-string p1, "clearApplicationUserDataForPackages exception"

    new-array p2, v1, [Ljava/lang/Object;

    .line 562
    invoke-static {v0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 563
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_71

    .line 566
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_82
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    throw p0

    :cond_86
    :goto_86
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "clearApplicationUserDataForPackages failed! : (reason) DualDAR at DO user"

    .line 544
    invoke-static {v0, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public clearSecret(I)Z
    .registers 8

    .line 774
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string v0, "clearSecret failed! Error: native interface not yet connected failed"

    .line 775
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_f
    :try_start_f
    const-string/jumbo v2, "key"

    const-string v3, "evict"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 780
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "all"

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 781
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_38

    if-eqz p0, :cond_37

    :cond_36
    move v1, v5

    :cond_37
    return v1

    :catch_38
    move-exception p0

    .line 783
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final clearUserData(Ljava/lang/String;I)Z
    .registers 7

    const/4 p2, 0x0

    if-eqz p1, :cond_8b

    .line 582
    new-instance v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver-IA;)V

    .line 584
    :try_start_9
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_19

    .line 585
    sget-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    :cond_19
    const-string v1, "DualDARDaemonProxy"

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " try to clear application User Data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 587
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p0

    if-nez p0, :cond_52

    const-string p0, "DualDARDaemonProxy"

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t clear application user data for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_8b

    .line 592
    :cond_52
    monitor-enter v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_53} :catch_7f

    .line 593
    :goto_53
    :try_start_53
    iget-boolean p0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_7c

    if-nez p0, :cond_6b

    const-wide/16 v1, 0x64

    .line 595
    :try_start_59
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_7c

    goto :goto_53

    :catch_5d
    move-exception p0

    :try_start_5e
    const-string v1, "DualDARDaemonProxy"

    const-string v2, "InterruptedException occur"

    new-array v3, p2, [Ljava/lang/Object;

    .line 597
    invoke-static {v1, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 598
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_53

    .line 601
    :cond_6b
    iget-boolean p0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    if-eqz p0, :cond_79

    iget-object p0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 602
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x1

    goto :goto_7a

    :cond_79
    move p0, p2

    :goto_7a
    monitor-exit v0

    return p0

    :catchall_7c
    move-exception p0

    .line 603
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw p0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception p0

    const-string p1, "DualDARDaemonProxy"

    .line 607
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_8b
    :goto_8b
    return p2
.end method

.method public dumpSecret(ILjava/lang/String;)Z
    .registers 8

    .line 789
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string p2, "dumpSecret failed! Error: native interface not yet connected failed"

    .line 790
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 794
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSecret() - userId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filePath : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy.DUALDAR"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 796
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v2, "key"

    const-string/jumbo v3, "key_dump"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 797
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    .line 796
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 798
    invoke-virtual {p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p2

    if-nez p2, :cond_57

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_55} :catch_59

    if-eqz p0, :cond_58

    :cond_57
    move v1, p1

    :cond_58
    return v1

    :catch_59
    move-exception p0

    .line 800
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final enforceCallingUser(I)V
    .registers 3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string v0, "enforceCallingUser"

    .line 828
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 832
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 v0, 0x1482

    if-ne p1, v0, :cond_17

    return-void

    .line 836
    :cond_17
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    if-ne p0, p1, :cond_22

    return-void

    .line 837
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by system user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "fetchDumpStateInfo()"

    .line 139
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    iget-object p1, p1, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    const-string v0, "/data/log/ddar_log.txt"

    invoke-static {p1, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "fetchDumpStateInfo() successfullly read the log file"

    .line 141
    invoke-static {v1, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0
.end method

.method public getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 708
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v0, "DualDARDaemonProxy"

    const/4 v1, 0x0

    const-string v2, ""

    if-nez p0, :cond_12

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "startClientLibrary failed! Error: native interface not yet connected failed"

    .line 709
    invoke-static {v0, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    :cond_12
    :try_start_12
    const-string/jumbo v3, "vendor_lib"

    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 715
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 714
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p0

    const-string p1, "getClientLibraryVersion() got response from executeSync"

    new-array v3, v1, [Ljava/lang/Object;

    .line 716
    invoke-static {v0, p1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 717
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getResponseCode()I

    move-result p1

    if-ltz p1, :cond_3a

    .line 718
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_61

    .line 720
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startClientLibrary failed! Error code: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getCode()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_61} :catch_62

    :goto_61
    return-object v2

    :catch_62
    move-exception p0

    .line 723
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public final isNonClearablePackage(Ljava/lang/String;)Z
    .registers 3

    .line 641
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isSetPolicyFailureExceptional(Ljava/lang/String;)Z
    .registers 2

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isZippedLocaleOverlay(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isZippedLocaleOverlay(Ljava/lang/String;)Z
    .registers 4

    .line 528
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 531
    :try_start_9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 532
    invoke-static {p0}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    .line 534
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1e
    return v0
.end method

.method public loadClientLibrary(ILjava/lang/String;)Z
    .registers 8

    .line 661
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string/jumbo p2, "loadClientLibrary failed! Error: native interface not yet connected failed"

    .line 662
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_10
    :try_start_10
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "load"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 668
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    .line 667
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 669
    invoke-virtual {p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p2

    if-nez p2, :cond_36

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_34} :catch_38

    if-eqz p0, :cond_37

    :cond_36
    move v1, p1

    :cond_37
    return v1

    :catch_38
    move-exception p0

    .line 671
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final makeListUpWithClearableSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 451
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isNonClearablePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. Skip ddar policy for the pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    invoke-static {v3, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 454
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 457
    :cond_33
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_37
    return-void
.end method

.method public final makeListUpWithNonClearableSystemPackages(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3. Skip ddar policy for the pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 435
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2d
    return-void
.end method

.method public final makeListUpWithNonSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isNonClearablePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. Skip ddar policy for the pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    invoke-static {v3, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 443
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 446
    :cond_33
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_37
    return-void
.end method

.method public onDaemonConnected()V
    .registers 4

    :try_start_0
    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v1, "onDaemonConnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 808
    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 809
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_18

    .line 810
    :try_start_e
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 811
    monitor-exit v0

    goto :goto_1c

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    :try_start_17
    throw p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-exception p0

    .line 813
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    return-void
.end method

.method public onDaemonDisconnected()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->enforceCallingUser(I)V

    :try_start_3
    const-string p1, "DualDARDaemonProxy"

    .line 153
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

    .line 154
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x1

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_1cc

    goto/16 :goto_b6

    :sswitch_2d
    const-string v2, "SET_DUALDAR_DO_POLICY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/4 v0, 0x4

    goto/16 :goto_b6

    :sswitch_38
    const-string v2, "UNLOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/4 v0, 0x7

    goto/16 :goto_b6

    :sswitch_43
    const-string v2, "CLEAR_SECRET"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/16 v0, 0xb

    goto/16 :goto_b6

    :sswitch_4f
    const-string v2, "SET_DUALDAR_POLICY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/4 v0, 0x3

    goto :goto_b6

    :sswitch_59
    const-string v2, "PUSH_SECRET"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/16 v0, 0xa

    goto :goto_b6

    :sswitch_64
    const-string v2, "SET_EVICTION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/4 v0, 0x2

    goto :goto_b6

    :sswitch_6e
    const-string v2, "START_DAEMON"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    move v0, v1

    goto :goto_b6

    :sswitch_78
    const-string v2, "GET_CLIENTLIB_VERSION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/16 v0, 0x9

    goto :goto_b6

    :sswitch_83
    const-string v2, "START_CLIENT_LIBRARY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/16 v0, 0x8

    goto :goto_b6

    :sswitch_8e
    const-string v2, "FETCH_DUMPSTATE_REQUEST"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/16 v0, 0xc

    goto :goto_b6

    :sswitch_99
    const-string v2, "STOP_DAEMON"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    move v0, v3

    goto :goto_b6

    :sswitch_a3
    const-string v2, "LOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    const/4 v0, 0x6

    goto :goto_b6

    :sswitch_ad
    const-string v2, "CLEAR_APP_DATA"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b3} :catch_1c6

    if-eqz p2, :cond_b6

    const/4 v0, 0x5

    :cond_b6
    :goto_b6
    const-string p2, "CRYPTO_PATH"

    const-string v2, "dual_dar_response_message"

    const-string/jumbo v4, "user_id"

    const-string v5, "dual_dar_response"

    packed-switch v0, :pswitch_data_202

    goto/16 :goto_1c5

    :pswitch_c4
    :try_start_c4
    const-string p2, "FSLOG_FILE_INFO"

    .line 239
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)Z

    move-result p0

    .line 241
    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1c5

    .line 230
    :pswitch_d5
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 231
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearSecret(I)Z

    move-result p2

    .line 232
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1c5

    .line 233
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1c5

    .line 234
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    :pswitch_ef
    const-string p2, "INNER_LAYER_SECRET"

    .line 221
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 222
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ORIGINATING_SECURE_CLIENT_ID"

    .line 223
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->pushSecret(ILjava/util/List;Ljava/lang/String;)Z

    move-result p2

    .line 224
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1c5

    .line 225
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1c5

    .line 226
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 216
    :pswitch_115
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 208
    :pswitch_122
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 209
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startClientLibrary(I)Z

    move-result p2

    .line 210
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1c5

    .line 211
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1c5

    .line 212
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 199
    :pswitch_13c
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 200
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->unloadClientLibrary(I)Z

    move-result p2

    .line 201
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1c5

    .line 202
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1c5

    .line 203
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 189
    :pswitch_156
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-virtual {p0, v0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->loadClientLibrary(ILjava/lang/String;)Z

    move-result p2

    .line 192
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1c5

    .line 193
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1c5

    .line 194
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c5

    .line 180
    :pswitch_173
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 181
    iget-object p3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearApplicationUserDataForPackages(ILjava/util/List;)Z

    move-result p2

    .line 182
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1c5

    .line 183
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1c5

    .line 184
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c5

    .line 177
    :pswitch_18e
    invoke-virtual {p0, p3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForManagedDevice(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_1c5

    .line 174
    :pswitch_192
    invoke-virtual {p0, p3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForManagedProfile(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_1c5

    .line 165
    :pswitch_196
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "EVICT"

    .line 166
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 167
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setEviction(IZ)Z

    move-result p2

    .line 168
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1c5

    .line 169
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1c5

    .line 170
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c5

    .line 160
    :pswitch_1b5
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->stopConnectorThread()V

    const-string/jumbo p0, "persist.sys.knox.dualdard"

    .line 161
    invoke-static {p0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1c5

    .line 157
    :pswitch_1c2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startDualDARDaemon(Landroid/os/Bundle;)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_1c5} :catch_1c6

    :cond_1c5
    :goto_1c5
    return-object p1

    :catch_1c6
    move-exception p0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_1cc
    .sparse-switch
        -0x7832af06 -> :sswitch_ad
        -0x74c33360 -> :sswitch_a3
        -0x41169e9f -> :sswitch_99
        -0x39e32f38 -> :sswitch_8e
        -0x398c663c -> :sswitch_83
        0x432f76a -> :sswitch_78
        0xd454d21 -> :sswitch_6e
        0x132d527c -> :sswitch_64
        0x205d4775 -> :sswitch_59
        0x2b3c5855 -> :sswitch_4f
        0x2dada502 -> :sswitch_43
        0x4d55a167 -> :sswitch_38
        0x69e2b563 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_1c2
        :pswitch_1b5
        :pswitch_196
        :pswitch_192
        :pswitch_18e
        :pswitch_173
        :pswitch_156
        :pswitch_13c
        :pswitch_122
        :pswitch_115
        :pswitch_ef
        :pswitch_d5
        :pswitch_c4
    .end packed-switch
.end method

.method public pushSecret(ILjava/util/List;Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v1, "DualDARDaemonProxy"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "pushSecret failed! Error: native interface not yet connected failed"

    .line 731
    invoke-static {v1, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 735
    :cond_10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ddar/Secret;

    .line 737
    :try_start_21
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    iget-object v5, v0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {v4, p3, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v4

    if-nez v4, :cond_34

    const-string/jumbo p0, "pushSecret failed ! decData is null"

    new-array p1, v2, [Ljava/lang/Object;

    .line 739
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 742
    :cond_34
    invoke-static {v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 743
    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v7, "key"

    const-string/jumbo v8, "install"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget-object v0, v0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    aput-object v0, v9, v3

    const/4 v0, 0x2

    aput-object v5, v9, v0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 744
    invoke-static {v4}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 745
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo p0, "pushSecret failed !"

    new-array p1, v2, [Ljava/lang/Object;

    .line 746
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_69} :catch_6a

    return v2

    :catch_6a
    move-exception p0

    .line 750
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_6f
    return v3
.end method

.method public final refreshNonClearablePackagesList(I)V
    .registers 4

    const-string v0, "dar"

    .line 645
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_f

    .line 647
    invoke-virtual {v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getBlockedClearablePackages(I)Ljava/util/List;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_1c

    .line 650
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 651
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    :cond_1c
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    if-eqz p0, :cond_4b

    .line 654
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshNonClearablePackagesList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    invoke-static {v1, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_24

    :cond_4b
    return-void
.end method

.method public final setDualDARDOPolicy(II)Z
    .registers 13

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualDARDOPolicy for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyToDirectories(II)Z

    move-result v0

    if-eqz v0, :cond_29

    return v1

    :cond_29
    const-string v0, "dar"

    .line 382
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_b6

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_41
    const-string/jumbo v7, "pkg_clearable_system"

    .line 391
    invoke-virtual {v0, v7}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "pkg_not_system"

    .line 393
    invoke-virtual {v0, v8}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v9, "pkg_not_clearable_system"

    .line 395
    invoke-virtual {v0, v9}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_b1

    .line 398
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->refreshNonClearablePackagesList(I)V

    if-eqz v7, :cond_69

    .line 403
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_65

    goto :goto_69

    .line 406
    :cond_65
    invoke-virtual {p0, v7, v2, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->makeListUpWithClearableSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_70

    :cond_69
    :goto_69
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Clearable system package list is Empty."

    .line 404
    invoke-static {v3, v6, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_70
    if-eqz v8, :cond_7d

    .line 408
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_79

    goto :goto_7d

    .line 411
    :cond_79
    invoke-virtual {p0, v8, v2, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->makeListUpWithNonSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_84

    :cond_7d
    :goto_7d
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Not system package list is Empty."

    .line 409
    invoke-static {v3, v6, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_84
    if-eqz v0, :cond_91

    .line 413
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8d

    goto :goto_91

    .line 416
    :cond_8d
    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->makeListUpWithNonClearableSystemPackages(Ljava/util/List;Ljava/util/List;)V

    goto :goto_98

    :cond_91
    :goto_91
    new-array v0, v1, [Ljava/lang/Object;

    const-string v5, "Not clearable system package list is Empty."

    .line 414
    invoke-static {v3, v5, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    :goto_98
    invoke-virtual {p0, p1, p2, v4, v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForPackages(IILjava/util/List;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_a7

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "setDualDARPolicyForPackages failed!"

    .line 420
    invoke-static {v3, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 424
    :cond_a7
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    move-result-object p0

    .line 425
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->saveSkippedPackages(Ljava/util/List;)V

    goto :goto_b6

    :catchall_b1
    move-exception p0

    .line 398
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    throw p0

    :cond_b6
    :goto_b6
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "setDualDARDOPolicy res : true"

    .line 428
    invoke-static {v3, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPOPolicy(II)Z
    .registers 4

    .line 365
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicy(II)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "DualDARDaemonProxy"

    const-string/jumbo v0, "setDualDARPolicy failed!"

    .line 367
    invoke-static {p2, v0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyForDir(IILjava/lang/String;)Z
    .registers 4

    .line 630
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 631
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    .line 632
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setDualDARPolicyDirRecursively failed! : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "DualDARDaemonProxy"

    invoke-static {p3, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyForManagedDevice(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "user_id"

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CRYPTO_TYPE"

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 255
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARDOPolicy(II)Z

    move-result p1

    const-string v0, "dual_dar_response"

    .line 256
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_25

    .line 257
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_25

    .line 258
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "dual_dar_response_message"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public final setDualDARPolicyForManagedProfile(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "user_id"

    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CRYPTO_TYPE"

    .line 264
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x9

    .line 265
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPOPolicy(II)Z

    move-result v1

    const-string v2, "dual_dar_response_message"

    if-nez v1, :cond_23

    .line 266
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v1, :cond_23

    .line 267
    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPOPolicy(II)Z

    move-result p1

    const-string v0, "dual_dar_response"

    .line 272
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_39

    .line 273
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_39

    .line 274
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public final setDualDARPolicyForPackages(IILjava/util/List;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v0

    .line 500
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user_de/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "setDualDARPolicyDirRecursively failed! : "

    const-string v6, "DualDARDaemonProxy"

    const/4 v7, 0x0

    if-nez v4, :cond_88

    .line 504
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isSetPolicyFailureExceptional(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDualDARPolicyDirRecursively failure exceptional! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 506
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 508
    :cond_73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v7

    :cond_88
    const/16 v2, 0x9

    .line 512
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 517
    :cond_a4
    :goto_a4
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_ab
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyForUser(II)Z
    .registers 8

    .line 479
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user_de/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result p2

    const-string/jumbo v2, "setDualDARPolicyDir user failed! : "

    const-string v3, "DualDARDaemonProxy"

    const/4 v4, 0x0

    if-nez p2, :cond_49

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4

    :cond_49
    const/16 p2, 0x9

    .line 486
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_65

    .line 488
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_65
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyToDirectories(II)Z
    .registers 7

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForDir(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DualDARDaemonProxy"

    const/4 v3, 0x0

    if-nez v0, :cond_23

    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "Failed to set the policy to shared folders..."

    .line 465
    invoke-static {v2, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 470
    :cond_23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForUser(II)Z

    move-result p0

    if-nez p0, :cond_31

    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "Failed to set the policy to data package folder..."

    .line 471
    invoke-static {v2, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_31
    return v3
.end method

.method public setEviction(IZ)Z
    .registers 4

    .line 356
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setEviction(IZ)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "DualDARDaemonProxy"

    const-string/jumbo v0, "setEviction failed!"

    .line 358
    invoke-static {p2, v0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public startClientLibrary(I)Z
    .registers 8

    .line 692
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string/jumbo v0, "startClientLibrary failed! Error: native interface not yet connected failed"

    .line 693
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_10
    :try_start_10
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "start"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 699
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3e

    if-eqz p0, :cond_3d

    :cond_3c
    move v1, v5

    :cond_3d
    return v1

    :catch_3e
    move-exception p0

    .line 701
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final startConnectorThread()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string/jumbo v2, "startConnectorThread() "

    .line 123
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    new-instance v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 125
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final startDualDARDaemon(Landroid/os/Bundle;)V
    .registers 8

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3f

    :try_start_3
    const-string v1, "dualdard"

    .line 281
    invoke-static {v1}, Lcom/android/server/knox/dar/DarUtil;->isDaemonRunning(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1d

    const-string v1, "DualDARDaemonProxy"

    const-string/jumbo v4, "start newly dualdard daemon ! "

    new-array v5, v3, [Ljava/lang/Object;

    .line 282
    invoke-static {v1, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v1, "persist.sys.knox.dualdard"

    .line 283
    invoke-static {v1, v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    .line 285
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startTimer()V

    .line 287
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 288
    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    if-nez v1, :cond_32

    const-string v1, "dual_dar_response"

    .line 289
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_37

    :cond_32
    const-string v1, "dual_dar_response"

    .line 291
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->cancelTimer()V

    .line 294
    monitor-exit v0

    goto :goto_43

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    return-void
.end method

.method public final startTimer()V
    .registers 5

    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 337
    new-instance v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stopConnectorThread()V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string/jumbo v3, "stopConnectorThread() "

    .line 130
    invoke-static {v2, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    if-eqz v1, :cond_1a

    .line 132
    invoke-virtual {v1, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->setIsListening(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    :cond_1a
    return-void
.end method

.method public unloadClientLibrary(I)Z
    .registers 8

    .line 677
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string/jumbo v0, "unloadClientLibrary failed! Error: native interface not yet connected failed"

    .line 678
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_10
    :try_start_10
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "unload"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 684
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_31} :catch_35

    if-eqz p0, :cond_34

    :cond_33
    move v1, v4

    :cond_34
    return v1

    :catch_35
    move-exception p0

    .line 686
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
