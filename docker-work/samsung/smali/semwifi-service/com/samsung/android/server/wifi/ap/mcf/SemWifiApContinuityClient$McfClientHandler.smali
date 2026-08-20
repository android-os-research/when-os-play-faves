.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;
.super Landroid/os/Handler;
.source "SemWifiApContinuityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "McfClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;Landroid/os/Looper;)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    goto/16 :goto_c3

    .line 86
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p1

    const-string v1, "MHSMcf:Client"

    if-nez p1, :cond_30

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_START_ADVERTISE ,getDiscoveryManager() is null, isServiceBinded:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->removeMessages(I)V

    return-void

    .line 91
    :cond_30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object p1

    .line 92
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getNearbyMyDevices()Ljava/util/List;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$mgetMHSDiscoverData(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)[B

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->-$$Nest$fgetisDiscoveryGoingOn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z

    move-result v4

    if-nez v4, :cond_58

    const-string p0, "DiscoveryGoing stopped,so dont send messages"

    .line 95
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 97
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_67

    const-string p1, "getNearbyMyDevices is zero"

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->removeMessages(I)V

    goto :goto_c3

    .line 101
    :cond_67
    array-length v4, v3

    if-eqz v4, :cond_b3

    .line 102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6e
    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    .line 103
    invoke-interface {v4}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-interface {v4}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getModelName()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_6e

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",modelId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",message:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-interface {p1, v5, v3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->sendMessage(Ljava/lang/String;[B)Z

    goto :goto_6e

    :cond_b3
    const-string p1, "CMD_START_ADVERTISE, message is null"

    .line 111
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_b8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_c3

    const-wide/16 v1, 0x1388

    .line 114
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c3
    :goto_c3
    return-void
.end method
