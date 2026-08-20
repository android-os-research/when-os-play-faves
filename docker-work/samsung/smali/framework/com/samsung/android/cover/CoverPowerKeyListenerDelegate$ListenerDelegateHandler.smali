.class Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverPowerKeyListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final greylist mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;


# direct methods
.method constructor greylist <init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    .line 93
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    iput-object p2, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    if-eqz v0, :cond_b

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;->onPowerKeyPress()V

    .line 102
    :cond_b
    return-void
.end method
