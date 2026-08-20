.class Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "LedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final greylist mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;


# direct methods
.method constructor greylist <init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .line 77
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    iput-object p2, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    if-eqz v0, :cond_15

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    goto :goto_15

    .line 86
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 92
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_15
    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
