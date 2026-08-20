.class Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    .line 389
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 392
    if-eqz p2, :cond_47

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_47

    .line 393
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_48

    :cond_16
    goto :goto_2a

    :sswitch_17
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    goto :goto_2a

    :sswitch_21
    const-string v2, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v1, v3

    :goto_2a
    packed-switch v1, :pswitch_data_52

    goto :goto_46

    .line 401
    :pswitch_2e
    const-string v0, "state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 402
    .local v0, "airplaneMode":Z
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleAirplaneModeChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V

    goto :goto_46

    .line 395
    .end local v0    # "airplaneMode":Z
    :pswitch_3a
    const-string v0, "android.telecom.extra.TTY_PREFERRED_MODE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 397
    .local v0, "preferredMode":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleTtyPreferredModeChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V

    .line 398
    nop

    .line 405
    .end local v0    # "preferredMode":I
    :goto_46
    return-void

    .line 392
    :cond_47
    :goto_47
    return-void

    :sswitch_data_48
    .sparse-switch
        -0x7768ec62 -> :sswitch_21
        -0x402b4235 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_2e
    .end packed-switch
.end method
