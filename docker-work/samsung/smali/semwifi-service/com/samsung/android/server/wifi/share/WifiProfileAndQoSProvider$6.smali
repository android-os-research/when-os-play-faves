.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;
.super Ljava/lang/Object;
.source "WifiProfileAndQoSProvider.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToBindService()V
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmCallbackLock(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 505
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfServiceCallbacks(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 506
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 507
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    if-eqz v1, :cond_22

    .line 509
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onFailedToBindService()V

    .line 511
    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 513
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onServiceConnected()V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmCallbackLock(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 494
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfServiceCallbacks(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    if-eqz v1, :cond_11

    .line 496
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onServiceConnected()V

    goto :goto_11

    .line 499
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p0
.end method
