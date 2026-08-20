.class Lcom/sec/ims/options/CapabilityListener$1;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "CapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/CapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/options/CapabilityListener;


# direct methods
.method constructor <init>(Lcom/sec/ims/options/CapabilityListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/ims/options/CapabilityListener;

    .line 79
    iput-object p1, p0, Lcom/sec/ims/options/CapabilityListener$1;->this$0:Lcom/sec/ims/options/CapabilityListener;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .registers 6
    .param p2, "capa"    # Lcom/sec/ims/options/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityListener$1;->this$0:Lcom/sec/ims/options/CapabilityListener;

    iget-object v0, v0, Lcom/sec/ims/options/CapabilityListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/Pair;

    .line 97
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .registers 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityListener$1;->this$0:Lcom/sec/ims/options/CapabilityListener;

    iget-object v0, v0, Lcom/sec/ims/options/CapabilityListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p2, "capaList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityListener$1;->this$0:Lcom/sec/ims/options/CapabilityListener;

    iget-object v0, v0, Lcom/sec/ims/options/CapabilityListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityListener$1;->this$0:Lcom/sec/ims/options/CapabilityListener;

    iget-object v0, v0, Lcom/sec/ims/options/CapabilityListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    return-void
.end method
