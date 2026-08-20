.class public Lcom/android/server/VcnManagementService$TrackingNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VcnManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackingNetworkCallback"
.end annotation


# instance fields
.field public final mCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public static bridge synthetic -$$Nest$mrequiresRestartForCarrierWifi(Lcom/android/server/VcnManagementService$TrackingNetworkCallback;Landroid/net/NetworkCapabilities;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->requiresRestartForCarrierWifi(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/VcnManagementService;)V
    .registers 2

    .line 1282
    iput-object p1, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 1283
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$TrackingNetworkCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;-><init>(Lcom/android/server/VcnManagementService;)V

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    const-string v0, "TrackingNetworkCallback:"

    .line 1320
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mCaps:"

    .line 1323
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1325
    iget-object v0, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    monitor-enter v0

    .line 1326
    :try_start_14
    iget-object p0, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 1329
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_55

    .line 1330
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1331
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1333
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_55
    move-exception p0

    .line 1329
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 1287
    iget-object v0, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    monitor-enter v0

    .line 1288
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 1294
    iget-object v0, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    monitor-enter v0

    .line 1295
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final requiresRestartForCarrierWifi(Landroid/net/NetworkCapabilities;)Z
    .registers 8

    const/4 v0, 0x1

    .line 1300
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_51

    .line 1304
    :cond_f
    iget-object v1, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    monitor-enter v1

    .line 1305
    :try_start_12
    iget-object p0, p0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 1306
    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1307
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/16 p0, 0xd

    .line 1309
    invoke-virtual {v3, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    .line 1310
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eq v3, p0, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    monitor-exit v1

    return v0

    .line 1313
    :cond_4c
    monitor-exit v1

    return v2

    :catchall_4e
    move-exception p0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_4e

    throw p0

    :cond_51
    :goto_51
    return v2
.end method
