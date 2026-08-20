.class Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverStateListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final greylist mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;


# direct methods
.method constructor greylist <init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 80
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    iput-object p2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    if-eqz v0, :cond_21

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_22

    goto :goto_21

    .line 92
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_13

    move v1, v2

    :cond_13
    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_21

    .line 89
    :pswitch_17
    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1e

    move v1, v2

    :cond_1e
    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    .line 96
    :cond_21
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method
