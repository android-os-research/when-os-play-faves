.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    }
.end annotation


# static fields
.field public static final COMMAND_HANDLE_GETPORT:I = 0x2

.field public static final COMMAND_HANDLE_RESTART_SERVER:I = 0x5

.field public static final COMMAND_HANDLE_SCREENLOCK:I = 0x1

.field public static final COMMAND_HANDLE_START_SERVER:I = 0x3

.field public static final COMMAND_HANDLE_STOP_SERVER:I = 0x4

.field public static final DBG:Z

.field public static final DOWNLOAD_STATUS_FAILURE:I = 0x1

.field public static final DOWNLOAD_STATUS_RETRY:I = 0x2

.field public static final DOWNLOAD_STATUS_SUCCESS:I = 0x0

.field public static final FINAL_RETRY_ATTEMPT:I = 0xa

.field public static final INITIAL_RETRY_ATTEMPT:I = 0x0

.field public static final INVALID_FD:I = -0x1

.field public static final INVALID_PORT:I = -0x1

.field public static final PAC_IDENTIFIER:Ljava/lang/String; = "function"

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.knox.vpn.proxyhandler"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.knox.vpn.proxyhandler.PacService"

.field public static final TAG:Ljava/lang/String; = "KnoxVpnPacProcessor"

.field public static mContext:Landroid/content/Context;

.field public static mDownloadStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mDownloadUrlThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation
.end field

.field public static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field public static mProxyServiceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mRetryAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mproxyConnectionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field public mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public mKnoxVpnProxyClientStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmKnoxVpnProxyClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVpnConfig(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdownloadPacUrl(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetConfiguredUser(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetVpnConfigInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasProxyService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->hasProxyService(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremovePacInterface(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removePacInterface(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPacServiceStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetProxyService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setProxyService(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartProxyServerForKnoxProfile(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetCurrentRetryStatus()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetDownloadStatus()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetDownloadThread()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    .line 92
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 94
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 95
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 94
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 95
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 108
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getCurrentRetryStatus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 281
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    if-nez v1, :cond_e

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 284
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDownloadStatus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 274
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    if-nez v1, :cond_e

    .line 275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 277
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDownloadThread()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 288
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    if-nez v1, :cond_e

    .line 289
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 291
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 267
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v1, :cond_e

    .line 268
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 270
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public bindProxyService(Ljava/lang/String;I)V
    .registers 7

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to the proxy service for the user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnPacProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding previous service before binding again for the user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_37
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_49

    goto :goto_4f

    :catch_49
    const-string/jumbo v0, "unbinding failed since the service is already unbinded or not existing"

    .line 240
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_4f
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_58
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V

    .line 246
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.knox.vpn.proxyhandler"

    const-string v1, "com.knox.vpn.proxyhandler.PacService"

    .line 247
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    const v1, 0x40000005    # 2.0000012f

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 251
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized bindProxyService(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 11

    monitor-enter p0

    .line 200
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_e

    const-string p1, "KnoxVpnPacProcessor"

    const-string p2, "No context for binding"

    .line 201
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_82

    .line 202
    monitor-exit p0

    return-void

    .line 204
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    if-eqz v1, :cond_7d

    const-string v1, "KnoxVpnPacProcessor"

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already binded to proxy service for the user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_82

    .line 208
    :try_start_2e
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v2, 0x1

    if-eq p3, v1, :cond_72

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "KnoxVpnPacProcessor"

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pac support for the profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is started since the service is connected and the result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_68

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    :cond_68
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 217
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    goto :goto_7b

    .line 219
    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 221
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_7b} :catch_7b
    .catchall {:try_start_2e .. :try_end_7b} :catchall_82

    .line 227
    :catch_7b
    :goto_7b
    monitor-exit p0

    return-void

    .line 229
    :cond_7d
    :try_start_7d
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindProxyService(Ljava/lang/String;I)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_82

    .line 230
    monitor-exit p0

    return-void

    :catchall_82
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bindSocketToInterfaceWrapper(IIILjava/lang/String;)V
    .registers 6

    const-string v0, "KnoxVpnPacProcessor"

    .line 915
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->jnibindSocketToInterface(IIILjava/lang/String;)I

    move-result p0

    .line 916
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindResult value is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    const-string p0, "Exception occured while trying to bind the socket to the interface "

    .line 918
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method public final checkIfRetryNeeded(Ljava/lang/String;)V
    .registers 7

    const-string v0, "KnoxVpnPacProcessor"

    .line 843
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 844
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v2

    if-lez v2, :cond_cc

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_cc

    .line 845
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 846
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_80

    .line 847
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading the pac url failed, going to retry for the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_73} :catch_f3

    .line 850
    :try_start_73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_7b} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7b} :catch_f3

    .line 852
    :catch_7b
    :try_start_7b
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto/16 :goto_107

    .line 853
    :cond_80
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_107

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading the pac url failed even after the final retry attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V

    goto :goto_107

    .line 858
    :cond_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading the pac url failed for the first time, start the retry process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto :goto_107

    .line 863
    :cond_cc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vpn profile is in unknown state, resetting the retry-Status to default value "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_107

    .line 865
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_f2} :catch_f3

    goto :goto_107

    .line 869
    :catch_f3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured while retry attempt to download pac file "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    :goto_107
    return-void
.end method

.method public final closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 828
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_5
    if-eqz p3, :cond_a

    .line 831
    invoke-virtual {p3}, Ljava/io/PrintStream;->close()V

    :cond_a
    if-eqz p2, :cond_17

    .line 834
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    const-string p0, "KnoxVpnPacProcessor"

    const-string p1, "IOException occured while trying to close the socket"

    .line 837
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public final downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16

    .line 706
    monitor-enter p1

    .line 707
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacUrlDownloadStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2aa

    return-void

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 714
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3
    :try_end_14
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_14} :catch_287
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_14} :catch_26b
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_14} :catch_252
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_14} :catch_218
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_1fd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_1cd
    .catchall {:try_start_c .. :try_end_14} :catchall_1c8

    if-nez v3, :cond_1b

    .line 820
    :try_start_16
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2aa

    return-void

    .line 716
    :cond_1b
    :try_start_1b
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getNetId()I

    move-result v9

    if-eqz p5, :cond_1c1

    const/4 v4, -0x1

    if-eq v9, v4, :cond_1c1

    .line 718
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v4, :cond_3e

    const-string v4, "KnoxVpnPacProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The host name to resolve is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnType()I

    move-result v4

    move-object v3, p0

    move-object v5, p2

    move v6, p4

    move-object v7, p5

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getValidEndPointAddress(ILjava/lang/String;ILjava/lang/String;I)Ljava/net/Socket;

    move-result-object p4
    :try_end_4b
    .catch Ljava/net/ConnectException; {:try_start_1b .. :try_end_4b} :catch_287
    .catch Ljava/net/SocketException; {:try_start_1b .. :try_end_4b} :catch_26b
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1b .. :try_end_4b} :catch_252
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_4b} :catch_218
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_4b} :catch_1fd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_4b} :catch_1e5
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4b} :catch_1cd
    .catchall {:try_start_1b .. :try_end_4b} :catchall_1c8

    if-eqz p4, :cond_1bb

    .line 721
    :try_start_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    invoke-virtual {p4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 723
    invoke-virtual {p4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 724
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5f
    .catch Ljava/net/ConnectException; {:try_start_4d .. :try_end_5f} :catch_1b6
    .catch Ljava/net/SocketException; {:try_start_4d .. :try_end_5f} :catch_1b1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4d .. :try_end_5f} :catch_1ac
    .catch Ljava/net/UnknownHostException; {:try_start_4d .. :try_end_5f} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5f} :catch_1a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_5f} :catch_19e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5f} :catch_19a
    .catchall {:try_start_4d .. :try_end_5f} :catchall_194

    .line 725
    :try_start_5f
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_69
    .catch Ljava/net/ConnectException; {:try_start_5f .. :try_end_69} :catch_192
    .catch Ljava/net/SocketException; {:try_start_5f .. :try_end_69} :catch_190
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5f .. :try_end_69} :catch_18e
    .catch Ljava/net/UnknownHostException; {:try_start_5f .. :try_end_69} :catch_18c
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_69} :catch_18a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_69} :catch_188
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_69} :catch_186
    .catchall {:try_start_5f .. :try_end_69} :catchall_183

    .line 727
    :try_start_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " HTTP/1.1\r"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Host: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p2, "Connection: close\r"

    .line 729
    invoke-virtual {v6, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p2, "\r"

    .line 730
    invoke-virtual {v6, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    .line 733
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    move v0, p3

    :goto_ae
    if-eqz p2, :cond_e9

    .line 735
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 737
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    move v0, v1

    goto :goto_ae

    :cond_bc
    if-eqz v0, :cond_e4

    .line 741
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v4, :cond_d8

    const-string v4, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The pac line printed is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_d8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    .line 743
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_e4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    goto :goto_ae

    .line 748
    :cond_e9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_173

    .line 749
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_f3
    .catch Ljava/net/ConnectException; {:try_start_69 .. :try_end_f3} :catch_1b8
    .catch Ljava/net/SocketException; {:try_start_69 .. :try_end_f3} :catch_1b3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_69 .. :try_end_f3} :catch_1ae
    .catch Ljava/net/UnknownHostException; {:try_start_69 .. :try_end_f3} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_f3} :catch_1a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_f3} :catch_1a0
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_f3} :catch_19c
    .catchall {:try_start_69 .. :try_end_f3} :catchall_181

    if-lez v0, :cond_173

    .line 753
    :try_start_f5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/net/IProxyService;->setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2
    :try_end_101
    .catch Ljava/lang/NullPointerException; {:try_start_f5 .. :try_end_101} :catch_102
    .catch Ljava/net/ConnectException; {:try_start_f5 .. :try_end_101} :catch_1b8
    .catch Ljava/net/SocketException; {:try_start_f5 .. :try_end_101} :catch_1b3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f5 .. :try_end_101} :catch_1ae
    .catch Ljava/net/UnknownHostException; {:try_start_f5 .. :try_end_101} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_101} :catch_1a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f5 .. :try_end_101} :catch_1a0
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_101} :catch_19c
    .catchall {:try_start_f5 .. :try_end_101} :catchall_181

    goto :goto_11b

    :catch_102
    :try_start_102
    const-string p2, "KnoxVpnPacProcessor"

    const-string v0, "Exception occured due to the pac service not intialized"

    .line 755
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {p0, p4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 757
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    move p2, p3

    :goto_11b
    if-eqz p2, :cond_161

    .line 761
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_140

    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "The pac file has been downloaded successfully,cancelling further retry attempts"

    .line 763
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_140
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, p1, p5, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    const-string p3, "KnoxVpnPacProcessor"

    .line 768
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The Misc value for the pac file has been set successfully "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    goto :goto_17e

    .line 771
    :cond_161
    invoke-virtual {p0, p4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 772
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_17e

    .line 776
    :cond_173
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17e
    .catch Ljava/net/ConnectException; {:try_start_102 .. :try_end_17e} :catch_1b8
    .catch Ljava/net/SocketException; {:try_start_102 .. :try_end_17e} :catch_1b3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_102 .. :try_end_17e} :catch_1ae
    .catch Ljava/net/UnknownHostException; {:try_start_102 .. :try_end_17e} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_17e} :catch_1a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_102 .. :try_end_17e} :catch_1a0
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_17e} :catch_19c
    .catchall {:try_start_102 .. :try_end_17e} :catchall_181

    :goto_17e
    move-object v0, p4

    goto/16 :goto_1c3

    :catchall_181
    move-exception p2

    goto :goto_197

    :catchall_183
    move-exception p2

    move-object v5, v0

    goto :goto_197

    :catch_186
    move-object v5, v0

    goto :goto_19c

    :catch_188
    move-object v5, v0

    goto :goto_1a0

    :catch_18a
    move-object v5, v0

    goto :goto_1a4

    :catch_18c
    move-object v5, v0

    goto :goto_1a9

    :catch_18e
    move-object v5, v0

    goto :goto_1ae

    :catch_190
    move-object v5, v0

    goto :goto_1b3

    :catch_192
    move-object v5, v0

    goto :goto_1b8

    :catchall_194
    move-exception p2

    move-object v5, v0

    move-object v6, v5

    :goto_197
    move-object v0, p4

    goto/16 :goto_2a6

    :catch_19a
    move-object v5, v0

    move-object v6, v5

    :catch_19c
    :goto_19c
    move-object v0, p4

    goto :goto_1cf

    :catch_19e
    move-object v5, v0

    move-object v6, v5

    :catch_1a0
    :goto_1a0
    move-object v0, p4

    goto :goto_1e7

    :catch_1a2
    move-object v5, v0

    move-object v6, v5

    :catch_1a4
    :goto_1a4
    move-object v0, p4

    goto/16 :goto_1ff

    :catch_1a7
    move-object v5, v0

    move-object v6, v5

    :catch_1a9
    :goto_1a9
    move-object v0, p4

    goto/16 :goto_21a

    :catch_1ac
    move-object v5, v0

    move-object v6, v5

    :catch_1ae
    :goto_1ae
    move-object v0, p4

    goto/16 :goto_254

    :catch_1b1
    move-object v5, v0

    move-object v6, v5

    :catch_1b3
    :goto_1b3
    move-object v0, p4

    goto/16 :goto_26d

    :catch_1b6
    move-object v5, v0

    move-object v6, v5

    :catch_1b8
    :goto_1b8
    move-object v0, p4

    goto/16 :goto_289

    .line 720
    :cond_1bb
    :try_start_1bb
    new-instance p2, Ljava/net/ConnectException;

    invoke-direct {p2}, Ljava/net/ConnectException;-><init>()V

    throw p2
    :try_end_1c1
    .catch Ljava/net/ConnectException; {:try_start_1bb .. :try_end_1c1} :catch_1b6
    .catch Ljava/net/SocketException; {:try_start_1bb .. :try_end_1c1} :catch_1b1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1bb .. :try_end_1c1} :catch_1ac
    .catch Ljava/net/UnknownHostException; {:try_start_1bb .. :try_end_1c1} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1c1} :catch_1a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bb .. :try_end_1c1} :catch_19e
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c1} :catch_19a
    .catchall {:try_start_1bb .. :try_end_1c1} :catchall_194

    :cond_1c1
    move-object v5, v0

    move-object v6, v5

    .line 820
    :goto_1c3
    :try_start_1c3
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_1c6
    .catchall {:try_start_1c3 .. :try_end_1c6} :catchall_2aa

    goto/16 :goto_2a3

    :catchall_1c8
    move-exception p2

    move-object v5, v0

    move-object v6, v5

    goto/16 :goto_2a6

    :catch_1cd
    move-object v5, v0

    move-object v6, v5

    :goto_1cf
    :try_start_1cf
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "Exception occured while trying to pac url "

    .line 816
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 818
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c3

    :catch_1e5
    move-object v5, v0

    move-object v6, v5

    :goto_1e7
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "cannot find the dns server to resolve the pac url"

    .line 812
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 814
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c3

    :catch_1fd
    move-object v5, v0

    move-object v6, v5

    :goto_1ff
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "IOException occured while trying to download the pac url "

    .line 807
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 809
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_1c3

    :catch_218
    move-object v5, v0

    move-object v6, v5

    :goto_21a
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "UnknownHostException occured while trying to download the pac url "

    .line 794
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_221
    .catchall {:try_start_1cf .. :try_end_221} :catchall_2a5

    const-wide/16 p2, 0x1388

    .line 796
    :try_start_223
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_226
    .catch Ljava/lang/InterruptedException; {:try_start_223 .. :try_end_226} :catch_238
    .catchall {:try_start_223 .. :try_end_226} :catchall_2a5

    .line 803
    :try_start_226
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 804
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_1c3

    :catch_238
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "Got Interruption while trying to resolve the domain name "

    .line 798
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 800
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24d
    .catchall {:try_start_226 .. :try_end_24d} :catchall_2a5

    .line 820
    :try_start_24d
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_2aa

    return-void

    :catch_252
    move-object v5, v0

    move-object v6, v5

    :goto_254
    :try_start_254
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "Downloading the pac url failed due to Interruption, close the existing connections"

    .line 790
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 792
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c3

    :catch_26b
    move-object v5, v0

    move-object v6, v5

    :goto_26d
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "SocketException occured while trying to download the pac url"

    .line 785
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 787
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto/16 :goto_1c3

    :catch_287
    move-object v5, v0

    move-object v6, v5

    :goto_289
    const-string p2, "KnoxVpnPacProcessor"

    const-string p3, "ConnectException occured while trying to download the pac url"

    .line 780
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 782
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_2a1
    .catchall {:try_start_254 .. :try_end_2a1} :catchall_2a5

    goto/16 :goto_1c3

    .line 822
    :goto_2a3
    :try_start_2a3
    monitor-exit p1

    return-void

    :catchall_2a5
    move-exception p2

    .line 820
    :goto_2a6
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 821
    throw p2

    :catchall_2aa
    move-exception p0

    .line 822
    monitor-exit p1
    :try_end_2ac
    .catchall {:try_start_2a3 .. :try_end_2ac} :catchall_2aa

    throw p0
.end method

.method public final extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x1

    .line 583
    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 585
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 586
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 587
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 589
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result p3

    move v8, p3

    goto :goto_22

    :cond_21
    move v8, v2

    .line 592
    :goto_22
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7b

    .line 593
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current status of the download thread of the profile "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {p3}, Ljava/lang/Thread;->isAlive()Z

    move-result p3

    if-eqz p3, :cond_74

    .line 595
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 597
    :cond_74
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_7b
    new-instance p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 600
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 601
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8e} :catch_c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8e} :catch_b1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8e} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8e} :catch_8f

    goto :goto_d2

    .line 613
    :catch_8f
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "error occured while trying to download the pac file after the vpn connection is established"

    .line 614
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 610
    :catch_a0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "error occured while trying to download the pac file due to some values being not intialized successfully"

    .line 611
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 607
    :catch_b1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "error occured while trying to download the pac file due to unknown port number"

    .line 608
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 604
    :catch_c2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "error occured while trying to download the pac file due to unknow url format, remove and create the profile again"

    .line 605
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d2
    return-void
.end method

.method public final getConfiguredUser(Ljava/lang/String;)I
    .registers 2

    .line 924
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 926
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v0, :cond_a

    .line 303
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 305
    :cond_a
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    return-object p0
.end method

.method public final getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v0, :cond_c

    .line 310
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 312
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-object p0
.end method

.method public getKnoxVpnProxyClientStatus()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    return-object p0
.end method

.method public final getPacUrlDownloadStatus(Ljava/lang/String;)Z
    .registers 4

    const-string p0, "KnoxVpnPacProcessor"

    const/4 v0, 0x0

    .line 560
    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 561
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 562
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1a} :catch_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_20

    if-eqz p1, :cond_1d

    goto :goto_2b

    :cond_1d
    const/4 p1, 0x1

    move v0, p1

    goto :goto_2b

    :catch_20
    const-string p1, " error occured while trying to get download status pac file"

    .line 572
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :catch_26
    const-string p1, "error occured while trying to get download status pac file due to some values being not intialized successfully"

    .line 570
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2b
    :goto_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check to see if the pac url has been downloaded successfully "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getPortFromProtocol(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_56

    goto :goto_2e

    :sswitch_c
    const-string/jumbo p0, "https"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_2e

    :cond_16
    const/4 v0, 0x2

    goto :goto_2e

    :sswitch_18
    const-string/jumbo p0, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_2e

    :cond_22
    const/4 v0, 0x1

    goto :goto_2e

    :sswitch_24
    const-string p0, "ftp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    packed-switch v0, :pswitch_data_64

    .line 631
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_37
    const/16 p0, 0x1bb

    goto :goto_3f

    :pswitch_3a
    const/16 p0, 0x50

    goto :goto_3f

    :pswitch_3d
    const/16 p0, 0x15

    .line 633
    :goto_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The pac file is going to be downloaded from the remote port "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxVpnPacProcessor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :sswitch_data_56
    .sparse-switch
        0x18d62 -> :sswitch_24
        0x310888 -> :sswitch_18
        0x5f008eb -> :sswitch_c
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
    .end packed-switch
.end method

.method public getProxyPortForProfile(Ljava/lang/String;)I
    .registers 4

    const-string v0, "KnoxVpnPacProcessor"

    .line 401
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/net/IProxyService;->getProxyPortForProfile(Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_e} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_3a

    .line 405
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown error occured for profile while querying for port "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 403
    :catch_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The knox vpn proxy service has not yet started for profile while querying for port "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const/4 p0, -0x1

    :goto_3a
    return p0
.end method

.method public final getProxyService(I)Lcom/android/net/IProxyService;
    .registers 3

    .line 334
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    .line 335
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/net/IProxyService;

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method

.method public getProxythreadStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "KnoxVpnPacProcessor"

    .line 425
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/net/IProxyService;->getProxythreadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_e} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_3b

    .line 429
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown error occured for profile while querying for proxy thread Status "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 427
    :catch_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The knox vpn proxy service has not yet started for profile while querying for proxy thread Status "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const-string p0, "IntialValue"

    :goto_3b
    return-object p0
.end method

.method public final getValidEndPointAddress(ILjava/lang/String;ILjava/lang/String;I)Ljava/net/Socket;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 646
    :try_start_3
    invoke-static {p2}, Llibcore/net/InetAddressUtils;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    const-string v2, "The pac url being entered is not of numeric form and need to do a dns look up"

    .line 648
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_e
    const/4 v3, 0x0

    if-nez v2, :cond_21

    .line 653
    :try_start_11
    invoke-static {p2, p5}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object p2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_26

    :catch_16
    const-string p0, "UnknownHostException occured while trying to query the ip address for the pac url domain name"

    .line 655
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0}, Ljava/net/UnknownHostException;-><init>()V

    throw p0

    :cond_21
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/net/InetAddress;

    aput-object v2, p2, v3

    :goto_26
    if-eqz p2, :cond_e3

    .line 663
    array-length v2, p2

    move-object v5, v1

    move-object v6, v5

    move v4, v3

    :goto_2c
    if-ge v4, v2, :cond_e2

    aget-object v7, p2, v4

    .line 665
    :try_start_30
    new-instance v8, Ljava/net/Socket;

    invoke-direct {v8}, Ljava/net/Socket;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_b7

    .line 666
    :try_start_35
    instance-of v5, v7, Ljava/net/Inet4Address;

    if-eqz v5, :cond_65

    const-string v5, "The pac file is going to be downloaded from an interface having ipv4 address"

    .line 667
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 669
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v5, :cond_5a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The resolved host address is a ipv4 address "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_5a
    new-instance v5, Ljava/net/InetSocketAddress;

    sget-object v7, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-direct {v5, v7, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_94

    .line 671
    :cond_65
    instance-of v5, v7, Ljava/net/Inet6Address;

    if-eqz v5, :cond_94

    const-string v5, "The pac file is going to be downloaded from an interface having ipv6 address"

    .line 672
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 674
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v5, :cond_8a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The resolved host address is a ipv6 address "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_8a
    new-instance v5, Ljava/net/InetSocketAddress;

    sget-object v7, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    invoke-direct {v5, v7, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 677
    :cond_94
    :goto_94
    invoke-virtual {v8}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 678
    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_a6

    .line 679
    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {p0, p1, p5, v5, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(IIILjava/lang/String;)V

    :cond_a6
    const/16 v5, 0x2710

    .line 682
    invoke-virtual {v8, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    if-eqz v6, :cond_d3

    .line 685
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v6, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v7, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_b5} :catch_b6

    goto :goto_d3

    :catch_b6
    move-object v5, v8

    .line 688
    :catch_b7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception occured while trying to connect to the pac url remote address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_d2

    .line 691
    :try_start_cd
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_de

    move-object v5, v1

    goto :goto_de

    :cond_d2
    move-object v8, v5

    :cond_d3
    :goto_d3
    if-eqz v8, :cond_dd

    .line 697
    invoke-virtual {v8}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_dd

    move-object v1, v8

    goto :goto_e3

    :cond_dd
    move-object v5, v8

    :catch_de
    :goto_de
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2c

    :cond_e2
    move-object v1, v5

    :cond_e3
    :goto_e3
    return-object v1
.end method

.method public final declared-synchronized getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2

    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_b

    .line 296
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 298
    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleScreenunlock()V
    .registers 6

    const-string v0, "KnoxVpnPacProcessor"

    .line 389
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to see if authentication dialog is needed after screenlock in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/net/IProxyService;->handleScreenunlock()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_c

    :catch_39
    const-string p0, "Failed to show the proxy auth screen on screen unlock; might be the proxy server has not started yet"

    .line 394
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method public final hasProxyService(I)Z
    .registers 3

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "hasProxyService is being called for the userId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KnoxVpnPacProcessor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isProxyThreadAlive(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "KnoxVpnPacProcessor"

    .line 437
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/net/IProxyService;->isProxyThreadAlive(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_e} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_3a

    .line 441
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown error occured for profile while querying for proxy thread alive "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 439
    :catch_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The knox vpn proxy service has not yet started for profile while querying for proxy thread alive "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const/4 p0, 0x0

    :goto_3a
    return p0
.end method

.method public isProxyThreadRunning(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "KnoxVpnPacProcessor"

    .line 413
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/net/IProxyService;->isProxyThreadRunning(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_e} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_3a

    .line 417
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown error occured for profile while querying for proxy thread running or not "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 415
    :catch_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The knox vpn proxy service has not yet started for profile while querying for proxy thread running or not "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const/4 p0, 0x0

    :goto_3a
    return p0
.end method

.method public native jnibindSocketToInterface(IIILjava/lang/String;)I
.end method

.method public final removeDownloadThreadDetails(Ljava/lang/String;)V
    .registers 2

    .line 874
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 875
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public final removePacInterface(I)V
    .registers 3

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removePacInterface is being called for the userId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KnoxVpnPacProcessor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2d

    .line 357
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-void
.end method

.method public resetInterfaceName(Ljava/lang/String;)V
    .registers 3

    .line 513
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/net/IProxyService;->resetInterface(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    const-string p0, "KnoxVpnPacProcessor"

    const-string p1, "error occured while trying to reset interface name"

    .line 515
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method

.method public final sendPacServiceStatus(ILjava/lang/String;)V
    .registers 7

    .line 316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 318
    :try_start_4
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 319
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    const-string/jumbo v3, "pac_info"

    .line 320
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    .line 321
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    .line 322
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    const-string p2, "com.samsung.android.knox.permission.KNOX_VPN_INTERNAL"

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_2d
    .catchall {:try_start_4 .. :try_end_27} :catchall_28

    goto :goto_2d

    :catchall_28
    move-exception p0

    .line 328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    throw p0

    .line 328
    :catch_2d
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7

    const-string v0, "KnoxVpnPacProcessor"

    .line 521
    :try_start_2
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne p3, v1, :cond_c

    const-string p0, "The proxy script is not being set since the pac url is empty or a static proxy has been configured"

    .line 522
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 525
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    if-nez v1, :cond_23

    const-string p2, "The proxy service has not been intialized while trying to set the proxy script, trying to bind again"

    .line 526
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindProxyService(Ljava/lang/String;I)V

    return-void

    .line 530
    :cond_23
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 531
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 532
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3e

    goto :goto_7e

    .line 538
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to download the pac url for the profile after the interface is up for the profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 540
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_63
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    .line 548
    :cond_6b
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_72} :catch_79
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_72} :catch_73

    goto :goto_7e

    :catch_73
    const-string p0, " error occured while trying to get current status pac file"

    .line 553
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :catch_79
    const-string p0, "error occured while trying to get current status pac file due to some values being not intialized successfully"

    .line 551
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    return-void
.end method

.method public setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 502
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object p0

    invoke-interface {p0, p3, p1, p2, v2}, Lcom/android/net/IProxyService;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 504
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checking if the Misc value has been set for the knox pac profile "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    goto :goto_2d

    :catch_28
    const-string p0, "Exception occurred while trying to set the misc value for the pac profile "

    .line 506
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return v1
.end method

.method public final setProxyService(ILjava/lang/Object;)V
    .registers 4

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setProxyService is being called for the userId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KnoxVpnPacProcessor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final startProxyServerForKnoxProfile(Ljava/lang/String;)I
    .registers 12

    .line 452
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_c

    return v1

    .line 455
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v5

    .line 456
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v6

    .line 457
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v4

    .line 458
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isproxyCredentialsPreDefined()Z

    move-result v7

    .line 459
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyServer()Ljava/lang/String;

    move-result-object v8

    .line 460
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyPort()I

    move-result v9

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    move-object v3, p1

    .line 462
    invoke-interface/range {v2 .. v9}, Lcom/android/net/IProxyService;->startProxyServerForKnoxProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)I

    move-result v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_32

    goto :goto_50

    :catch_32
    move-exception p0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured while trying to start the proxy server for the profile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxVpnPacProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return v1
.end method

.method public final startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .registers 11

    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 882
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    .line 884
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 885
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 888
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 889
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_30

    .line 891
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v3

    :cond_30
    move v7, v3

    if-eqz v2, :cond_95

    if-eqz v8, :cond_95

    if-eqz p1, :cond_95

    .line 894
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_95

    move-object v3, p0

    move-object v4, v2

    .line 895
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4d} :catch_84
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4d} :catch_72
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4d} :catch_60
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4e

    goto :goto_95

    .line 908
    :catch_4e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "retry attempt: error occured while trying to download the pac file"

    .line 909
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 905
    :catch_60
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "retry attempt: error occured while trying to download the pac file due to unknow url format"

    .line 906
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 902
    :catch_72
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "retry attempt: Invalid port value is defined when trying to download the pac url"

    .line 903
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 899
    :catch_84
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "retry attempt: Some profile values are not intialized when trying to download the pac url"

    .line 900
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    return-void
.end method

.method public stopPacSupport(Ljava/lang/String;)V
    .registers 6

    const-string v0, "KnoxVpnPacProcessor"

    .line 471
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 472
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 473
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_12
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    .line 477
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 478
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_26
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    .line 482
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 483
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->stopPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check to see if the pac support is removed for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_82

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/net/IProxyService;->stopProxyServerForKnoxProfile(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_67} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_68

    goto :goto_82

    .line 494
    :catch_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " error occured while trying to remove the pac script for the profile "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :catch_7d
    const-string p0, "error occured while trying to remove the pac support due to some values being not intialized successfully"

    .line 492
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-void
.end method

.method public declared-synchronized unBindPacService(I)V
    .registers 5

    monitor-enter p0

    .line 255
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 256
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 257
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removePacInterface(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 264
    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updatePermissionForAppsToaccessLocalHost(Ljava/lang/String;IILjava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p4

    if-eqz p4, :cond_5e

    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 367
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_31

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    goto :goto_5e

    .line 375
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToDenyAccessToLocalHost(I)V

    .line 376
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object p0

    invoke-virtual {p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceType()I

    move-result p4

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    goto :goto_5e

    .line 371
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToDenyAccessToLocalHost(I)V

    .line 372
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object p0

    invoke-virtual {p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceType()I

    move-result p4

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_5e

    .line 383
    :catch_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occurred while trying to apply rules to access local host for the vpn profile "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxVpnPacProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    return-void
.end method
