.class Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApTetheredClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApTetheredClientInfoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    const-string v0, "wifi_state"

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.net.wifi.extra.WIFI_AP_MODE"

    .line 194
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_92

    .line 196
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    const-string v2, "MHS enabled"

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MHS enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    const-class v2, Landroid/net/TetheringManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fputmTetheringManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Landroid/net/TetheringManager;)V

    .line 199
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheringManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/net/TetheringManager;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 200
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, " Registering tethered client callback"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fputisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Z)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheringManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/net/TetheringManager;

    move-result-object p1

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheringCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/net/TetheringManager$TetheringEventCallback;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    goto :goto_85

    .line 203
    :cond_74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z

    move-result p0

    if-nez p0, :cond_85

    .line 204
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, " mTetheringManager is null, error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    const/4 p0, 0x2

    if-ne p2, p0, :cond_8d

    .line 207
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfputmIsLOHSmode(Z)V

    goto/16 :goto_111

    .line 209
    :cond_8d
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfputmIsLOHSmode(Z)V

    goto/16 :goto_111

    :cond_92
    const/16 p1, 0xb

    if-eq v0, p1, :cond_9a

    const/16 p1, 0xe

    if-ne v0, p1, :cond_111

    .line 212
    :cond_9a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fputnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;I)V

    .line 213
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    const-string p2, "MHS disabled"

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MHS disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 216
    :try_start_b6
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fputmDeepCopyLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 217
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmClearDeepCopyObject(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_e7

    .line 218
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmClearDeepCopyObject(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    :cond_e7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmClearDeepCopyObject(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 222
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemWifiApTetheredClientInfoReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fputmLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 223
    monitor-exit p1

    goto :goto_111

    :catchall_10e
    move-exception p0

    monitor-exit p1
    :try_end_110
    .catchall {:try_start_b6 .. :try_end_110} :catchall_10e

    throw p0

    :cond_111
    :goto_111
    return-void
.end method
