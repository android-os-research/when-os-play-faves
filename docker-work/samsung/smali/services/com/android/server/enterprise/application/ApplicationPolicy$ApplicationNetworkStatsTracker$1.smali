.class public Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V
    .registers 2

    .line 1808
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    :try_start_0
    const-string/jumbo p1, "networkInfo"

    .line 1814
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_5b

    .line 1816
    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->-$$Nest$mgetNetworkStateString(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Disconnected"

    .line 1818
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1819
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->-$$Nest$fputpreviousNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)V

    .line 1820
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1821
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->-$$Nest$fgetpreviousNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->-$$Nest$misMobileNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x1

    .line 1822
    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_3e

    :cond_3b
    const/4 v1, 0x0

    .line 1824
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1826
    :goto_3e
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_45
    const-string v0, "Connected"

    .line 1828
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 1829
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->-$$Nest$fputcurrentNetwork(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p0

    .line 1834
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5b
    :goto_5b
    return-void
.end method
