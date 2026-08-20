.class Lcom/android/ims/rcs/uce/UceController$3;
.super Ljava/lang/Object;
.source "UceController.java"

# interfaces
.implements Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/UceController;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/UceController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/UceController;

    .line 589
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$misRcsConnecting(Lcom/android/ims/rcs/uce/UceController;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 613
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmCachedCapabilityEvent(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->setOnPublishUpdatedEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 615
    return-void

    .line 617
    :cond_12
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/UceController;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V

    .line 619
    return-void
.end method

.method public blacklist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "cb"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 624
    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    if-nez p3, :cond_7

    goto :goto_1f

    .line 628
    :cond_7
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$misRcsConnecting(Lcom/android/ims/rcs/uce/UceController;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 629
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmCachedCapabilityEvent(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->setRemoteCapabilityRequestEvent(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    .line 631
    return-void

    .line 633
    :cond_19
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceController;->retrieveOptionsCapabilitiesForRemote(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    .line 634
    return-void

    .line 625
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    const-string v1, "onRemoteCapabilityRequest: parameter cannot be null"

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/UceController;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method public blacklist onRequestPublishCapabilities(I)V
    .registers 3
    .param p1, "triggerType"    # I

    .line 593
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$misRcsConnecting(Lcom/android/ims/rcs/uce/UceController;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 594
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmCachedCapabilityEvent(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->setRequestPublishCapabilitiesEvent(I)V

    .line 595
    return-void

    .line 597
    :cond_12
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/UceController;->onRequestPublishCapabilitiesFromService(I)V

    .line 598
    return-void
.end method

.method public blacklist onUnpublish()V
    .registers 2

    .line 602
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$misRcsConnecting(Lcom/android/ims/rcs/uce/UceController;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 603
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmCachedCapabilityEvent(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->setOnUnpublishEvent()V

    .line 604
    return-void

    .line 606
    :cond_12
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$3;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceController;->onUnpublish()V

    .line 607
    return-void
.end method
