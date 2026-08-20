.class final Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiDisplayParameterListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mListener:Landroid/hardware/display/SemWifiDisplayParameterListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;)Landroid/hardware/display/SemWifiDisplayParameterListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->mListener:Landroid/hardware/display/SemWifiDisplayParameterListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/SemWifiDisplayParameterListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1864
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1865
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->mListener:Landroid/hardware/display/SemWifiDisplayParameterListener;

    .line 1866
    return-void
.end method


# virtual methods
.method public blacklist clearEvents()V
    .registers 2

    .line 1875
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1876
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1880
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    goto :goto_17

    .line 1882
    :pswitch_6
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "onParametersChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->mListener:Landroid/hardware/display/SemWifiDisplayParameterListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/hardware/display/SemWifiDisplayParameterListener;->onParametersChanged(Ljava/util/List;)V

    .line 1886
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x11
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist sendWifiDisplayParameterEvent(ILjava/util/List;)V
    .registers 4
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 1869
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1870
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1871
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1872
    return-void
.end method
