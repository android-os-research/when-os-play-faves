.class Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;
.super Landroid/os/Handler;
.source "AudioVolumeGroupChangeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;


# direct methods
.method constructor blacklist <init>(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 70
    iput-object p1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;->this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$VolumeGroupCallback;>;"
    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;->this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-static {v1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->-$$Nest$fgetmListeners(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 79
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 83
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$VolumeGroupCallback;>;"
    :cond_21
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;->this$0:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->-$$Nest$fgetmListeners(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$VolumeGroupCallback;>;"
    :cond_2d
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_54

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 88
    return-void

    .line 91
    :cond_35
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_58

    goto :goto_53

    .line 93
    :pswitch_3b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$VolumeGroupCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager$VolumeGroupCallback;->onAudioVolumeGroupChanged(II)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 97
    .end local v1    # "i":I
    :cond_52
    nop

    .line 102
    :goto_53
    return-void

    .line 86
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$VolumeGroupCallback;>;"
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    nop

    :pswitch_data_58
    .packed-switch 0x3e8
        :pswitch_3b
    .end packed-switch
.end method
