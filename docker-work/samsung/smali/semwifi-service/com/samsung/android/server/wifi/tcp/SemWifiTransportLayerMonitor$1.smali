.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "SemWifiTransportLayerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setAudioPlaybackCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V
    .registers 2

    .line 549
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3c

    .line 555
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 558
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 559
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 561
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/16 v4, 0xa

    .line 562
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    const/4 v5, 0x0

    .line 561
    invoke-virtual {v3, v4, v1, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 567
    :cond_3c
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    return-void
.end method
