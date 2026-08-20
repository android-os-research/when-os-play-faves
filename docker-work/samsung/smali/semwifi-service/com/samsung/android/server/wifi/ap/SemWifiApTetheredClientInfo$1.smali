.class Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;
.super Ljava/lang/Object;
.source "SemWifiApTetheredClientInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 72
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mDeepCopyLastTetheredClients is cleared"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    const-string v2, "mDeepCopyLastTetheredClients is cleared"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmDeepCopyLastTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p0
.end method
