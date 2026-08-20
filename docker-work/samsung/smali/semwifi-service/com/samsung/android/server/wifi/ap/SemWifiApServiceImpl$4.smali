.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->handleBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onStateChanged(ILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 597
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWifiApSmartState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 598
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWifiApSmartMhsMac(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmRegisteredWifiApSmartCallbacks(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 600
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_46

    .line 603
    :try_start_25
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_46

    goto :goto_19

    :catch_29
    move-exception v1

    :try_start_2a
    const-string v2, "SemWifiApServiceImpl"

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChanged: remote exception -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_46

    goto :goto_19

    .line 609
    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method
