.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;
.super Lcom/android/ims/internal/ISecImsMmTelEventListener$Stub;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-direct {p0}, Lcom/android/ims/internal/ISecImsMmTelEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCdpnInfo(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "MmTelFeatureCompat"

    const-string v1, "onCdpnInfo()"

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmMmTelEventHandler(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmMmTelEventHandler(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 345
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmMmTelEventHandler(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2a
    return-void
.end method

.method public blacklist onIncomingCall(ILandroid/os/Bundle;)V
    .registers 6

    const-string v0, "MmTelFeatureCompat"

    const-string v1, "onIncomingCall()"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmMmTelEventHandler(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmMmTelEventHandler(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 336
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmMmTelEventHandler(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_24
    return-void
.end method
