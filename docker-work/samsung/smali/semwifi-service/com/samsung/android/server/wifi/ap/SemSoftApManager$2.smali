.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "SemSoftApManager"

    const-string p1, "CellularNetworkCallback`s onAvailable"

    .line 327
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 8
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_61

    const/4 v0, 0x2

    .line 337
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_61

    const/16 v0, 0x10

    .line 338
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->hasMessages(I)Z

    move-result v1

    const-string v3, "SemSoftApManager"

    if-eqz v1, :cond_2a

    const-string v1, "waiting for DUN"

    .line 340
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    :cond_2a
    if-eqz v0, :cond_35

    .line 344
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->removeMessages(I)V

    .line 346
    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NET_CAPABILITY_VALIDATED"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " valid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " nc:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    const-string p0, "SemSoftApManager"

    const-string p1, "CellularNetworkCallback`s onLost"

    .line 332
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
