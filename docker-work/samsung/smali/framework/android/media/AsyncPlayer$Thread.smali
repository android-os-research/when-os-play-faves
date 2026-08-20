.class final Landroid/media/AsyncPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AsyncPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AsyncPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/media/AsyncPlayer;)V
    .registers 4

    .line 81
    iput-object p1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmTag(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 87
    :goto_0
    const/4 v0, 0x0

    .line 89
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmCmdQueue(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_8
    iget-object v2, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v2}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmCmdQueue(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AsyncPlayer$Command;

    move-object v0, v2

    .line 92
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_a3

    .line 94
    iget v1, v0, Landroid/media/AsyncPlayer$Command;->code:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_a6

    goto :goto_7e

    .line 101
    :pswitch_1d
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmPlayer(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    sub-long/2addr v3, v5

    .line 103
    .local v3, "delay":J
    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-lez v1, :cond_54

    .line 104
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmTag(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msecs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_54
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmPlayer(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 107
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmPlayer(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 108
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1, v2}, Landroid/media/AsyncPlayer;->-$$Nest$fputmPlayer(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)V

    .line 109
    .end local v3    # "delay":J
    goto :goto_7e

    .line 110
    :cond_6c
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmTag(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "STOP command without a player"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 97
    :pswitch_78
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1, v0}, Landroid/media/AsyncPlayer;->-$$Nest$mstartSound(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V

    .line 98
    nop

    .line 115
    :goto_7e
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmCmdQueue(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 116
    :try_start_85
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$fgetmCmdQueue(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_9d

    .line 121
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1, v2}, Landroid/media/AsyncPlayer;->-$$Nest$fputmThread(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)V

    .line 122
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v1}, Landroid/media/AsyncPlayer;->-$$Nest$mreleaseWakeLock(Landroid/media/AsyncPlayer;)V

    .line 123
    monitor-exit v3

    return-void

    .line 125
    :cond_9d
    monitor-exit v3

    .line 126
    .end local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    goto/16 :goto_0

    .line 125
    .restart local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    :catchall_a0
    move-exception v1

    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_85 .. :try_end_a2} :catchall_a0

    throw v1

    .line 92
    :catchall_a3
    move-exception v2

    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v2

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_78
        :pswitch_1d
    .end packed-switch
.end method
