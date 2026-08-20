.class Lcom/sec/epdg/EpdgManager$2;
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

    .line 88
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-direct {p0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 91
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 92
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgAvailable(III)V

    .line 93
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 94
    :cond_1a
    return-void
.end method

.method public onEpdgDeregister(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 109
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 110
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgDeregister(I)V

    .line 111
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 112
    :cond_1a
    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 139
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 140
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverEnableChanged(IZ)V

    .line 141
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 142
    :cond_1a
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 98
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverResult(IIILjava/lang/String;)V

    .line 99
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 100
    :cond_1a
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 115
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 116
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V

    .line 117
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 118
    :cond_1a
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 122
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V

    .line 123
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 124
    :cond_1a
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 103
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 104
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgRegister(IZ)V

    .line 105
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 106
    :cond_1a
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 134
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgReleaseCall(I)V

    .line 135
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 136
    :cond_1a
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 127
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 128
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgShowPopup(II)V

    .line 129
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_a

    .line 130
    :cond_1a
    return-void
.end method
