.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "MmTelFeatureCompat"

    const-string v0, "onReceive"

    .line 313
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.ims.IMS_INCOMING_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "onReceive : incoming call intent."

    .line 315
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android:imsCallID"

    .line 317
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :try_start_1e
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmCompatFeature(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->-$$Nest$fgetmSessionId(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_37} :catch_38

    goto :goto_3d

    :catch_38
    const-string p0, "onReceive: Couldn\'t get Incoming call session."

    .line 323
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    return-void
.end method
