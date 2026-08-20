.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;
.super Landroid/os/Handler;
.source "SemWifiSwitchForIndividualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCommandHandler"
.end annotation


# static fields
.field private static final MSG_RUN_SHELL_COMMAND:I = 0x1

.field private static final MSG_RUN_SHELL_COMMAND_AGAIN:I = 0x2


# instance fields
.field private final NETD_SERVICE_NAME:Ljava/lang/String;

.field private final SUCCESS:Ljava/lang/String;

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;)Lcom/android/internal/net/IOemNetd;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Looper;)V
    .registers 3

    .line 1899
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 1900
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "netd"

    .line 1892
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->NETD_SERVICE_NAME:Ljava/lang/String;

    const-string p1, "SUCCESS"

    .line 1897
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->SUCCESS:Ljava/lang/String;

    return-void
.end method

.method private connectNativeNetdService()V
    .registers 4

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "netd"

    .line 1926
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->mNetdService:Landroid/net/INetd;

    if-nez v2, :cond_12

    return-void

    .line 1930
    :cond_12
    invoke-interface {v2}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-eqz v2, :cond_23

    .line 1932
    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    move-result v1

    goto :goto_2c

    :cond_23
    const-string v2, "connectNativeNetdService: mOemNetd is null"

    .line 1934
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_29

    goto :goto_2c

    :catch_29
    const/4 v2, 0x0

    .line 1937
    iput-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->mNetdService:Landroid/net/INetd;

    :goto_2c
    if-nez v1, :cond_39

    .line 1940
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_39

    const-string p0, "connectNativeNetdService: connection failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method private runNetdShellCommand(Ljava/lang/String;Z)V
    .registers 4

    .line 1945
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_7

    .line 1946
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->connectNativeNetdService()V

    .line 1949
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_18

    .line 1950
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;-><init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;Ljava/lang/String;Z)V

    .line 1980
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1f

    :cond_18
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    const-string p1, "Netd Service is null"

    .line 1982
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1905
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    goto :goto_31

    .line 1912
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1913
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "NetdCommandHandler MSG_RUN_SHELL_COMMAND_AGAIN"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :cond_1a
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->runNetdShellCommand(Ljava/lang/String;Z)V

    goto :goto_31

    .line 1907
    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1908
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "NetdCommandHandler MSG_RUN_SHELL_COMMAND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v1, 0x0

    .line 1909
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->runNetdShellCommand(Ljava/lang/String;Z)V

    .line 1920
    :goto_31
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
