.class public Lcom/android/server/enterprise/wifi/WifiPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .registers 2

    .line 2933
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 2936
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiPolicyService"

    .line 2937
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 2938
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 p1, 0x4

    const-string/jumbo v0, "wifi_state"

    .line 2939
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1e

    if-nez p1, :cond_a2

    .line 2942
    :cond_1e
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-$$Nest$fgetmWifiState(Lcom/android/server/enterprise/wifi/WifiPolicy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_a2

    .line 2943
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-$$Nest$fgetmWifiState(Lcom/android/server/enterprise/wifi/WifiPolicy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-ne p1, p2, :cond_38

    const-string p0, "Enabling Wifi"

    goto :goto_3a

    :cond_38
    const-string p0, "Disabling Wifi"

    :goto_3a
    move-object v5, p0

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 2946
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "WifiPolicy"

    .line 2945
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :cond_48
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2949
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5a

    .line 2950
    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-$$Nest$sfputisBootCompleted(Z)V

    .line 2951
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-$$Nest$mmigrateWifiNetworkIfNeeded(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    goto :goto_a2

    :cond_5a
    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 2952
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const/4 p1, 0x0

    const-string v0, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 2953
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2954
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V

    goto :goto_a2

    :cond_6f
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 2955
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 p1, -0x1

    const-string v1, "changeReason"

    .line 2956
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2957
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reason = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_a2

    .line 2961
    new-instance p1, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$1;)V

    .line 2966
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2967
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_a2
    :goto_a2
    return-void
.end method
