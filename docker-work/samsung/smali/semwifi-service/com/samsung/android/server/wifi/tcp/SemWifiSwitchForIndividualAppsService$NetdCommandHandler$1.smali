.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;
.super Ljava/lang/Thread;
.source "SemWifiSwitchForIndividualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->runNetdShellCommand(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$isRetry:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;Ljava/lang/String;Z)V
    .registers 4

    .line 1950
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$isRetry:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1952
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rNC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 1955
    :goto_24
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 1956
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "TCPMONITOR"

    .line 1957
    rem-int/lit8 v5, v2, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    .line 1956
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1959
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1960
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rNC(encode):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_60
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->-$$Nest$fgetmOemNetd(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;)Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1962
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rNC(result):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1965
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const-string v0, "SUCCESS"

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mrunShellCommandResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V

    goto :goto_de

    .line 1967
    :cond_a7
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$isRetry:Z

    if-nez v0, :cond_b4

    .line 1968
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->val$command:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mrunDelayedNetdShellCommandAgain(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V

    .line 1970
    :cond_b4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler$1;->this$1:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$NetdCommandHandler;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mrunShellCommandResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_bb} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_bb} :catch_bc

    goto :goto_de

    :catch_bc
    move-exception p0

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rNC - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_de

    :catch_d5
    move-exception p0

    const-string v0, "rNC - RemoteException"

    .line 1973
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_de
    return-void
.end method
