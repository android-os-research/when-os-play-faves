.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 6869
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    .line 6870
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6871
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6875
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 6876
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_34

    :pswitch_a
    goto :goto_1d

    .line 6884
    :pswitch_b
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifySeek(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_1d

    .line 6881
    :pswitch_11
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyStop(Landroid/media/MediaPlayer$TimeProvider;)V

    .line 6882
    goto :goto_1d

    .line 6878
    :pswitch_17
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTimedEvent(Landroid/media/MediaPlayer$TimeProvider;Z)V

    .line 6879
    nop

    .line 6885
    :goto_1d
    goto :goto_32

    .line 6894
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 6895
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_40

    goto :goto_32

    .line 6897
    :pswitch_29
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTrackData(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V

    .line 6902
    :cond_32
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_17
        :pswitch_a
        :pswitch_11
        :pswitch_b
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x4
        :pswitch_29
    .end packed-switch
.end method
