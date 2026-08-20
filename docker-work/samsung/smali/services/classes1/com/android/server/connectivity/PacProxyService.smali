.class public Lcom/android/server/connectivity/PacProxyService;
.super Landroid/net/IPacProxyManager$Stub;
.source "PacProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field public static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field public static final DELAY_1:I = 0x0

.field public static final DELAY_4:I = 0x3

.field public static final DELAY_LONG:I = 0x4

.field public static final MAX_PAC_SIZE:J = 0x1312d00L

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field public static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field public static final TAG:Ljava/lang/String; = "PacProxyService"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastStateLock:Ljava/lang/Object;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IPacProxyInstalledListener;",
            ">;"
        }
    .end annotation
.end field

.field public mConnection:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mCurrentDelay:I

.field public mCurrentPac:Ljava/lang/String;

.field public volatile mHasDownloaded:Z

.field public volatile mHasSentBroadcast:Z

.field public mLastPort:I

.field public final mNetThreadHandler:Landroid/os/Handler;

.field public mPacDownloader:Ljava/lang/Runnable;

.field public mPacRefreshIntent:Landroid/app/PendingIntent;

.field public volatile mPacUrl:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation
.end field

.field public mProxyConnection:Landroid/content/ServiceConnection;

.field public final mProxyLock:Ljava/lang/Object;

.field public mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastPort(Lcom/android/server/connectivity/PacProxyService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetThreadHandler(Lcom/android/server/connectivity/PacProxyService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPacDownloader(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPacUrl(Lcom/android/server/connectivity/PacProxyService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyService(Lcom/android/server/connectivity/PacProxyService;)Lcom/android/net/IProxyService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHasDownloaded(Lcom/android/server/connectivity/PacProxyService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasSentBroadcast(Lcom/android/server/connectivity/PacProxyService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastPort(Lcom/android/server/connectivity/PacProxyService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProxyService(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlongSchedule(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->longSchedule()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreschedule(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->reschedule()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->sendProxyIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PacProxyService;->setCurrentProxyScript(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 160
    invoke-direct {p0}, Landroid/net/IPacProxyManager$Stub;-><init>()V

    .line 83
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 100
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/server/connectivity/PacProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$1;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    .line 161
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    .line 162
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.pacproxyservice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 170
    new-instance v0, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static get(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 240
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    :try_start_13
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_19} :catch_8e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_19} :catch_77

    const-wide/16 v0, -0x1

    :try_start_1b
    const-string v2, "Content-Length"

    .line 254
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_25} :catch_25

    :catch_25
    const-wide/32 v2, 0x1312d00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5b

    .line 261
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 264
    :goto_35
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_56

    const/4 v5, 0x0

    .line 265
    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_4e

    goto :goto_35

    .line 267
    :cond_4e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PAC too big"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_5b
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAC too big: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :catch_77
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URL connection type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :catch_8e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect proxy type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_a5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final bind()V
    .registers 12

    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string p0, "PacProxyService"

    const-string v0, "No context for binding"

    .line 331
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    .line 338
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 341
    :cond_28
    new-instance v1, Lcom/android/server/connectivity/PacProxyService$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacProxyService$2;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    .line 375
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 379
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.proxyhandler"

    const-string v1, "com.android.proxyhandler.ProxyService"

    .line 380
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    new-instance v7, Lcom/android/server/connectivity/PacProxyService$3;

    invoke-direct {v7, p0}, Lcom/android/server/connectivity/PacProxyService$3;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v7, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 417
    iget-object v5, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const v8, 0x40000005    # 2.0000012f

    iget-object v9, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    return-void
.end method

.method public final getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 178
    :cond_10
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public final getDownloadDelay(I)J
    .registers 3

    .line 302
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getPacChangeDelay()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 303
    array-length v0, p0

    if-ge p1, v0, :cond_14

    .line 304
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getNextDelay(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    const/4 p0, 0x3

    if-le p1, p0, :cond_6

    return p0

    :cond_6
    return p1
.end method

.method public final getPacChangeDelay()Ljava/lang/String;
    .registers 3

    .line 291
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "conn.pac_change_delay"

    const-string v1, "8 32 120 14400 43200"

    .line 294
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pac_change_delay"

    .line 297
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_18

    goto :goto_19

    :cond_18
    move-object v0, p0

    :goto_19
    return-object v0
.end method

.method public final longSchedule()V
    .registers 2

    const/4 v0, 0x0

    .line 281
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    const/4 v0, 0x4

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    return-void
.end method

.method public removeListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final reschedule()V
    .registers 2

    .line 286
    iget v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    return-void
.end method

.method public final sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .registers 6

    .line 436
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 438
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/IPacProxyInstalledListener;

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    .line 441
    :try_start_14
    invoke-interface {v2, v3, p1}, Landroid/net/IPacProxyInstalledListener;->onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 445
    :cond_1a
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final sendProxyIfNeeded()V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    goto :goto_21

    .line 454
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    if-nez v1, :cond_1f

    .line 455
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/PacProxyService;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    const/4 v1, 0x1

    .line 456
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 458
    :cond_1f
    monitor-exit v0

    return-void

    .line 452
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    .line 458
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final setCurrentProxyScript(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    const-string v1, "PacProxyService"

    if-nez v0, :cond_d

    const-string/jumbo p0, "setCurrentProxyScript: no proxy service"

    .line 318
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    const-string p1, "Unable to set PAC file"

    .line 325
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void
.end method

.method public setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4a

    .line 209
    :try_start_10
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 210
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-lez v1, :cond_30

    monitor-exit v0

    return-void

    .line 211
    :cond_30
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 212
    iput p1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 213
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 214
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    .line 215
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->bind()V

    goto :goto_65

    .line 218
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 219
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_6a

    .line 220
    :try_start_56
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 221
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v1, :cond_64

    .line 223
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->unbind()V

    .line 225
    :cond_64
    monitor-exit p1
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_67

    .line 227
    :goto_65
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_6a

    return-void

    :catchall_67
    move-exception p0

    .line 225
    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw p0

    :catchall_6a
    move-exception p0

    .line 227
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public final setDownloadIn(I)V
    .registers 6

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PacProxyService;->getDownloadDelay(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 312
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final unbind()V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 424
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 425
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    .line 427
    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_17

    .line 428
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 429
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 431
    :cond_17
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return-void
.end method
