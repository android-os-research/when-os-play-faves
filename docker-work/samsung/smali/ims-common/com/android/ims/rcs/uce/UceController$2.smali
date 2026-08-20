.class Lcom/android/ims/rcs/uce/UceController$2;
.super Ljava/lang/Object;
.source "UceController.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;


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

    .line 515
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearResetDeviceStateTimer()V
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmPublishController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->clearResetDeviceStateTimer()V

    .line 570
    return-void
.end method

.method public blacklist getAvailabilityFromCache(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 528
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmEabController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/eab/EabController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabController;->getAvailability(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailabilityFromCacheIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 534
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmEabController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/eab/EabController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabController;->getAvailabilityIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCapabilitiesFromCache(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 518
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmEabController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/eab/EabController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabController;->getCapabilities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 523
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmEabController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/eab/EabController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabController;->getCapabilitiesIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 3
    .param p1, "mechanism"    # I

    .line 544
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmPublishController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmDeviceState(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist refreshCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 6
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    .local p1, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/UceController;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$mrequestCapabilitiesInternal(Lcom/android/ims/rcs/uce/UceController;Ljava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 577
    return-void
.end method

.method public blacklist refreshDeviceState(ILjava/lang/String;I)V
    .registers 5
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 549
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmDeviceState(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceDeviceState;->refreshDeviceState(ILjava/lang/String;I)V

    .line 550
    return-void
.end method

.method public blacklist resetDeviceState()V
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmDeviceState(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->resetDeviceState()V

    .line 555
    return-void
.end method

.method public blacklist saveCapabilities(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 539
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmEabController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/eab/EabController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabController;->saveCapabilities(Ljava/util/List;)V

    .line 540
    return-void
.end method

.method public blacklist setupResetDeviceStateTimer(J)V
    .registers 4
    .param p1, "resetAfterSec"    # J

    .line 564
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$2;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/UceController;->-$$Nest$fgetmPublishController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->setupResetDeviceStateTimer(J)V

    .line 565
    return-void
.end method
