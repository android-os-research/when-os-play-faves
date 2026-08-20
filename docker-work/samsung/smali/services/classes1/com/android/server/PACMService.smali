.class public final Lcom/android/server/PACMService;
.super Lcom/android/server/SystemService;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PACMService$PAC_Packet;,
        Lcom/android/server/PACMService$PACServiceSocketThread;
    }
.end annotation


# static fields
.field public static final ACTION_EM_SYNC:Ljava/lang/String; = "com.android.server.em.EM_SYNC_TOKEN_STATE"

.field public static final ACTION_GALAXY_DIAG_START:Ljava/lang/String; = "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

.field public static final ACTION_GALAXY_DIAG_STOP:Ljava/lang/String; = "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

.field public static final CACHE_TAG:Ljava/lang/String; = "MODE"

.field public static final GALAXY_DIAG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor"

.field public static final MESSAGE_CHECK_BOARDCAST_RECEIVER:I = 0x1

.field public static final NOK:I = 0x0

.field public static final OK:I = 0x1

.field public static final PROTOCOL_VERSION:I = 0x1

.field public static final REPAIR_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.repaircal"

.field public static final SERVICE_VERSION:Ljava/lang/String; = "10.6.0"

.field public static final SS_DIAG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor.ve"

.field public static final TAG:Ljava/lang/String; = "PACMService"

.field public static final VISUAL_DIAG_PACKAGE_NAME:Ljava/lang/String; = "kr.co.avad.diagnostictool"

.field public static final WAKELOCK_TAG:Ljava/lang/String; = "PACM_WL"

.field public static mGalaxyDiag:Z = false

.field public static final mIsJDMDevice:Z = true

.field public static mReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAtMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mEmTokenState:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mThreadSocket:Ljava/lang/Thread;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtMap(Lcom/android/server/PACMService;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/PACMService;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/PACMService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/PACMService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/PACMService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/server/PACMService;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PACMService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmEmTokenState(Lcom/android/server/PACMService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$misPackageInstalled(Lcom/android/server/PACMService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PACMService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterForBroadcasts(Lcom/android/server/PACMService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmIsJDMDevice()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/PACMService;->mIsJDMDevice:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmReceiverList()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-string v0, "PACMService"

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    const-string v1, ""

    .line 89
    iput-object v1, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/android/server/PACMService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    .line 106
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    .line 144
    new-instance v2, Lcom/android/server/PACMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/PACMService$1;-><init>(Lcom/android/server/PACMService;)V

    iput-object v2, p0, Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v2, Lcom/android/server/PACMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/PACMService$2;-><init>(Lcom/android/server/PACMService;)V

    iput-object v2, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    .line 113
    iget-object v2, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    const-string/jumbo v2, "power"

    .line 114
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "PACM_WL"

    .line 115
    invoke-virtual {p1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/PACMService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    invoke-virtual {p0}, Lcom/android/server/PACMService;->registerProtectedCommandList()V

    .line 119
    :try_start_4b
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/PACMService$PACServiceSocketThread;

    invoke-direct {v2, p0, v1}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;Lcom/android/server/PACMService$PACServiceSocketThread-IA;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/PACMService;->mThreadSocket:Ljava/lang/Thread;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_5b

    goto :goto_64

    :catch_5b
    move-exception p0

    const-string p1, "Failed to start PACM Service"

    .line 122
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_64
    const-string p0, "Success to start PACM Service(S-ver : 10.6.0/ P-ver : 1)"

    .line 126
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final isPackageInstalled(Ljava/lang/String;)Z
    .registers 5

    .line 191
    iget-object p0, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "PACMService"

    const/4 v1, 0x0

    if-nez p1, :cond_12

    const-string/jumbo p0, "package name is null in isPackageInstalled"

    .line 194
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 199
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_15} :catch_48

    const-string v2, "android"

    .line 205
    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_32

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is installed but signature is not matched"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 209
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is installed and signature is matched."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_48
    const-string p0, "GalaxyDiag app is not installed!"

    .line 201
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_16

    const-string p1, "PACMService"

    const-string v0, "PHASE_LOCK_SETTINGS_READY"

    .line 138
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    .line 140
    iget-object p0, p0, Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 2

    const-string p0, "PACMService"

    const-string/jumbo v0, "onStart() "

    .line 132
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerForBroadcasts()V
    .registers 4

    .line 241
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.em.EM_SYNC_TOKEN_STATE"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    sget-object v0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_2e

    :catch_23
    move-exception p0

    const-string v0, "PACMService"

    const-string v1, "Failed to add Broadcast"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method public final registerProtectedCommandList()V
    .registers 9

    const/4 v0, 0x4

    :try_start_1
    new-array v1, v0, [Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;

    .line 171
    new-instance v2, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;

    iget-object v3, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;

    iget-object v4, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v5, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;

    iget-object v6, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;-><init>(Landroid/content/Context;)V

    aput-object v5, v1, v2

    const/4 v2, 0x3

    new-instance v5, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;

    iget-object v6, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;-><init>(Landroid/content/Context;)V

    aput-object v5, v1, v2

    :goto_2b
    if-ge v3, v0, :cond_5d

    .line 179
    aget-object v2, v1, v3

    .line 180
    iget-object v5, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->putCommandList(Ljava/util/LinkedHashMap;Ljava/util/List;)I

    move-result v2

    if-eq v2, v4, :cond_56

    const-string v5, "PACMService"

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add class command list("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_59

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :catch_59
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5d
    return-void
.end method
