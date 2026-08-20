.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mDisplayInfo:Landroid/view/DisplayInfo;

.field public volatile blacklist mEventsMask:J

.field public final greylist-max-o mListener:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Looper;J)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "eventsMask"    # J

    .line 1621
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1617
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 1622
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1623
    iput-wide p3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    .line 1624
    return-void
.end method


# virtual methods
.method public greylist-max-o clearEvents()V
    .registers 2

    .line 1632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1633
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1641
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    .line 1657
    :pswitch_8
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5e

    .line 1658
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    goto :goto_5e

    .line 1662
    :pswitch_19
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5e

    .line 1663
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayRemoved(I)V

    goto :goto_5e

    .line 1648
    :pswitch_2a
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5e

    .line 1649
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayInfo;

    .line 1650
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_4d

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1651
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1652
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    .line 1654
    .end local v0    # "newInfo":Landroid/view/DisplayInfo;
    :cond_4d
    goto :goto_5e

    .line 1643
    :pswitch_4e
    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5e

    .line 1644
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    .line 1667
    :cond_5e
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_2a
        :pswitch_19
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist sendDisplayEvent(IILandroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;

    .line 1627
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0, p3}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1628
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1629
    return-void
.end method

.method public blacklist setEventsMask(J)V
    .registers 3
    .param p1, "newEventsMask"    # J

    .line 1636
    iput-wide p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    .line 1637
    return-void
.end method
