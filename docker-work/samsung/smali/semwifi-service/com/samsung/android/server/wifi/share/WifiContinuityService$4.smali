.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;
.super Ljava/lang/Object;
.source "WifiContinuityService.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerWifiConfigListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6

    .line 218
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 219
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "SemWifi.Continuity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove a network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaddedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 222
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetsharedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    move-result-object p0

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public onNetworkReset()V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 229
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "SemWifi.Continuity"

    const-string v2, "remove all networks"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaddedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 231
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetsharedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 232
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p0
.end method
