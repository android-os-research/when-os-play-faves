.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
.source "SemWifiApContinuityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->startDiscovery()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .registers 5
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",continuityNearbyMyDevice:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MHSMcf:Client"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_35

    .line 226
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_35
    return-void
.end method
