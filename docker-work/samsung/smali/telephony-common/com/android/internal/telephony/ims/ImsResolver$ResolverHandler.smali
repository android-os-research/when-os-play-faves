.class Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;
.super Landroid/os/Handler;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/Looper;)V
    .registers 3

    .line 484
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    .line 485
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 490
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "ImsResolver"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_108

    goto/16 :goto_107

    .line 573
    :pswitch_a
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mclearCarrierServiceOverrides(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    goto/16 :goto_107

    .line 568
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mhandleMsimConfigChange(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/Integer;)V

    goto/16 :goto_107

    .line 507
    :pswitch_22
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-nez p1, :cond_107

    .line 508
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fputmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;Z)V

    .line 509
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "handling BOOT_COMPLETE"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 511
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "boot complete - reeval"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 514
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    goto/16 :goto_107

    .line 516
    :cond_55
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "boot complete - update cache"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mupdateInstalledServicesCache(Lcom/android/internal/telephony/ims/ImsResolver;)V

    .line 521
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmIsWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-eqz p1, :cond_107

    const-string p1, "BOOT_COMPLETE stop retry for WiFi only model!"

    .line 522
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mremoveEventForWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)V

    goto/16 :goto_107

    .line 558
    :pswitch_79
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;

    .line 559
    iget-boolean v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->isCarrierService:Z

    if-eqz v0, :cond_8c

    .line 560
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->slotId:I

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->featureTypeToPackageMap:Ljava/util/Map;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$moverrideCarrierService(Lcom/android/internal/telephony/ims/ImsResolver;ILjava/util/Map;)V

    goto/16 :goto_107

    .line 563
    :cond_8c
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->featureTypeToPackageMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$moverrideDeviceService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Map;)V

    goto/16 :goto_107

    .line 549
    :pswitch_95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 550
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 551
    iget-object v1, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 553
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mdynamicQueryComplete(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V

    goto :goto_107

    .line 544
    :pswitch_aa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 545
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mstartDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_107

    .line 531
    :pswitch_b4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 532
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 535
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmNumSlots(Lcom/android/internal/telephony/ims/ImsResolver;)I

    move-result v3

    if-lt v0, v3, :cond_d5

    .line 536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "HANDLER_CONFIG_CHANGED for invalid slotid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 539
    :cond_d5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fputmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;Z)V

    .line 540
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mcarrierConfigChanged(Lcom/android/internal/telephony/ims/ImsResolver;II)V

    goto :goto_107

    .line 502
    :pswitch_e0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 503
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeRemovedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)Z

    goto :goto_107

    .line 492
    :pswitch_ea
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmIsWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 495
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$maddImsServiceForWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)V

    goto :goto_107

    .line 498
    :cond_102
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    :cond_107
    :goto_107
    return-void

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_e0
        :pswitch_b4
        :pswitch_aa
        :pswitch_95
        :pswitch_79
        :pswitch_22
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method
