.class Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
.super Landroid/os/Handler;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualifiedNetworksServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 223
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    .line 224
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 225
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 230
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 231
    .local v0, "slotIndex":I
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    .line 233
    .local v1, "provider":Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_d4

    goto/16 :goto_d2

    .line 284
    :pswitch_15
    if-nez v1, :cond_19

    goto/16 :goto_d2

    .line 285
    :cond_19
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monUpdateHandoverEnabled(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I)V

    goto/16 :goto_d2

    .line 253
    :pswitch_20
    if-eqz v1, :cond_d2

    .line 254
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 255
    .local v2, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    invoke-virtual {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->reportThrottleStatusChanged(Ljava/util/List;)V

    .line 256
    .end local v2    # "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    goto/16 :goto_d2

    .line 277
    :pswitch_2b
    if-nez v1, :cond_2f

    goto/16 :goto_d2

    .line 278
    :cond_2f
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v1, v2, v3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monUpdateQualifiedNetworkTypes(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V

    .line 279
    goto/16 :goto_d2

    .line 267
    :pswitch_3a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 268
    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    .line 269
    if-eqz v1, :cond_59

    .line 270
    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    .line 267
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 273
    .end local v2    # "i":I
    :cond_5c
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 274
    goto :goto_d2

    .line 260
    :pswitch_66
    if-eqz v1, :cond_d2

    .line 261
    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    .line 262
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d2

    .line 235
    :pswitch_75
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 236
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network availability provider for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already existed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 238
    return-void

    .line 241
    :cond_a0
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-virtual {v2, v0}, Landroid/telephony/data/QualifiedNetworksService;->onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_b9

    .line 243
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    .line 246
    .local v2, "callback":Landroid/telephony/data/IQualifiedNetworksServiceCallback;
    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$mregisterForQualifiedNetworkTypesChanged(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    goto :goto_d2

    .line 248
    .end local v2    # "callback":Landroid/telephony/data/IQualifiedNetworksServiceCallback;
    :cond_b9
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create network availability provider. slot index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 251
    nop

    .line 289
    :cond_d2
    :goto_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_75
        :pswitch_66
        :pswitch_3a
        :pswitch_2b
        :pswitch_20
        :pswitch_15
    .end packed-switch
.end method
