.class Lcom/sec/epdg/EpdgManager$1;
.super Lcom/sec/epdg/IEpdgHandoverListener$Stub;
.source "EpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgManager;

    .line 29
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-direct {p0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 32
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 33
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgAvailable(III)V

    .line 34
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 35
    :cond_1a
    return-void
.end method

.method public onEpdgDeregister(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 50
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 51
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgDeregister(I)V

    .line 52
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 53
    :cond_1a
    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 82
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverEnableChanged(IZ)V

    .line 83
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 84
    :cond_1a
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 39
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverResult(IIILjava/lang/String;)V

    .line 40
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 41
    :cond_1a
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 56
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 57
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V

    .line 58
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 59
    :cond_1a
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 63
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V

    .line 64
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 65
    :cond_1a
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 44
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 45
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgRegister(IZ)V

    .line 46
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 47
    :cond_1a
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 74
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 75
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgReleaseCall(I)V

    .line 76
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 77
    :cond_1a
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 68
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 69
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgShowPopup(II)V

    .line 70
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 71
    :cond_1a
    return-void
.end method
