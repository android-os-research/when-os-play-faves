.class Landroid/net/LowLatencyModeManager$1;
.super Landroid/os/Handler;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LowLatencyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LowLatencyModeManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/LowLatencyModeManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/LowLatencyModeManager;

    .line 67
    iput-object p1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    if-nez p1, :cond_3

    .line 71
    return-void

    .line 74
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "error":I
    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "slotId"

    packed-switch v1, :pswitch_data_ee

    goto/16 :goto_ed

    .line 82
    :pswitch_17
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get latency done, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    .line 83
    if-nez v0, :cond_b9

    .line 84
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 86
    .local v1, "buf":[B
    if-eqz v1, :cond_b1

    array-length v3, v1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_42

    goto :goto_b1

    .line 90
    :cond_42
    iget-object v3, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get latency settings from modem, ul:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",dl:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",prio:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x2

    aget-byte v8, v1, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",ets:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x3

    aget-byte v9, v1, v8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    .line 92
    new-instance v3, Landroid/net/LowLatencyModeManager$LatencyResult;

    aget-byte v4, v1, v5

    aget-byte v9, v1, v6

    aget-byte v7, v1, v7

    if-ne v7, v6, :cond_90

    move v7, v6

    goto :goto_91

    :cond_90
    move v7, v5

    :goto_91
    aget-byte v8, v1, v8

    if-ne v8, v6, :cond_96

    move v5, v6

    :cond_96
    invoke-direct {v3, v4, v9, v7, v5}, Landroid/net/LowLatencyModeManager$LatencyResult;-><init>(IIZZ)V

    .line 93
    .local v3, "result":Landroid/net/LowLatencyModeManager$LatencyResult;
    iget-object v4, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-static {v4}, Landroid/net/LowLatencyModeManager;->-$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;

    move-result-object v4

    if-eqz v4, :cond_b9

    .line 94
    iget-object v4, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-static {v4}, Landroid/net/LowLatencyModeManager;->-$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/LowLatencyModeManager$LatencyCallback;->onGetLatencyDone(Landroid/net/LowLatencyModeManager$LatencyResult;)V

    .line 95
    iget-object v4, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/net/LowLatencyModeManager;->-$$Nest$fputmCallback(Landroid/net/LowLatencyModeManager;Landroid/net/LowLatencyModeManager$LatencyCallback;)V

    goto :goto_b9

    .line 87
    .end local v3    # "result":Landroid/net/LowLatencyModeManager$LatencyResult;
    :cond_b1
    :goto_b1
    iget-object v2, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    const-string v3, "get latency wrong result format"

    invoke-static {v2, v3}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    .line 88
    goto :goto_ed

    .line 98
    .end local v1    # "buf":[B
    :cond_b9
    :goto_b9
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LowLatencyModeManager;->-$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V

    .line 99
    goto :goto_ed

    .line 78
    :pswitch_c7
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set latency done, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/LowLatencyModeManager;->-$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Landroid/net/LowLatencyModeManager$1;->this$0:Landroid/net/LowLatencyModeManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LowLatencyModeManager;->-$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V

    .line 80
    nop

    .line 104
    :goto_ed
    return-void

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_17
    .end packed-switch
.end method
