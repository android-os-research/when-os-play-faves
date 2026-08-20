.class final Landroid/view/Choreographer$FrameHandler;
.super Landroid/os/Handler;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor blacklist <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1186
    iput-object p1, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    .line 1187
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1188
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 1200
    :pswitch_6
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->doScheduleCallback(I)V

    goto :goto_24

    .line 1197
    :pswitch_e
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->doScheduleVsync()V

    .line 1198
    goto :goto_24

    .line 1194
    :pswitch_14
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    new-instance v4, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1195
    nop

    .line 1203
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_14
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
