.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "SemWifiOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;->registerAudioAndUsageStatsWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_96

    .line 447
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 448
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 449
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    .line 450
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result v5

    if-eqz v5, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VOICE_COMMUNICATION audioMode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SemWifiOptimizer"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_47
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    move-result v5

    if-ne v5, v6, :cond_10

    .line 452
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_10

    const/4 v5, 0x3

    if-ne v0, v5, :cond_10

    .line 454
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v0

    move v1, v3

    goto :goto_60

    :cond_5e
    move v0, v4

    move v1, v0

    :goto_60
    const/4 v2, 0x4

    if-ne v1, v3, :cond_81

    .line 461
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateVoipCalling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result v1

    if-nez v1, :cond_96

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 462
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object v1

    invoke-static {v1, v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_96

    .line 467
    :cond_81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateVoipCalling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result v0

    if-ne v0, v3, :cond_96

    .line 468
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object v0

    invoke-static {v0, v2, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->updateAudioState(Ljava/util/List;)V

    .line 477
    :cond_a7
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    return-void
.end method
