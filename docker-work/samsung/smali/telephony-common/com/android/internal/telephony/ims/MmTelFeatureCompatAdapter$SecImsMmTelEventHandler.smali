.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;
.super Landroid/os/Handler;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecImsMmTelEventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;Landroid/os/Looper;)V
    .registers 3

    .line 352
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 353
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeatureCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    const-string p0, "Invalid event"

    .line 376
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_26
    const-string v0, "cdpn info event"

    .line 372
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->notifyCdpnInfo(Ljava/lang/String;I)V

    goto :goto_66

    :cond_37
    :try_start_37
    const-string v0, "incoming call event"

    .line 362
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmCompatFeature(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmSessionId(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 364
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    const-string p0, "incoming call notified"

    .line 366
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    const-string p0, "onReceive: Couldn\'t get Incoming call session."

    .line 368
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    return-void
.end method
