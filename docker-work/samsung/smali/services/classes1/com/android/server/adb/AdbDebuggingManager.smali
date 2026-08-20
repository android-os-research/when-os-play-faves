.class public Lcom/android/server/adb/AdbDebuggingManager;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/adb/AdbDebuggingManager$Ticker;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;,
        Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;,
        Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
    }
.end annotation


# static fields
.field public static final ADBD_SOCKET:Ljava/lang/String; = "adbd"

.field public static final ADB_DIRECTORY:Ljava/lang/String; = "misc/adb"

.field public static final ADB_KEYS_FILE:Ljava/lang/String; = "adb_keys"

.field public static final ADB_TEMP_KEYS_FILE:Ljava/lang/String; = "adb_temp_keys.xml"

.field public static final BUFFER_SIZE:I = 0x10000

.field public static final DEBUG:Z = true

.field public static final MDNS_DEBUG:Z = false

.field public static final PAIRING_CODE_LENGTH:I = 0x6

.field public static final SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

.field public static final TAG:Ljava/lang/String; = "AdbDebuggingManager"

.field public static final WIFI_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.adb.tls_server.enable"

.field public static final WIFI_PERSISTENT_GUID:Ljava/lang/String; = "persist.adb.wifi.guid"


# instance fields
.field public mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

.field public mAdbUsbEnabled:Z

.field public mAdbWifiEnabled:Z

.field public final mConfirmComponent:Ljava/lang/String;

.field public final mConnectedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mFingerprints:Ljava/lang/String;

.field public final mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

.field public final mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

.field public final mTempKeysFile:Ljava/io/File;

.field public mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

.field public final mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

.field public final mUserKeyFile:Ljava/io/File;

.field public final mWifiConnectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gZT0pLYva4rawTPaa4Vf1_8pFm8()J
    .registers 2

    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->lambda$static$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPortListener(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->sendPersistKeyStoreMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConfirmationForKey(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConfirmationForNetwork(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKeys(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const-string v0, "adb_keys"

    .line 181
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v0, "adb_temp_keys.xml"

    .line 182
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v7, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 178
    invoke-direct/range {v1 .. v7}, Lcom/android/server/adb/AdbDebuggingManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 167
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 170
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 199
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 201
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    .line 202
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 203
    iput-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 204
    iput-object p5, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 205
    iput-object p6, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 206
    new-instance p1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    return-void
.end method

.method public static getAdbFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1628
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1629
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "misc/adb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1632
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v0, "ADB data directory does not exist"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1636
    :cond_1b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$static$0()J
    .registers 2

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    const-string v0, "android.permission.MANAGE_DEBUGGING"

    .line 211
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .registers 5

    .line 1698
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1699
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1700
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1701
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public allowWirelessDebugging(ZLjava/lang/String;)V
    .registers 5

    .line 1724
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1725
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1726
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1727
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearDebuggingKeys()V
    .registers 2

    .line 1716
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1616
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1617
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1619
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14

    :cond_30
    return-object p0
.end method

.method public denyDebugging()V
    .registers 2

    .line 1708
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public denyWirelessDebugging()V
    .registers 2

    .line 1734
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public disablePairing()V
    .registers 2

    .line 1790
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11

    .line 1819
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 1821
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    const/4 p4, 0x1

    goto :goto_c

    :cond_b
    move p4, v0

    :goto_c
    const-string v1, "connected_to_adb"

    const-wide v2, 0x10800000001L

    invoke-virtual {p1, v1, v2, v3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v1, 0x10900000002L

    .line 1822
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    const-string/jumbo v3, "last_key_received"

    invoke-static {p1, v3, v1, v2, p4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const/4 p4, 0x0

    :try_start_24
    const-string/jumbo v1, "user_keys"

    const-wide v2, 0x10900000003L

    .line 1826
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/adb/adb_keys"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1827
    invoke-static {v4, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1826
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_3b

    goto :goto_43

    :catch_3b
    move-exception v1

    .line 1829
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot read user keys"

    invoke-static {v2, v3, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    :try_start_43
    const-string/jumbo v1, "system_keys"

    const-wide v2, 0x10900000004L

    .line 1833
    new-instance v4, Ljava/io/File;

    const-string v5, "/adb_keys"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1834
    invoke-static {v4, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1833
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_59} :catch_5a

    goto :goto_62

    :catch_5a
    move-exception v1

    .line 1836
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot read system keys"

    invoke-static {v2, v3, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_62
    :try_start_62
    const-string/jumbo v1, "keystore"

    const-wide v2, 0x10900000005L

    .line 1840
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 1841
    invoke-static {p0, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1840
    invoke-virtual {p1, v1, v2, v3, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_73} :catch_74

    goto :goto_7c

    :catch_74
    move-exception p0

    .line 1843
    sget-object p4, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v0, "Cannot read keystore: "

    invoke-static {p4, v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1846
    :goto_7c
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public enablePairingByPairingCode()V
    .registers 2

    .line 1770
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1777
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "serviceName"

    .line 1778
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "password"

    .line 1779
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 p2, 0x10

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1783
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final getAdbConnectionInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    monitor-enter v0

    .line 643
    :try_start_3
    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v1, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 644
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .registers 1

    .line 1640
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    return-object p0
.end method

.method public getAdbWirelessPort()I
    .registers 1

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbConnectionInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1745
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getPort()I

    move-result p0

    return p0
.end method

.method public final getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1484
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_a

    return-object v0

    :cond_a
    :try_start_a
    const-string v1, "MD5"

    .line 1492
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_5d

    const-string v2, "\\s+"

    .line 1498
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 1501
    :try_start_1d
    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_25} :catch_54

    .line 1506
    :goto_25
    array-length v0, p1

    if-ge v2, v0, :cond_4f

    .line 1507
    aget-byte v0, p1, v2

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1508
    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1509
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4c

    const-string v0, ":"

    .line 1510
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1513
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_54
    move-exception p0

    .line 1503
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v1, "error doing base64 decoding"

    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_5d
    move-exception p0

    .line 1494
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting digester"

    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getPairedDevices()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/debug/PairDevice;",
            ">;"
        }
    .end annotation

    .line 1752
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1753
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUserKeyFile()Ljava/io/File;
    .registers 1

    .line 1644
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    return-object p0
.end method

.method public isAdbWifiEnabled()Z
    .registers 1

    .line 1797
    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return p0
.end method

.method public final isLockScreenMode()Z
    .registers 3

    .line 2299
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2300
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    return p0
.end method

.method public notifyKeyFilesUpdated()V
    .registers 2

    .line 1804
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final sendPersistKeyStoreMessage()V
    .registers 3

    .line 1811
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1812
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .registers 3

    .line 632
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    monitor-enter v0

    if-nez p1, :cond_c

    .line 634
    :try_start_5
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->clear()V

    .line 635
    monitor-exit v0

    return-void

    .line 637
    :cond_c
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 638
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setAdbEnabled(ZB)V
    .registers 4

    const/4 v0, 0x1

    if-nez p2, :cond_d

    .line 1682
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-eqz p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    :goto_9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1b

    :cond_d
    if-ne p2, v0, :cond_1c

    .line 1685
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-eqz p1, :cond_16

    const/16 p1, 0xb

    goto :goto_18

    :cond_16
    const/16 p1, 0xc

    :goto_18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1b
    return-void

    .line 1688
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAdbEnabled called with unimplemented transport type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1582
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConfirmationActivity"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1584
    invoke-virtual {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p3

    const/high16 v1, 0x10000000

    .line 1585
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 1586
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1588
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_24} :catch_26

    const/4 p0, 0x1

    return p0

    :catch_26
    move-exception p0

    .line 1591
    sget-object p2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start adb whitelist activity: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public final startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1544
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConfirmation"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->isLockScreenMode()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo p0, "startConfirmation: isLockScreenMode"

    .line 1547
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1551
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1552
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v3, "key"

    invoke-direct {v2, v3, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v2, "fingerprints"

    invoke-direct {p1, v2, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 1555
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1557
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_54

    .line 1558
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    if-eqz p2, :cond_48

    goto :goto_5f

    .line 1559
    :cond_48
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1040306

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5f

    .line 1564
    :cond_54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1040307

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1567
    :goto_5f
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1568
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_92

    .line 1569
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_78

    goto :goto_92

    .line 1573
    :cond_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as an Activity or a Service"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    return-void
.end method

.method public final startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "ssid"

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v1, "bssid"

    invoke-direct {p1, v1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startConfirmationForNetwork"

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->isLockScreenMode()Z

    move-result p2

    if-eqz p2, :cond_2f

    const-string/jumbo p0, "startConfirmationForNetwork: isLockScreenMode"

    .line 1524
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1528
    :cond_2f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    .line 1530
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1532
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1533
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 1534
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 1535
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_7a

    .line 1538
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to start customAdbWifiNetworkConfirmation[SecondaryUser]Component "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as an Activity or a Service"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1602
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConfirmationService"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    invoke-virtual {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p3

    .line 1605
    :try_start_c
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_12} :catch_16

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :catch_16
    move-exception p0

    .line 1609
    sget-object p2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start adb whitelist service: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public unpairDevice(Ljava/lang/String;)V
    .registers 4

    .line 1760
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x11

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1763
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final writeKeys(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1648
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 1652
    :cond_5
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 1657
    :try_start_d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1658
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1659
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v2, 0xa

    .line 1660
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_15

    .line 1662
    :cond_2e
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_31} :catch_3e

    .line 1669
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 1670
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1a0

    const/4 v0, -0x1

    .line 1669
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void

    :catch_3e
    move-exception p0

    .line 1664
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method
