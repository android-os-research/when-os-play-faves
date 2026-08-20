.class Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$3;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    .line 455
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$3;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 458
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$3;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetisRunning(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Z

    move-result v0

    if-eqz v0, :cond_52

    if-nez p1, :cond_b

    goto :goto_52

    .line 461
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 462
    .local v0, "audioPlayingPIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 463
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    if-nez v2, :cond_23

    goto :goto_14

    .line 465
    :cond_23
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 466
    .local v3, "isPlaying":Z
    :goto_2d
    if-eqz v3, :cond_3a

    .line 467
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetClientPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v3    # "isPlaying":Z
    :cond_3a
    goto :goto_14

    .line 471
    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$3;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 472
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$3;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 474
    :cond_51
    return-void

    .line 459
    .end local v0    # "audioPlayingPIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_52
    :goto_52
    return-void
.end method
